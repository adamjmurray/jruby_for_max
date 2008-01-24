package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import ajm.data.MappedList;
import ajm.util.Item;
import ajm.util.Parser;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

public class rseq extends MaxObject {

	public rseq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("index", "getindex", "index");
		declareAttribute("iteration");
		declareAttribute("increment");
		declareAttribute("offset");

		if (initializer != null) {
			initializer.set();
		}
	}

	private MaxQelem initializer = getInitializer();

	protected MaxQelem getInitializer() {
		// This is done this round about way so we can override this method and avoid an UnsatisfiedLinkError
		// in the jUnit tests.
		return new MaxQelem(new Executable() {
			// see discussion at http://www.cycling74.com/forums/index.php?t=rview&goto=114649
			public void execute() {
				// handle attributes used to construct the object
				defaultIndex = index;
				defaultIteration = iteration;
				defaultIncrement = increment;
				defaultOffset = offset;
				if (!idxMap.isEmpty()) {
					defaultIdxMap = idxMap.clone();
					outputVals();
				}
			}
		});
	}

	@Override
	protected void notifyDeleted() {
		initializer.release();
	}


	protected enum OUTLET {
		CURRENT_VAL(0), INDEX(1), ITERATION(2), VALUES(3);

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}


	// attributes
	protected List<Item> values = new ArrayList<Item>();
	protected int index = 0;
	protected int iteration = 0;
	protected int increment = 1;
	protected int offset;

	// default values (for reset functions)
	protected int defaultIndex = index;
	protected int defaultIteration = iteration;
	protected int defaultIncrement = increment;
	protected int defaultOffset = offset;
	protected MappedList<Atom> defaultIdxMap = new MappedList<Atom>(); // ??? no default values?

	// other internal state
	protected int maxIdx;
	boolean initialOutput = true;
	protected int initialIdx = 0;
	protected MappedList<Atom> idxMap = new MappedList<Atom>();
	protected boolean wrap = true;

	protected Parser parser = new Parser(false);

	// TODO: new offset attribute (tick offset separate attr?), to replace the rhythmrot method
	// actual tick will be tick + offset

	public Atom[] getvalues() {
		Atom[] atoms = new Atom[values.size()];
		for (int i = 0; i < values.size(); i++) {
			atoms[i] = values.get(i).getAtom();
		}
		return atoms;
	}

	public void values(Atom[] list) {
		set(list);
		outputVals();
	}

	public void list(Atom[] list) {
		set(list);
		outputVals();
	}

	// Max doesn't treat lists starting with a symbol as lists (they're just messages)
	// so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		values = parser.parse(msg, args);
		handleValueChange();
		outputVals();
	}

	public void set(Atom[] list) {
		values = parser.parse(list);
		handleValueChange();
	}

	private void handleValueChange() {
		if (values.size() > 0) {
			boolean allZeros = true;
			for (Item item : values) {
				if (!item.isAtomArray()) {
					Atom a = item.getAtom();
					if ((a.isInt() || a.isFloat()) && a.toInt() != 0) {
						allZeros = false;
						break;
					}
				}
			}
			if (allZeros) {
				values.add(new Item(1)); // prevents infinite loops
			}
		}

		idxMap.clear();
		maxIdx = getIdxCount();
		int pos = 0;
		for (int i = 0; i < values.size(); i++) {
			Item item = values.get(i);
			Atom a = item.getAtom();
			if (pos == maxIdx) {
				// then we exceeded the number of indexes, and these occur on index 0, but
				// not during the initial playback because they end the list rather than start it
				// the special -1 index is used to distinguish trailing 0s (or messages) from leading 0s (or messages)
				idxMap.addValue(-1, a);
			}
			else {
				idxMap.addValue(pos, a);
			}

			if (a.isInt() || a.isFloat()) {
				int delay = a.toInt();
				delay = (delay < 0) ? -delay : delay;
				pos += delay;
			}
		}
		initialOutput = true;
	}

	private int getIdxCount() {
		int total = 0;
		for (Item i : values) {
			if (!i.isAtomArray()) {
				Atom a = i.getAtom();
				if (a.isInt() || a.isFloat()) {
					int val = a.toInt();
					total += (val < 0) ? -val : val;
				}
			}
		}
		return total;
	}

	public int getindex() {
		return this.index;
	}

	public void index(int index) {
		this.index = index;
	}

	// instead of this, we should just extend ajm.seq and support the output command
	public void get(int index) {
		if (index < 0 || index >= values.size()) {
			error(getClass() + ": invalid index " + index + " (valid indexes for current list are 0 - "
					+ (values.size() - 1) + ")");
		}
		else {
			outputValuesAtIndex(index);
		}
	}

	/* Sets the length of the sequence in terms of the total number of ticks represented by the rhythm. If the new
	 * length is longer then the current, the last value will be increased as needed. Otherwise, values will be removed
	 * from the end of the sequence, and the last remaining value decreased as needed in order to set the new rhythm
	 * length.
	 */
	public void length(int length) {
		this.maxIdx = length;
	}

	/* try just setting a tick offset
	public void rhythmrot(int ticks) {
		outputVals();
	}*/

	public void bang() {
		if (maxIdx > 0) {
			output();
			index += increment;
		}
	}


	public void output() {
		if (maxIdx > 0) {
			fixIdxBounds();
			if (wrap) {
				wrap = false;
				output(OUTLET.ITERATION, iteration);
			}
			output(OUTLET.INDEX, index);
			if (initialOutput) {
				initialOutput = false;
			}
			else if (index == 0) {
				outputValuesAtIndex(-1);
			}
			outputValuesAtIndex(index);
		}
	}

	private void fixIdxBounds() {
		// TODO: how to handle offset? do we need a new "adjustedIndex" var?
		while (index >= maxIdx) {
			wrap = true;
			iteration++;
			index -= maxIdx;
		}
		while (index < 0) {
			wrap = true;
			iteration--;
			index += maxIdx;
		}
	}

	protected void outputVals() {
		output(OUTLET.VALUES, getvalues());
	}


	protected void output(OUTLET outlet, int data) {
		outlet(outlet.outletNumber, data);
	}

	private void outputValuesAtIndex(int index) {
		List<Atom> values = idxMap.get(index);
		if (values != null) {
			for (Atom atom : values) {
				output(OUTLET.CURRENT_VAL, atom);
			}
		}
	}

	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}

	protected void output(OUTLET outlet, Atom[] data) {
		outlet(outlet.outletNumber, data);
	}

	public void reset() {
		index = defaultIndex;
		increment = defaultIncrement;
		iteration = defaultIteration;
		offset = defaultOffset;
		resetseq();
		initialOutput = true;
	}

	public void resetindex() {
		index = defaultIndex;
		initialOutput = true; // This needs to be here for syncing to work right
	}

	public void resetiteration() {
		iteration = defaultIteration;
		wrap = true;
	}

	public void resetincrement() {
		increment = defaultIncrement;
	}

	public void resetoffset() {
		offset = defaultOffset;
	}

	public void resetseq() {
		idxMap = (MappedList<Atom>) defaultIdxMap.clone();
		initialOutput = true;
		outputVals();
	}

	public boolean equals(Object obj) {
		if (obj instanceof rseq) {
			return Arrays.equals(getvalues(), ((rseq) obj).getvalues());
		}
		else {
			return false;
		}
	}

	public String toString() {
		return getClass().getName() + values;
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	protected PrintStream debugOut;

	protected void debug(String msg) {
		if (debugOut != null) {
			debugOut.println(msg);
		}
	}
}
