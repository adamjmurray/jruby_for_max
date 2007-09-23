package ajm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cycling74.max.Atom;

public class rhythmseq extends intseq {

	protected int count = 0;
	protected int duration = 0;
	protected boolean countChanged = false;
	protected int tick = 0;
	protected int maxTick = 0;
	protected int sum;

	protected Map<Integer, List<Integer>> valuesAtTick = new HashMap<Integer, List<Integer>>();
	protected Map<Integer, Integer> tickAtIndex = new HashMap<Integer, Integer>();
	protected Map<Integer, Integer> indexAtTick = new HashMap<Integer, Integer>();

	public rhythmseq(Atom[] args) {
		super(args);
		declareIO(1, 5);
		setOutletAssist(new String[] { "value", "index", "iteration", "list", "tick" });
	}

	@Override
	public void set(Atom[] list) {
		if (list.length > 0) {
			boolean allZeros = true;
			for (int i = 0; i < list.length; i++) {
				if (list[i].toInt() != 0) {
					allZeros = false;
					break;
				}
			}
			if (allZeros) {
				list[0] = Atom.newAtom(1); // prevent infinite loops
			}
		}
		super.set(list);
		handleListChange();
	}

	// todo: need to call this after most maniuplation methods
	// TODO: it would be better to add an overridable handleListChange callback() in seq (and add/multiple in
	// numericseq)
	protected void handleListChange() {
		valuesAtTick.clear();
		tickAtIndex.clear();
		indexAtTick.clear();
		int seqsum = 0;
		int newsum = 0;

		int currtick = sum + count;

		for (int i = 0; i < values.size(); i++) {
			int value = values.get(i).getInt();
			int dur = Math.abs(value);

			if (seqsum < currtick) {
				newsum = seqsum;
				index = i;
				duration = dur;
				debug("handler set index to " + index + " and duration=" + duration);
			}
			else if (sum != newsum) {
				int tick = sum + count;
				sum = newsum;
				count = tick - newsum;
				debug("handler set sum=" + sum + " and count=" + count);
			}

			tickAtIndex.put(i, seqsum);
			indexAtTick.put(seqsum, i);
			List<Integer> vals = valuesAtTick.get(seqsum);
			if (vals == null) {
				vals = new ArrayList<Integer>();
				valuesAtTick.put(seqsum, vals);
			}
			vals.add(value);
			seqsum += dur;
		}
		maxTick = seqsum;

		// TODO: can we just output this info so we don't need the JS?
		// debug("!!! " + tickAtIndex);
		// debug("???? " + valuesAtTick);
	}

	/**
	 * Sets the length of the sequence in terms of the total number of ticks represented by the rhythm. If the new
	 * length is longer then the current, the last value will be increased as needed. Otherwise, values will be removed
	 * from the end of the sequence, and the last remaining value decreased as needed in order to set the new rhythm
	 * length.
	 * 
	 * @param length -
	 *            the new rhythmic length
	 */
	public void rhythmlen(int length) {

		if (length <= 0) {
			values.clear();
		}
		else {
			int current = getRhythmLength();
			if (current > length) {
				for (; current > length; current = getRhythmLength()) {
					int diff = current - length;
					int last = values.get(values.size() - 1).getInt();
					int lastMag = Math.abs(last);
					if (lastMag > diff) {
						// adjust the magnitude while maintaining the sign
						if (last < 0) {
							last += diff;
						}
						else {
							last -= diff;
						}
						values.set(values.size() - 1, Atom.newAtom(last));
					}
					else {
						values.remove(values.size() - 1);
					}
				}
			}
			else {
				int diff = length - current;
				if (diff > 0) {
					int last = values.get(values.size() - 1).getInt();
					// adjust the magnitude while maintaining the sign
					if (last < 0) {
						last -= diff;
					}
					else {
						last += diff;
					}
					values.set(values.size() - 1, Atom.newAtom(last));
				}
			}
			outputVals();
		}

	}

	/*
	public void bang() {
		if (!values.isEmpty()) {
			if (tick == maxTick) {
				List<Integer> trailingZeros = valuesAtTick.get(tick);
				if (trailingZeros != null) {
					for (int i = 0; i < trailingZeros.size(); i++) {
						output();
						index++;
					}
				}
				tick = 0;
			}
			output(OUTLET.TICK, tick);
			List<Integer> vals = valuesAtTick.get(tick);
			if (vals != null) {
				// index = indexAtTick.get(tick);
				// handle reverse traversals (but how should 0s work, they then attach to prev element??)
				// maybe they should not attach , if you want flams and stuff via 0's and a matrix gui
				for (int i = 0; i < vals.size(); i++) {
					output();
					index++;
					// what to do about increment? += increment;
				}
			}

			tick++;// = (tick + 1) % maxTick;
			debug("incrementing tick to " + tick);

		}
	}
	*/


	public void bang() {
		if (!values.isEmpty()) {

			debug("Count=" + count + " | sum=" + sum + " | dur=" + duration + " | index=" + index);

			if (count >= duration) {
				// debug("auto setindex");
				if (duration > 0) { // auto increment has issues with setIndex (rethink?)
					// debug("auto increment");
					index(index + increment);
				}
				else {
					// debug("NOT auto increment");
					index(index);
					// autoIncrement = true;
				}
				debug("Count=" + count + " | sum=" + sum + " | dur=" + duration + " | index=" + index);


			}


			// TODO: I am wondering if it is better to output the current count instead of this tick?
			// maybe even count & sum in separate outlets???...
			// this wouldn't work so well with the matrix-based GUI I am developing


			output(OUTLET.TICK, sum + count);

			if (count == 0) {
				output();
				while (duration == 0) {
					index(index + increment);
					// debug("--- OUTPUTTING");

					output();
					// infinite loops prevented by setVals()
				}
			}

			count++;
		}
	}


	// TODO: now I think going back to the sum+count approach is best. we just need to update
	// things properly when the list changes


	@Override
	public void index(int idx) {
		if (values.size() > 0) {
			debug("Called setIndex(" + idx + ")");
			index = idx;
			fixIndexBounds();
			debug("index = " + index);
			duration = Math.abs(values.get(index).toInt());
			count = 0;
			sum = 0;
			for (int i = 0; i < index; i++) {
				sum += Math.abs(values.get(i).toInt());
			}
		}
	}

	/*
		@Override
		public void index(int idx) {
			debug("Called setIndex(" + idx + ")");
			super.index(idx);
			debug("index = " + index);
			tick = tickAtIndex.get(index);
			debug("tick = " + tick);
		}
		*/

	protected int getRhythmLength() {
		int length = 0;
		for (Atom atom : values) {
			length += Math.abs(atom.toInt());
		}
		return length;
	}

	@Override
	public void reset() {
		count = 0;
		duration = 0;
		tick = 0;
		sum = 0;
		super.reset();
	}

}