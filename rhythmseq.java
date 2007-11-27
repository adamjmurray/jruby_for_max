package ajm;

import java.util.HashMap;
import java.util.Map;

import com.cycling74.max.Atom;

public class rhythmseq extends seq {

	protected int count = 0;
	protected int duration = 0;
	protected boolean countChanged = false;
	protected int tick = 0;
	protected int sum;

	protected int maxTick;
	protected int tickWrapIdx = 0;

	// protected MappedList<Integer, Atom> tmap = new MappedList<Integer, Atom>();

	protected Map<Integer, Integer> tickIndexMap = new HashMap<Integer, Integer>();
	protected Map<Integer, Integer> indexTickMap = new HashMap<Integer, Integer>();

	// TODO: new offset attribute (tick offset separate attr?), to replace the rhythmrot method
	// actual tick will be tick + offset

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
		maxTick = getTotalTicks();

		// tmap.clear();
		tickIndexMap.clear();
		indexTickMap.clear();
		tickWrapIdx = 0;
		int pos = 0;
		for (int i = 0; i < values.size(); i++) {
			if (pos == maxTick && tickWrapIdx == 0) {
				tickWrapIdx = i;
			}
			Atom val = values.get(i);
			if (tickIndexMap.get(pos) == null) {
				tickIndexMap.put(pos, i);
			}
			indexTickMap.put(i, pos);
			// tmap.addValue(pos, val);
			if (val.isInt() || val.isFloat()) {
				int delay = val.toInt();
				delay = (delay < 0) ? -delay : delay;
				pos += delay;
			}

		}

		// debug("values: " + values);
		// debug("twi: " + tickWrapIdx);
		// debug("tiamap: " + tickIndexMap);

	}

	/*
	protected void setTickListFromValues() {

		tickList = new int[getTotalTicks()];
		if (tickList.length > 0) {
			// Arrays.fill(tickList, 0); // should already be initialized to 0?

			int seqsum = 0;
			for (int i = 0; i < values.size(); i++) {
				Atom a = values.get(i);
				if (!a.isInt() && !a.isFloat()) {
					continue;
					// TODO: the tick list should be a list of lists (each nested list is all the things that
					// occur at that tick), instead of just ignoring the extra data
				}
				int value = values.get(i).toInt();
				if (seqsum >= tickList.length && value == 0) {
					// handle trailing 0s
					tickList[0]++; // I think this is always correct? TEST
				}
				else if (value >= 0) {
					tickList[seqsum]++;
				}
				seqsum += (value < 0 ? -value : value);
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
	
	*/

	/**
	 * Sets the length of the sequence in terms of the total number of ticks represented by the rhythm. If the new
	 * length is longer then the current, the last value will be increased as needed. Otherwise, values will be removed
	 * from the end of the sequence, and the last remaining value decreased as needed in order to set the new rhythm
	 * length.
	 * 
	 * @param maxTick -
	 *            the new maximum tick
	 */
	public void maxtick(int maxTick) {
		this.maxTick = maxTick;
	}

	public void rhythmrot(int ticks) {
		/*
		post(Arrays.toString(tickList));
		ArrayUtils.rotate(tickList, ticks);
		post(Arrays.toString(tickList));
		setValuesFromTickList();
		*/

		outputVals();
	}

	public void bang() {

		if (maxTick > 0) {

			// todo: replace this with the skip system
			boolean tickWrap = false;
			while (tick >= maxTick) {
				tickWrap = true;
				tick -= maxTick;
			}
			while (index < 0) {
				tickWrap = true;
				tick += maxTick;
			}

			output(OUTLET.TICK, tick);

			Integer idx = tickIndexMap.get(tick);
			if (tickWrap) {
				idx = tickWrapIdx;
			}
			if (idx != null) {
				int val = -1;
				do {
					index(idx);
					output();
					// Strings will be coerced to 0, which is exactly what we want (output immediately and advance)
					val = values.get(index).toInt();
					idx++;
				} while (val == 0);
			}

			tick += increment;
		}
	}

	@Override
	public void index(int idx) {
		if (!values.isEmpty()) {
			super.index(idx);
			/*
			Integer t = indexTickMap.get(index);
			if (t == null) {
				error("ERROR for seq: " + this);
				error("index had no tick! " + indexTickMap);
			}*/
			tick = indexTickMap.get(index);
		}
	}

	/*
	@Override
	public void index(int idx) {
		if (values.size() > 0) {
			// debug("Called setIndex(" + idx + ")");
			index = idx;
			fixIndexBounds();
			// debug("index = " + index);
			// Strings will be coerced to 0, which is exactly what we want (output immediately and advance)
			int val = values.get(index).toInt();

			duration = (val < 0 ? -val : val);
			count = 0;
			sum = getTicksUpToIndex(index);
		}
		
	}
	*/

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

	protected int getTotalTicks() {
		int total = 0;
		for (Atom a : values) {
			if (a.isInt() || a.isFloat()) {
				int val = a.toInt();
				total += (val < 0) ? -val : val;
			}
		}
		return total;
	}

	protected int getTicksUpToIndex(int index) {
		int ticks = 0;
		for (int i = 0; i < index; i++) {
			Atom a = values.get(i);
			if (a.isInt() || a.isFloat()) {
				int val = a.toInt();
				ticks += (val < 0 ? -val : val);
			}
		}
		return ticks;
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