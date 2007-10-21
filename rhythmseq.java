package ajm;

import java.util.Arrays;

import com.cycling74.max.Atom;

public class rhythmseq extends seq {

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
			Atom a = values.get(i);
			if (!a.isInt() && !a.isFloat()) {
				continue;
			}
			int dur = Math.abs(a.toInt());

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
	 * @param newLen -
	 *            the new rhythmic length
	 */
	public void rhythmlen(int newLen) {

		if (newLen <= 0) {
			values.clear();
		}
		else {
			int currLen = getTotalTicks();
			if (currLen > newLen) {
				// Need to shorten the list
				while (currLen > newLen) {
					int diff = currLen - newLen;

					int last = values.get(values.size() - 1).toInt();
					int lastMagnitude = Math.abs(last);
					if (lastMagnitude <= diff) {
						values.remove(values.size() - 1);
						currLen -= lastMagnitude;
					}
					else { // shorten the last value and then we're done

						// adjust the magnitude while maintaining the sign
						if (last < 0) {
							last += diff;
						}
						else {
							last -= diff;
						}
						values.set(values.size() - 1, Atom.newAtom(last));
						break;
					}
				}
			}
			else {
				int diff = newLen - currLen;
				if (diff > 0) {

					Atom lastAtom = values.get(values.size() - 1);
					if (lastAtom.isInt() || lastAtom.isFloat()) {
						int last = values.get(values.size() - 1).toInt();
						// adjust the magnitude while maintaining the sign
						if (last < 0) {
							last -= diff;
						}
						else {
							last += diff;
						}
						values.set(values.size() - 1, Atom.newAtom(last));
					}
					else {
						// TODO: even if the last value is a number, this behavior
						// would be desirable if we want to maintain the existing note length
						// instead of playing legato until the end of the seq
						// An additional arg to this method could choose what to do...
						values.add(Atom.newAtom(-diff));
					}
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
				if (increment % values.size() != 0) {
					while (duration == 0) {
						// a list of all 0s (which would cause infinite loops) is prevented by setVals()
						index(index + increment);
						output();
					}
				}
				// else we'd have an infinite loop
			}

			count++;
		}
	}

	@Override
	public void index(int idx) {
		if (values.size() > 0) {
			// debug("Called setIndex(" + idx + ")");
			index = idx;
			fixIndexBounds();
			// debug("index = " + index);
			// Strings will be coerced to 0, which is exactly what we want (output immediately and advance)
			duration = Math.abs(values.get(index).toInt());
			count = 0;
			sum = getTicksUpToIndex(index);
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

	protected int getTotalTicks() {
		return getTicksUpToIndex(values.size());
	}

	protected int getTicksUpToIndex(int index) {
		int ticks = 0;
		for (int i = 0; i < index; i++) {
			Atom a = values.get(i);
			if (a.isInt() || a.isFloat()) {
				ticks += Math.abs(a.toInt());
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