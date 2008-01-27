package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import ajm.data.Item;
import ajm.util.Parser;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;


public class seq extends MaxObject {

	public seq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / bang / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "sequence" });

		declareAttribute("seq", "getseq", "seq");
		declareAttribute("index", "getindex", "index");
		declareAttribute("cmode", "getchordmode", "chordmode");
		declareAttribute("iter", "getiter", "iter");
		declareAttribute("step", "getstep", "step");

		if (initializer != null) {
			initializer.set();
		}
		else {
			initialized = true;
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
				defaultIter = iter;
				defaultStep = step;
				defaultChordmode = chordmode;
				if (!seq.isEmpty()) {
					defaultSeq.addAll(seq);
					outputSeq();
				}
				initialized = true;
			}
		});
	}

	@Override
	protected void notifyDeleted() {
		initializer.release();
	}


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


	/*------------------------------------------------
	 *  Internal State
	 *------------------------------------------------*/

	// Attributes
	protected ArrayList<Item> seq = new ArrayList<Item>();
	protected int index = 0;
	protected int iter = 0;
	protected int step = 1;
	protected CHORDMODE chordmode = CHORDMODE.CHORD;

	// Defaults
	protected ArrayList<Item> defaultSeq = new ArrayList<Item>();
	protected int defaultIndex = index;
	protected int defaultIter = iter;
	protected int defaultStep = step;
	protected CHORDMODE defaultChordmode;


	protected int chordIndex = 0;
	protected boolean iterChanged = true;
	protected boolean initialized = false;

	protected Parser parser = new Parser();

	protected final seq thisseq = this; // For use in anonymous classes


	/*------------------------------------------------
	 *  Attribute Handlers
	 *------------------------------------------------*/

	public Atom[] getseq() {
		Atom[] atoms = new Atom[seq.size()];
		for (int i = 0; i < seq.size(); i++) {
			atoms[i] = seq.get(i).getAtom();
		}
		return atoms;
	}


	public void seq(Atom[] list) {
		list(list);
	}

	public int getindex() {
		return this.index;
	}

	public void index(int index) {
		this.index = index;
		fixIndexBounds();
		chordIndex = 0;
	}


	public int getiter() {
		return iter;
	}

	public void iter(int count) {
		fixIndexBounds(); // otherwise we might change iter on next bang
		iter = count;
		iterChanged = true;
	}

	public int getstep() {
		return step;
	}

	public void step(int s) {
		if (!initialized) {
			step = s;
		}
		else {
			// undo the last step and apply the new one. the behavior is unintuitive if we don't do this
			index -= step;
			step = s;
			index += step;
		}
	}

	public String getchordmode() {
		return chordmode.toString();
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


	/*------------------------------------------------
	 *  Sequence Definition Methods
	 *------------------------------------------------*/

	public void list(Atom[] list) {
		set(list);
		outputSeq();
	}

	public void set(Atom[] list) {
		seq.clear();
		seq.addAll(parser.parse(list));
		handleListChange();
	}

	// Max doesn't treat lists starting with a symbol as lists (they're just messages)
	// so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		seq.clear();
		seq.addAll(parser.parse(msg, args));
		handleListChange();
		outputSeq();
	}


	/*------------------------------------------------
	 *  Sequence Construction Methods
	 *------------------------------------------------*/
	public void append(Atom[] list) {
		seq.addAll(parser.parse(list));
		handleListChange();
		outputSeq();
	}

	public void prepend(Atom[] list) {
		if (list.length > 0) {
			insert(0, list);
		}
	}

	public void insert(Atom[] args) {
		if (args.length < 2) {
			error("Invalid call to insert. Expected: insert index list");
		}
		else if (!args[0].isInt() && !args[0].isFloat()) {
			error("Invalid call to insert. First argument (index) was not a number.");
		}
		else {
			insert(args[0].toInt(), Atom.removeFirst(args));
		}
	}

	protected void insert(int idx, Atom[] list) {
		List<Item> newSeq = parser.parse(list);
		seq.addAll(idx, newSeq);
		if (idx <= index) {
			index += newSeq.size(); // keep the index at the correct current element
		}
		handleListChange();
		outputSeq();
	}

	public void insertsort(Atom[] list) {
		// Note: This does not guarantee the list is sorted, it just inserts the arguments into the first spot
		// where they are not less then a value.
		if (list.length > 0) {
			List<Item> items = parser.parse(list);
			loop: for (Item item : items) {
				if (seq.isEmpty()) {
					seq.add(item);
				}
				else {
					for (int i = 0; i < seq.size(); i++) {
						if (item.compareTo(seq.get(i)) <= 0) {
							seq.add(i, item);
							if (i <= index) {
								// keep the index at the correct current element
								index++;
								// TODO: test this, I thought it was supposed to be i<index, but because we
								// increment the index at the end of bang() I think this is now the correct comparison
								// keep the index at the correct current element. Except delete still uses i<index,
								// seemed to give the best results with the arpeggiator (confusing!)
							}
							continue loop;
						}
					}
					seq.add(item);
				}
			}
			handleListChange();
			outputSeq();
		}
	}

	public void repeat(Atom[] args) {
		int n = 1; // the default is one repetition
		if (args.length > 1) {
			if (!args[0].isInt() && !args[0].isFloat()) {
				error("Invalid call to repeat. Argument was not a number.");
				return;
			}
			n = args[0].toInt();
		}
		if (!seq.isEmpty()) {
			ArrayList<Item> currVals = new ArrayList<Item>(seq);
			for (int i = 0; i < n; i++) {
				seq.addAll(currVals);
			}
			handleListChange();
			outputSeq();
		}
	}

	public void length(Atom[] args) {
		if (args.length < 1) {
			error("Invalid call to length. Expected: length n [padlist]");
		}
		else if (!args[0].isInt() && !args[0].isFloat()) {
			error("Invalid call to length. First argument (n) was not a number: " + args[0]);
		}
		else {
			int length = args[0].toInt();
			if (length <= 0) {
				seq.clear();
			}
			else {
				if (seq.size() > length) {
					while (seq.size() > length) {
						seq.remove(seq.size() - 1);
					}
				}
				else {
					Atom[] pad = (args.length == 1 ? new Atom[] { Atom.newAtom(0) } : Atom.removeFirst(args));
					for (int i = 0; seq.size() < length; i++) {
						seq.add(new Item(pad[i % pad.length]));
					}
				}
				outputSeq();
			}
			handleListChange();
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

		if (index >= 0 && index < seq.size()) {
			seq.remove(index);
			handleListChange();
			outputSeq();
		}
	}


	public void delete(int[] indices) {
		// TODO: // keep the index at the correct current element
		// TODO: remove duplicates from the index list!

		if (!seq.isEmpty()) {
			Arrays.sort(indices);
			// delete in reverse order so any index shifting that occurs doesn't affect the result
			for (int i = indices.length - 1; i >= 0; i--) {
				int index = indices[i];
				if (index >= 0 && index < seq.size()) {
					seq.remove(index);
				}
			}
			handleListChange();
			outputSeq();
		}
	}

	public void clear() {
		seq.clear();
		handleListChange();
	}

	/*
	 * TODO: make this return an array or arrays [l,r][l2,r2] for the case where we go from say, -1 to 1
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
		if (right >= seq.size()) {
			right = seq.size() - 1;
		}
		return new int[] { left, right };
	}


	public void deleterange(int left, int right) {
		// TODO: // keep the index at the correct current element

		if (!seq.isEmpty()) {
			int[] lr = fixBounds(left, right);
			left = lr[0];
			right = lr[1];

			ArrayList<Item> newVals = new ArrayList<Item>(seq.size() - (right - left + 1));
			for (int i = 0; i < left; i++) {
				newVals.add(seq.get(i));
			}
			for (int i = right + 1; i < seq.size(); i++) {
				newVals.add(seq.get(i));
			}
			seq = newVals;
			handleListChange();
			outputSeq();
		}
	}

	public void deletevalue(Atom[] args) {
		for (Atom a : args) {
			for (int i = 0; i < seq.size(); i++) {
				if (seq.get(i).equals(a)) {
					seq.remove(i);
					// keep the index at the correct current element
					if (i < index) {
						// TODO: test this
						index--;
					}
					break;
				}
			}
		}
		if (seq.isEmpty()) {
			index = 0;
		}
		outputSeq();
	}

	public void clearvalue(Atom[] args) {
		for (Atom a : args) {
			while (seq.remove(a)) {
				// keep looping until all values have been removed
			}
			outputSeq();
		}
	}


	public void sort() {
		Collections.sort(seq);
		handleListChange();
		outputSeq();
	}

	public void sortrange(int left, int right) {
		if (seq.size() > 0) {

			int[] lr = fixBounds(left, right);
			left = lr[0];
			right = lr[1];
			// right++; // convert my inclusive range to Java's standard exclusive range

			List<Item> sorted = seq.subList(left, right + 1);
			Collections.sort(sorted);

			deleterange(left, right);
			seq.addAll(left, sorted);
			handleListChange();
			outputSeq();
		}
	}

	public void replace(Atom args[]) {
		if (args.length < 2) {
			error("Invalid call to replace. Expected: replace index list");
		}
		else if (!args[0].isInt() && !args[0].isFloat()) {
			error("Invalid call to replace. First argument (index) was not a number.");
		}
		else {
			// TODO: check the index
			int idx = args[0].toInt();
			delete(idx);
			insert(idx, Atom.removeFirst(args));
		}
	}

	public void replacerange(Atom args[]) {
		if (args.length < 2) {
			error("Invalid call to replacerange. Expected: replace fromIndex toIndex list");
		}
		else if (!args[0].isInt() && !args[0].isFloat()) {
			error("Invalid call to replacerange. First argument (fromIndex) was not a number: " + args[0]);
		}
		else if (!args[1].isInt() && !args[1].isFloat()) {
			error("Invalid call to replacerange. Second argument (toIndex) was not a number: " + args[1]);
		}
		else {
			int from = args[0].toInt();
			int to = args[1].toInt();
			int[] ft = fixBounds(from, to);
			from = ft[0];
			to = ft[1];

			// TODO: range checking?
			deleterange(from, to);
			insert(from, Atom.removeFirst(Atom.removeFirst(args)));
		}
	}


	public void swap(int idx1, int idx2) {
		if (idx1 >= 0 && idx1 < seq.size() && idx2 >= 0 && idx2 < seq.size()) {
			Item tmp = seq.get(idx1);
			seq.set(idx1, seq.get(idx2));
			seq.set(idx2, tmp);
		}
		handleListChange();
		outputSeq();
	}

	public void reverse() {
		reverseVals(0, seq.size() - 1);
		handleListChange();
		outputSeq();
	}


	public void reverserange(int idx1, int idx2) {
		if (seq.size() == 0) {
			return;
		}
		int[] lr = fixBounds(idx1, idx2);
		reverseVals(lr[0], lr[1]);
		handleListChange();
		outputSeq();
	}


	protected void reverseVals(int left, int right) {
		while (left < right) {
			Item temp = seq.get(left);
			seq.set(left, seq.get(right));
			seq.set(right, temp);
			left++;
			right--;
		}
	}


	public void rotate(int n) {
		rotaterange(0, seq.size() - 1, n);
	}


	// NOTE: the signature of this method changed (left, right is now before n for consistency)
	// TODO: will need to update unit tests
	public void rotaterange(int left, int right, int n) {
		if (seq.size() == 0) {
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
		outputSeq();
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
		for (int i = 0; i < seq.size(); i++) {
			seq.set(i, seq.get(i).add(args[i % args.length]));
		}
		handleListChange();
		outputSeq();
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
			seq.set(i, seq.get(i).add(args[i % args.length]));
		}
		handleListChange();
		outputSeq();
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
		for (int i = 0; i < seq.size(); i++) {
			seq.set(i, seq.get(i).multiply(args[i % args.length]));
		}
		handleListChange();
		outputSeq();
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
			seq.set(i, seq.get(i).multiply(args[i % args.length]));
		}
		handleListChange();
		outputSeq();
	}

	public void direction() {
		step *= -1;
	}


	public void direction(int dir) {
		// I considered making dir = 0 set increment = 0, but then I feel like we should keep track
		// of the previous non-zero value so we can get it back when a non-zero dir command comes in
		step *= (dir >= 0 ? 1 : -1);
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


	public void bang() {
		if (!seq.isEmpty()) {
			output();
			Item currentItem = seq.get(this.index);
			if (currentItem.isAtomArray() && chordmode == CHORDMODE.ARPEGGIATE) {
				if (currentItem.getAtoms().length == 0) {
					// [], the empty chord noop
					index += step;
				}
				else {
					chordIndex = (chordIndex + 1) % currentItem.getAtoms().length;
					if (chordIndex == 0) {
						// we wrapped around
						index += step;
					}
				}
			}
			else {
				index += step;
			}
		}
	}

	protected void fixIndexBounds() {
		if (!seq.isEmpty()) { // prevent infinite loops!
			int size = seq.size();
			// if (wrapmode == WRAP_MODE_DEFAULT) {
			while (index >= size) {
				iterChanged = true;
				iter++;
				index -= size;
			}
			while (index < 0) {
				iterChanged = true;
				iter--;
				index += size;
			}
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
		if (!seq.isEmpty()) {
			fixIndexBounds();
			if (iterChanged) {
				iterChanged = false;
				output(OUTLET.ITERATION, iter);
			}
			output(OUTLET.INDEX, this.index);
			output(OUTLET.CURRENT_VAL, seq.get(this.index));
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

	protected void outputSeq() {
		output(OUTLET.VALUES, getseq());
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
		resetiter();
		resetstep();
		resetcmode();
		resetseq();
		resetindex();
	}

	public void resetindex() {
		this.index = defaultIndex;
		chordIndex = 0;
	}

	public void resetiter() {
		iter(defaultIter);
	}

	public void resetstep() {
		step(defaultStep);
	}

	public void resetcmode() {
		chordmode = defaultChordmode;
	}

	public void resetseq() {
		seq.clear();
		seq.addAll(defaultSeq);
		handleListChange();
		outputSeq();
	}


	protected void handleListChange() {
		// maybe? index = defaultIndex;

		chordIndex = 0;
		// chordIndex needs to be reset whenever the current value changes, but is this overly aggressive?
	}


	public boolean equals(Object obj) {
		if (obj instanceof seq) {
			return Arrays.equals(getseq(), ((seq) obj).getseq());
		}
		else {
			return false;
		}
	}


	public String toString() {
		return getClass().getName() + seq;
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
