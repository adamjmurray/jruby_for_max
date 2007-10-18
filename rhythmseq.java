package ajm;

import java.util.Arrays;

import com.cycling74.max.Atom;

public class rhythmseq extends intseq {

	protected int count = 0;
	protected int duration = 0;
	protected boolean countChanged = false;
	protected int tick = 0;
	protected int sum;

	protected int[] tickList = {};

	// todo: default tick (attribute), set tick

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
	}

	protected void handleListChange() {
		int currtick = sum + count;
		int seqsum = 0;
		int prevsum = 0;

		for (int i = 0; i < values.size(); i++) {
			// todo: can't assume everything is a number if we want to embed commands in a rhythmseq
			int dur = Math.abs(values.get(i).getInt());

			if (seqsum < currtick) {
				index = i;
				duration = dur;
				prevsum = seqsum;
			}
			else if (sum != prevsum) {
				sum = prevsum;
				count = currtick - prevsum;
			}

			seqsum += dur;
		}
		// do we really need to do this every time? or only when there are operations that need it?
		// of course we could phase out the javascript by outputting this and adding an input to set the ticklist (needs
		// a better name)
		setTickListFromValues();
	}

	protected void setTickListFromValues() {
		tickList = new int[getRhythmLength()];
		if (tickList.length > 0) {
			// Arrays.fill(tickList, 0); // should already be initialized to 0?

			int seqsum = 0;
			for (int i = 0; i < values.size(); i++) {
				// todo: can't assume everything is a number if we want to embed commands in a rhythmseq
				int value = values.get(i).getInt();
				if (seqsum >= tickList.length && value == 0) {
					tickList[0]++; // I think this is always correct? TEST
				}
				else if (value >= 0) {
					tickList[seqsum]++;
				}
				seqsum += Math.abs(value);
			}
		}
	}

	protected void setValuesFromTickList() {
		// Todo: this loses some information.
		// We'd need to keep a list of all values on each tick to not lose info

		values.clear();
		if (tickList.length > 0) {
			int seqVal = 1;
			int sign = 1;
			if (tickList[0] == 0) {
				sign = -1; // if the first tick is not a beat, then this is a rest (negative sequence value)
			}

			if (tickList.length == 1) {
				values.add(Atom.newAtom(sign));
			}
			else {
				for (int i = 1; i < tickList.length; i++) {
					if (tickList[i] == 0) {
						seqVal++;
					}
					else {
						values.add(Atom.newAtom(seqVal * sign));
						sign = 1; // only the first seq value can be a rest
						seqVal = 1;
					}
				}
				values.add(Atom.newAtom(seqVal * sign));
			}
		}
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
		setTickListFromValues();
	}

	public void rhythmrot(int ticks) {

		post(Arrays.toString(tickList));
		ArrayUtils.rotate(tickList, ticks);
		post(Arrays.toString(tickList));
		setValuesFromTickList();
		outputVals();
	}

	public void bang() {
		if (!values.isEmpty()) {

			// debug("Count=" + count + " | sum=" + sum + " | dur=" + duration + " | index=" + index);

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
				// debug("Count=" + count + " | sum=" + sum + " | dur=" + duration + " | index=" + index);
			}


			// TODO: I am wondering if it is better to output the current count instead of this tick?
			// maybe even count & sum in separate outlets???...
			// this wouldn't work so well with the matrix-based GUI I am developing (just add count and sum, duh!)


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
			// todo: can't assume this will be ints if we want to embed commands in here too
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