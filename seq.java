package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import ajm.util.Item;
import ajm.util.Parser;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;


public class seq extends MaxObject {

	public seq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("index", "getindex", "index");
		declareAttribute("chordmode", "getchordmode", "chordmode");
		declareAttribute("iteration");
		declareAttribute("increment");

		// TODO: document these, and finish implementing!
		// declareAttribute("wrapmode");
		// declareAttribute("wraplimit");

		// defaultIndex = Atom.newAtom(getAttr("index").toString()).toInt();
		// defaultIteration = Atom.newAtom(getAttr("iteration").toString()).toInt();

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
			// May need a Thread.sleep() or MaxClock if patches get too big and this doesn't initialize correctly
			// but note using too long of a Thread.sleep() will make Max temporarily hang when opening a patch where
			// many instances of this class are instantiated.
			public void execute() {
				// handle attributes used to construct the object
				defaultIndex = index;
				defaultIteration = iteration;
				defaultIncrement = increment;
				defaultChordmode = chordmode;
				if (!values.isEmpty()) {
					defaultValues.addAll(values);
					outputVals();
				}
			}
		});
	}

	@Override
	protected void notifyDeleted() {
		initializer.release();
	}


	protected ArrayList<Item> values = new ArrayList<Item>();
	// explicitly use an ArrayList, because we need the remove() method and some other "optional" List methods

	protected int index = 0;
	protected int iteration = 0;
	protected int increment = 1;
	protected int chordIndex = 0;

	protected CHORDMODE chordmode = CHORDMODE.CHORD;

	/*
	protected int wrapmode = WRAP_MODE_DEFAULT;

	public static final int WRAP_MODE_DEFAULT = 0;
	public static final int WRAP_MODE_REVERSE = 1;

	protected int wraplimit = 0;
	*/

	// Other internal state:
	protected boolean wrap = true;

	protected ArrayList<Item> defaultValues = new ArrayList<Item>();
	protected int defaultIndex = index;
	protected int defaultIteration = iteration;
	protected int defaultIncrement = increment;
	protected CHORDMODE defaultChordmode;

	protected Parser parser = new Parser();

	protected enum OUTLET {
		CURRENT_VAL(0), INDEX(1), ITERATION(2), VALUES(3), TICK(4);

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}

	protected enum CHORDMODE {
		CHORD, ARPEGGIATE, SYMBOL, LIST;
	}

	// For use in anonymous classes
	protected final seq thisseq = this;


	public Atom[] getvalues() {
		// TODO? caching or something? could rely on handleListChange
		Atom[] atoms = new Atom[values.size()];
		for (int i = 0; i < values.size(); i++) {
			atoms[i] = values.get(i).getAtom();
		}
		return atoms;
	}


	public void values(Atom[] list) {
		list(list);
	}

	public void list(Atom[] list) {
		set(list);
		outputVals();
	}

	public void set(Atom[] list) {
		values.clear();
		values.addAll(parser.parse(list));
		handleListChange();
	}

	// Max doesn't treat lists starting with a symbol as lists (they're just messages)
	// so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		values.clear();
		values.addAll(parser.parse(msg, args));
		handleListChange();
		outputVals();
	}


	/*
	 * Set the length of the sequence. If the sequence is currently shorter than the requested length, it will be padded
	 * with 0s. If it is longer, it will be truncated. The optional second arg sets the pad value.
	 */
	public void length(Atom[] args) {
		if (args.length > 0) {
			int length = args[0].getInt();
			if (length <= 0) {
				values.clear();
			}
			else {
				if (values.size() > length) {
					while (values.size() > length) {
						values.remove(values.size() - 1);
					}
				}
				else {
					Atom pad;
					if (args.length > 1) {
						pad = args[1];
					}
					else {
						pad = Atom.newAtom(0);
					}
					while (values.size() < length) {
						values.add(new Item(pad));
					}
				}
				outputVals();
			}
			handleListChange();
		}
	}

	public void append(Atom[] newVals) {
		values.addAll(parser.parse(newVals));
		handleListChange();
		outputVals();
	}

	public void prepend(Atom[] newVals) {
		// TODO: // keep the index at the correct current element
		values.addAll(0, parser.parse(newVals));
		handleListChange();
		outputVals();
	}


	public void insert(Atom[] args) {
		// TODO: // keep the index at the correct current element
		if (args.length < 2) {
			error("invalid call to insert, expected: insert position value1 ...");
		}
		else if (!args[0].isInt() && !args[0].isFloat()) {
			error("invalid call to insert, first argument (position) was not a number");
		}
		else {
			int position = args[0].toInt();
			insert(position, Atom.removeFirst(args));
			handleListChange();
			outputVals();
		}
	}

	public void insertAtCurrent(Atom[] args) {
		insert(index, args);
		handleListChange();
		outputVals();
	}

	protected void insert(int position, Atom[] newVals) {
		// TODO: // keep the index at the correct current element
		values.addAll(position, parser.parse(newVals));
	}

	/*
	// This does not guarantee the list is sorted, it just inserts the arguments into the first spot
	// where they are not less then a value.
	public void sortinsert(Atom[] args) {
		if (args.length > 0) {
			argLoop: for (Atom a : args) {
				if (values.isEmpty()) {
					values.add(a);
				}
				else {
					for (int i = 0; i < values.size(); i++) {
						if (compare(a, values.get(i)) <= 0) {
							values.add(i, a);
							if (i <= index) {
								// TODO: test this, I thought it was supposed to be i<index, but because we
								// increment the index at the end of bang() I think this is now the correct comparison
								// keep the index at the correct current element. Except delete still uses i<index,
								// seemed to give the best results with the arpeggiator (confusing!)
								index++;
							}
							continue argLoop;
						}
					}
					values.add(a);
				}
			}
			handleListChange();
			outputVals();
		}
	}
	*/
	public void repeat() {
		if (!values.isEmpty()) {
			values.addAll(values);
			handleListChange();
			outputVals();
		}
	}

	public void repeat(int n) {
		if (!values.isEmpty()) {
			ArrayList<Item> currVals = new ArrayList<Item>(values);
			for (int i = 0; i < n; i++) {
				values.addAll(currVals);
			}
			handleListChange();
			outputVals();
		}
	}

	// TODO: what to do if the index moves off the end
	// probably position at last element, but really I think we
	// want to go to the first element next if direction is forward
	// and last element if direction is backward...
	// probably need a boolean to keep track of this undefined state
	// and let the list traversal methods (advance, goto, etc) handle it
	public void delete(int index) {
		// TODO: // keep the index at the correct current element

		if (index >= 0 && index < values.size()) {
			values.remove(index);
			handleListChange();
			outputVals();
		}
	}


	public void delete(int[] indices) {
		// TODO: // keep the index at the correct current element

		if (!values.isEmpty()) {
			Arrays.sort(indices);
			// delete in reverse order so any index shifting that occurs doesn't affect the result
			for (int i = indices.length - 1; i >= 0; i--) {
				int index = indices[i];
				if (index >= 0 && index < values.size()) {
					values.remove(index);
				}
			}
			handleListChange();
			outputVals();
		}
	}

	public void clear() {
		values.clear();
		handleListChange();
	}

	/*
	 * Takes two bounds, and returns an array [left, right] where left and right and both are valid indices for the values list
	 */
	protected int[] fixBounds(int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0) {
			left = 0;
		}
		if (right >= values.size()) {
			right = values.size() - 1;
		}
		return new int[] { left, right };
	}


	public void deleterange(int left, int right) {
		// TODO: // keep the index at the correct current element

		if (!values.isEmpty()) {
			int[] lr = fixBounds(left, right);
			left = lr[0];
			right = lr[1];

			ArrayList<Item> newVals = new ArrayList<Item>(values.size() - (right - left + 1));
			for (int i = 0; i < left; i++) {
				newVals.add(values.get(i));
			}
			for (int i = right + 1; i < values.size(); i++) {
				newVals.add(values.get(i));
			}
			values = newVals;
			handleListChange();
			outputVals();
		}
	}


	public void deletefirst() {
		// TODO: // keep the index at the correct current element
		delete(0);
	}


	public void deletefirst(int n) {
		// TODO: // keep the index at the correct current element
		if (n > 0) {
			deleterange(0, n - 1);
		}
	}


	public void deletelast() {
		if (values.size() == 0) {
			return;
		}
		delete(values.size() - 1);
	}


	public void deletelast(int n) {
		if (n > 0 && n <= values.size()) {
			deleterange(values.size() - n, values.size() - 1);
		}
	}


	public void deletecurrent() {
		// TODO?? // keep the index at the correct current element
		delete(index);
	}

	public void deletevalue(Atom[] args) {
		for (Atom a : args) {
			for (int i = 0; i < values.size(); i++) {
				if (values.get(i).equals(a)) {
					values.remove(i);
					// keep the index at the correct current element
					if (i < index) {
						// TODO: test this
						index--;
					}
					break;
				}
			}
		}
		if (values.isEmpty()) {
			index = 0;
		}
		outputVals();
	}

	public void clearvalue(Atom[] args) {
		for (Atom a : args) {
			while (values.remove(a)) {
				// keep looping until all values have been removed
			}
			outputVals();
		}
	}


	public void sort() {
		Collections.sort(values);
		handleListChange();
		outputVals();
	}

	/*
		public void sortrange(int left, int right) {
			if (values.size() == 0) {
				return;
			}
			int[] lr = fixBounds(left, right);
			left = lr[0];
			right = lr[1];
			right++; // convert my inclusive range to Java's standard exclusive range

			Atom[] sortedVals = values.toArray(new Atom[values.size()]);
			Arrays.sort(sortedVals, new Comparator<Atom>() {
				public int compare(Atom a1, Atom a2) {
					return thisseq.compare(a1, a2);
				}
			});

			values.clear();
			Collections.addAll(values, sortedVals);
			handleListChange();
			outputVals();
		}
	*/


	// TODO: intersection, union (see Atom API)
	// TODO: anything else to expose in the Atom or List (or Arrays or Collections??) APIs
	// Arrays.fill...
	/**
	 * Swap the values at the specified indices.
	 */
	public void swap(int idx1, int idx2) {
		if (idx1 >= 0 && idx1 < values.size() && idx2 >= 0 && idx2 < values.size()) {
			Item tmp = values.get(idx1);
			values.set(idx1, values.get(idx2));
			values.set(idx2, tmp);
		}
		handleListChange();
		outputVals();
	}

	public void reverse() {
		reverseVals(0, values.size() - 1);
		handleListChange();
		outputVals();
	}


	public void reverserange(int idx1, int idx2) {
		if (values.size() == 0) {
			return;
		}
		int[] lr = fixBounds(idx1, idx2);
		reverseVals(lr[0], lr[1]);
		handleListChange();
		outputVals();
	}


	protected void reverseVals(int left, int right) {
		while (left < right) {
			Item temp = values.get(left);
			values.set(left, values.get(right));
			values.set(right, temp);
			left++;
			right--;
		}
	}


	public void rotate(int n) {
		rotaterange(0, values.size() - 1, n);
	}


	// NOTE: the signature of this method changed (left, right is now before n for consistency)
	// TODO: will need to update unit tests
	public void rotaterange(int left, int right, int n) {
		if (values.size() == 0) {
			return;
		}
		int[] lr = fixBounds(left, right);
		left = lr[0];
		right = lr[1];

		int segmentLen = right - left + 1;
		n = left + n;
		while (n < left)
			n += segmentLen;
		while (n > right)
			n -= segmentLen;

		if (n != left) {
			// This is not the fastest rotate algorithm, but it is the easiest
			reverseVals(left, n - 1);
			reverseVals(n, right);
			reverseVals(left, right);
		}
		handleListChange();
		outputVals();
	}


	/*
	 * Add the specified value to all numeric values in the sequence. Non-numeric values will not be changed.
	 * The arg list is looped to create a list the same length as the values and applies the addition on an
	 * element by element basis. Note that chords will have a single arg applied to each chord atom.
	 */
	public void add(Atom[] args) {
		if (args.length == 0) {
			error("add command needs at least one argument");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				error("arguments to add command must be numbers");
				return;
			}
		}
		for (int i = 0; i < values.size(); i++) {
			values.set(i, values.get(i).add(args[i % args.length]));
		}
		handleListChange();
		outputVals();
	}

	/* at least 3 args are required. first arg is left index, second arg is right index, 3rd/remaining args
	 * acts just like add()
	 */
	public void addrange(Atom[] args) {
		if (args.length < 3) {
			error("addrange command needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				error("arguments to add command must be numbers");
				return;
			}
		}

		int[] lr = fixBounds(args[0].toInt(), args[1].toInt());
		int left = lr[0];
		int right = lr[1];
		for (int i = left; i <= right; i++) {
			values.set(i, values.get(i).add(args[i % args.length]));
		}
		handleListChange();
		outputVals();
	}

	public void multiply(Atom[] args) {
		if (args.length == 0) {
			error("multiply command needs at least one argument");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				error("arguments to multiply command must be numbers");
				return;
			}
		}
		for (int i = 0; i < values.size(); i++) {
			values.set(i, values.get(i).multiply(args[i % args.length]));
		}
		handleListChange();
		outputVals();
	}

	public void multiplyrange(Atom[] args) {
		if (args.length < 3) {
			error("addrange command needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				error("arguments to add command must be numbers");
				return;
			}
		}

		int[] lr = fixBounds(args[0].toInt(), args[1].toInt());
		int left = lr[0];
		int right = lr[1];
		for (int i = left; i <= right; i++) {
			values.set(i, values.get(i).multiply(args[i % args.length]));
		}
		handleListChange();
		outputVals();
	}

	public void direction() {
		increment *= -1;
	}


	public void direction(int dir) {
		// I considered making dir = 0 set increment = 0, but then I feel like we should keep track
		// of the previous non-zero value so we can get it back when a non-zero dir command comes in
		increment *= (dir >= 0 ? 1 : -1);
	}


	public void advance(int n) {
		index(index + n);
	}


	public void next() {
		advance(1);
	}


	public void prev() {
		advance(-1);
	}

	public int getindex() {
		return this.index;
	}

	public void index(int index) {
		this.index = index;
		if (!values.isEmpty()) {
			// this check is needed so that attribute order won't matter
			fixIndexBounds();
		}
		chordIndex = 0;
	}


	public void chordmode(String chordmode) {
		if (chordmode != null) {
			chordmode = chordmode.toLowerCase();
			if (chordmode.equals("chord")) {
				this.chordmode = CHORDMODE.CHORD;
			}
			else if (chordmode.equals("arpeggiate") || chordmode.equals("arp")) {
				this.chordmode = CHORDMODE.ARPEGGIATE;
			}
			else if (chordmode.equals("list")) {
				this.chordmode = CHORDMODE.LIST;
			}
			else if (chordmode.equals("symbol")) {
				this.chordmode = CHORDMODE.SYMBOL;
			}
			else {
				error("Unknown chordmode: " + chordmode + "");
			}
		}
	}

	public String getchordmode() {
		return chordmode.toString();
	}

	public void bang() {
		if (!values.isEmpty()) {
			output();
			Item currentItem = values.get(this.index);
			if (currentItem.isAtomArray() && chordmode == CHORDMODE.ARPEGGIATE) {
				if (currentItem.getAtoms().length == 0) {
					// [], the empty chord noop
					index += increment;
				}
				else {
					chordIndex = (chordIndex + 1) % currentItem.getAtoms().length;
					if (chordIndex == 0) {
						// we wrapped around
						index += increment;
					}
				}
			}
			else {
				index += increment;
			}
		}
	}

	protected void fixIndexBounds() {
		int size = values.size();
		// if (wrapmode == WRAP_MODE_DEFAULT) {
		while (index >= size) {
			wrap = true;
			iteration++;
			index -= size;
		}
		while (index < 0) {
			wrap = true;
			iteration--;
			index += size;
		}
		/*}
		else {
			// TODO: I think we need to force increment=1 for wrapmode=1 ??
			if (index >= size) {
				index = size - 2;
				if (index < 0) {
					index = 0;
				}
				increment = -increment;
			}
			else if (index < 0) {
				index = 1;
				if (index >= size) {
					index = 0;
				}
				increment = -increment;
			}
		*/
		/*
		int inc = increment < 0 ? -increment : increment;
		inc %= size;
		post("inc=" + inc);
		while (index >= size) {
			index -= inc;
		}
		while (index < 0) {
			index += inc;
		}
		post("now index=" + index);

		post("\n");
		*/
		// }
	}

	/*
	 * Send the current value out the first outlet, the current index out the second outlet, and if a wrap-around has
	 * occurred since the last output (including those triggered by bangs) then send the current iteration out the third
	 * outlet.
	 */
	public void output() {
		if (!values.isEmpty()) {
			fixIndexBounds();
			if (wrap) {
				wrap = false;
				output(OUTLET.ITERATION, iteration);
			}
			output(OUTLET.INDEX, this.index);
			output(OUTLET.CURRENT_VAL, values.get(this.index));
		}
	}

	/* 
	public void get(int index) {
		if (index < 0 || index >= values.size()) {
			error(getClass() + ": invalid index " + index + " (valid indexes for current list are 0 - "
					+ (values.size() - 1) + ")");
		}
		else {
			output(OUTLET.CURRENT_VAL, values.get(index));
		}
	}
	*/

	protected void outputVals() {
		output(OUTLET.VALUES, getvalues());
	}


	protected void output(OUTLET outlet, int data) {
		outlet(outlet.outletNumber, data);
	}


	protected void output(OUTLET outlet, Item data) {
		if (data.isAtomArray()) {
			switch (chordmode) {
				case CHORD:
					for (Atom atom : data.getAtoms()) {
						outlet(outlet.outletNumber, atom);
					}
					break;

				case ARPEGGIATE:
					// probably we should ensure the chordIndex range here, but
					// it is best it is always correct by the time we reach here!
					if (data.getAtoms().length > 0) {
						outlet(outlet.outletNumber, data.getAtoms()[chordIndex]);
					}
					break;

				case LIST:
					outlet(outlet.outletNumber, data.getAtoms());
					break;

				case SYMBOL:
					outlet(outlet.outletNumber, data.getAtom());
					break;
			}
		}
		else {
			outlet(outlet.outletNumber, data.getAtom());
		}
	}

	/*
	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}
	*/

	protected void output(OUTLET outlet, Atom[] data) {
		outlet(outlet.outletNumber, data);
	}


	public void reset() {
		resetindex();
		resetiteration();
		resetincrement();
		resetchordmode();
		resetseq();
	}

	public void resetindex() {
		index = defaultIndex;
		chordIndex = 0;
	}

	public void resetiteration() {
		iteration = defaultIteration;
		wrap = true;
	}

	public void resetincrement() {
		increment = defaultIncrement;
	}

	public void resetchordmode() {
		chordmode = defaultChordmode;
	}

	public void resetseq() {
		values.clear();
		values.addAll(defaultValues);
		handleListChange();
		outputVals();
	}

	public void resetvalues() {
		resetseq();
	}


	protected void handleListChange() {
		// maybe? index = defaultIndex;

		chordIndex = 0;
		// chordIndex needs to be reset whenever the current value changes, but is this overly aggressive?
	}


	public boolean equals(Object obj) {
		if (obj instanceof seq) {
			return Arrays.equals(getvalues(), ((seq) obj).getvalues());
		}
		else {
			return false;
		}
	}


	public String toString() {
		return getClass().getName() + values;
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	private PrintStream debugOut;

	protected void debug(String msg) {
		if (debugOut != null) {
			debugOut.println(msg);
		}
	}

	protected void setDebugOut(PrintStream debugOut) {
		this.debugOut = debugOut;
	}

}
