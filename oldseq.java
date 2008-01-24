package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import ajm.data.SkipRules;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

public class oldseq extends MaxObject {

	/**
	 * ajm.seq does not take any arguments; the following attributes are supported:
	 * <ul>
	 * <li>{@link #values values}</li>
	 * <li>{@link #index index}</li>
	 * <li>{@link #iteration iteration}</li>
	 * <li>{@link #increment increment}</li>
	 * </ul>
	 * 
	 * 
	 */
	public oldseq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("index", "getindex", "index");
		declareAttribute("iteration");
		declareAttribute("increment");

		// TODO: document these, and finish implementing!
		declareAttribute("wrapmode");
		declareAttribute("wraplimit");

		defaultIndex = Atom.newAtom(getAttr("index").toString()).toInt();
		defaultIteration = Atom.newAtom(getAttr("iteration").toString()).toInt();

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


	/**
	 * The list of values stored by this sequence. Supports attribute messages:
	 * <dl>
	 * <dt><code>values <i>list</i></code></dt>
	 * <dd>set the list of values without generating output. Identical to {@link #set <code>set <i>list</i></code>}.</dd>
	 * <dt><code>getvals</code></dt>
	 * <dd>send the current list of symbols out the rightmost outlet.</dd>
	 * </dl>
	 * 
	 * @see #set
	 * @see #list
	 * 
	 * @attribute
	 */
	protected ArrayList<Atom> values = new ArrayList<Atom>();
	// explicitly use an ArrayList, because we need the remove() method and some other "optional" List methods

	/**
	 * The current index. Supports attribute messages:
	 * <dl>
	 * <dt><code>index <i>int</i></code></dt>
	 * <dd>set the current index.</dd>
	 * <dt>{@code getvalues}</dt>
	 * <dd>send the current index out the rightmost outlet.</dd>
	 * </dl>
	 * 
	 * @attribute
	 */
	protected int index = 0;

	/**
	 * The current iteration. Supports attribute messages:
	 * <dl>
	 * <dt><code>iteration <i>int</i></code></dt>
	 * <dd>set the current iteration.</dd>
	 * <dt>{@code getiteration}</dt>
	 * <dd>send the current iteration out the rightmost outlet.</dd>
	 * </dl>
	 * 
	 * @attribute
	 */
	protected int iteration = 0;

	/**
	 * The increment. Supports attribute messages:
	 * <dl>
	 * <dt><code>increment <i>int</i></code></dt>
	 * <dd>set the increment.</dd>
	 * <dt>{@code getiteration}</dt>
	 * <dd>send the increment out the rightmost outlet.</dd>
	 * </dl>
	 * 
	 * @attribute
	 */
	protected int increment = 1;


	protected int wrapmode = WRAP_MODE_DEFAULT;

	public static final int WRAP_MODE_DEFAULT = 0;
	public static final int WRAP_MODE_REVERSE = 1;

	protected int wraplimit = 0;

	// Other internal state:
	protected boolean wrap = true;
	protected SkipRules skipRules = new SkipRules();

	protected ArrayList<Atom> defaultValues = new ArrayList<Atom>();
	protected int defaultIndex = index;
	protected int defaultIteration = iteration;
	protected int defaultIncrement = increment;

	protected enum OUTLET {
		CURRENT_VAL(0), INDEX(1), ITERATION(2), VALUES(3), TICK(4);

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}

	// For use in anonymous classes
	protected final oldseq thisseq = this;

	/**
	 * Send the current list of values out the rightmost outlet.
	 * 
	 * @return the current list of values
	 * @see #set
	 * @see #list
	 */
	public Atom[] getvalues() {
		return values.toArray(new Atom[values.size()]);
	}

	/**
	 * Sets the list of symbols without triggering output or resetting the index.
	 * 
	 * @see #values
	 * @param list
	 */
	public void values(Atom[] list) {
		list(list);
	}

	/**
	 * Sets the list of symbols without triggering output.
	 * 
	 * @param list
	 * @see #values
	 * @see #list
	 */
	public void set(Atom[] list) {
		values.clear();
		Collections.addAll(values, list);
		handleListChange();
	}

	/**
	 * Sets the list of symbols and outputs it out the 4th outlet.
	 */
	public void list(Atom[] list) {
		set(list);
		outputVals();
	}

	// Max doesn't treat lists starting with a symbol as lists (they're just messages)
	// so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		Atom[] list = new Atom[args.length + 1];
		list[0] = Atom.newAtom(msg);
		for (int i = 0; i < args.length; i++) {
			list[i + 1] = args[i];
		}
		list(list);
	}


	/**
	 * Set the length of the sequence. If the sequence is currently shorter than the requested length, it will be padded
	 * with 0s. If it is longer, it will be truncated. The optional second arg sets the pad value.
	 * 
	 * @param length -
	 *            the new length of the sequence.
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
						values.add(pad);
					}
				}
				outputVals();
			}
			handleListChange();
		}
	}

	public void append(Atom[] newVals) {
		values.addAll(Arrays.asList(newVals));
		handleListChange();
		outputVals();
	}


	public void prepend(Atom[] newVals) {
		// TODO: // keep the index at the correct current element
		values.addAll(0, Arrays.asList(newVals));
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
		values.addAll(position, Arrays.asList(newVals));
	}

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

	public void repeat() {
		if (!values.isEmpty()) {
			values.addAll(values);
			handleListChange();
			outputVals();
		}
	}


	public void repeat(int n) {
		if (!values.isEmpty()) {
			List<Atom> currVals = new ArrayList<Atom>(values);
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

	/**
	 * Takes two bounds, and returns an array [left, right] where left &lt;= right and both are valid indices for
	 * {@link #values values}
	 * 
	 * @param left
	 *            one of the two indices
	 * @param right
	 *            one of the two indices
	 * @return an array [left, right]
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

			ArrayList<Atom> newVals = new ArrayList<Atom>(values.size() - (right - left + 1));
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


	protected int compare(Atom a1, Atom a2) {
		// todo: TEST!
		if (a1.isString() || a2.isString()) {
			return a1.toString().compareTo(a2.toString());
		}
		else if (a1.isFloat() || a2.isFloat()) {
			// rely on Float.compare() because it handles infinity and NaN
			return Float.compare(a1.toFloat(), a2.toFloat());
		}
		else {
			return a1.toInt() - a2.toInt();
		}
	}


	// TODO: intersection, union (see Atom API)

	// TODO: anything else to expose in the Atom or List (or Arrays or Collections??) APIs
	// Arrays.fill...

	/**
	 * Swap the values at the specified indices.
	 */
	public void swap(int idx1, int idx2) {
		if (idx1 >= 0 && idx1 < values.size() && idx2 >= 0 && idx2 < values.size()) {
			Atom tmp = values.get(idx1);
			values.set(idx1, values.get(idx2));
			values.set(idx2, tmp);
		}
		handleListChange();
		outputVals();
	}


	/**
	 * Reverse the list of values and send the new list out the fourth outlet.
	 */
	public void reverse() {
		reverseVals(0, values.size() - 1);
		handleListChange();
		outputVals();
	}


	/**
	 * Reverse the portion of the sequnce between the specified indices (inclusive). For example, if the sequence is A B
	 * C D E, the message <code>reverse 1 3</code> with transform the sequence into A D C B E.
	 * 
	 * @param idx1
	 * @param idx2
	 */
	public void revrange(int idx1, int idx2) {
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
			Atom temp = values.get(left);
			values.set(left, values.get(right));
			values.set(right, temp);
			left++;
			right--;
		}
	}


	public void rotate(int n) {
		rotaterange(n, 0, values.size() - 1);
	}


	public void rotaterange(int n, int left, int right) {
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


	/**
	 * Add the specified value to all numeric values in the sequence. Non-numeric values will not be changed.
	 * 
	 * @param args -
	 *            first param is the required value to add to all numbers in the sequence if 3 args are used then the
	 *            second and third speciy the range to apply the add operation to an int or float value (non-numeric
	 *            inputs are ignored)
	 */
	public void add(Atom[] args) {
		if (args.length == 0) {
			error("add command needs at least one argument");
			return;
		}
		Atom summand = args[0];
		if (!summand.isFloat() && !summand.isInt()) {
			error("arguments to add command must be a number");
			return;
		}
		int intVal = summand.toInt();
		float floatVal = summand.toFloat();
		boolean isFloat = summand.isFloat();

		int left = 0;
		int right = values.size() - 1;
		if (args.length > 2) {
			Atom leftArg = args[1];
			Atom rightArg = args[2];
			if ((!leftArg.isInt() && !leftArg.isFloat()) || (!rightArg.isInt() && !rightArg.isFloat())) {
				error("arguments to add command must be a number");
				return;
			}

			int[] lr = fixBounds(leftArg.toInt(), rightArg.toInt());
			left = lr[0];
			right = lr[1];
		}

		for (int i = left; i <= right; i++) {
			Atom val = values.get(i);
			if (val.isFloat() || val.isInt()) {
				if (isFloat || val.isFloat()) {
					values.set(i, Atom.newAtom(floatVal + val.toFloat()));
				}
				else {
					values.set(i, Atom.newAtom(intVal + val.toInt()));
				}
			}
		}
		handleListChange();
		outputVals();
	}

	/**
	 * Add the specified value to all numeric values in the sequence. Non-numeric values will not be changed.
	 * 
	 * @param args -
	 *            first param is the required value to add to all numers in the sequence if 3 args are used then the
	 *            second and third speciy the range to apply the add operation to an int or float value (non-numeric
	 *            inputs are ignored)
	 */
	public void multiply(Atom[] args) {
		if (args.length == 0) {
			error("add command needs at least one argument");
			return;
		}
		Atom multiplier = args[0];
		if (!multiplier.isFloat() && !multiplier.isInt()) {
			error("arguments to add command must be a number");
			return;
		}
		int intVal = multiplier.toInt();
		float floatVal = multiplier.toFloat();
		boolean isFloat = multiplier.isFloat();

		int left = 0;
		int right = values.size() - 1;
		if (args.length > 2) {
			Atom leftArg = args[1];
			Atom rightArg = args[2];
			if ((!leftArg.isInt() && !leftArg.isFloat()) || (!rightArg.isInt() && !rightArg.isFloat())) {
				error("arguments to add command must be a number");
				return;
			}

			int[] lr = fixBounds(leftArg.toInt(), rightArg.toInt());
			left = lr[0];
			right = lr[1];
		}

		for (int i = left; i <= right; i++) {
			Atom val = values.get(i);
			if (val.isFloat() || val.isInt()) {
				if (isFloat || val.isFloat()) {
					values.set(i, Atom.newAtom(floatVal * val.toFloat()));
				}
				else {
					values.set(i, Atom.newAtom(intVal * val.toInt()));
				}
			}
		}
		handleListChange();
		outputVals();
	}

	/*
	 * we get setincrement for free via the attribute system public void increment(int n) { increment = n; }
	 */

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

	public void index(int index) {
		this.index = index;

		if (!values.isEmpty()) {
			// this check is needed so that attribute order won't matter
			fixIndexBounds();
		}
	}

	/*
	protected void initIndex() {
		fixIndexBounds();
	}*/

	public void bang() {
		if (!values.isEmpty()) {
			output();
			index += increment;
		}
	}

	protected void fixIndexBounds() {
		int size = values.size();
		if (wrapmode == WRAP_MODE_DEFAULT) {
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
		}
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
		}
	}

	/**
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
			if (!skipRules.skip(iteration, index)) {
				output(OUTLET.INDEX, this.index);
				output(OUTLET.CURRENT_VAL, values.get(this.index));
			}
		}
	}

	public void current() {
		if (!values.isEmpty()) {
			output(OUTLET.CURRENT_VAL, values.get(this.index));
		}
	}

	public void get(int index) {
		if (index < 0 || index >= values.size()) {
			error(getClass() + ": invalid index " + index + " (valid indexes for current list are 0 - "
					+ (values.size() - 1) + ")");
		}
		else {
			output(OUTLET.CURRENT_VAL, values.get(index));
		}
	}

	public void skip(Atom[] args) {
		if (args.length > 1) {
			if (args[0].isInt() || args[0].isFloat()) {
				int iter = args[0].toInt();
				for (int i = 1; i < args.length; i++) {
					Atom a = args[i];
					if (a.isInt() || a.isFloat()) {
						int idx = a.toInt();
						skipRules.addRule(iter, idx);
					}
				}
			}
			else if ("*".equals(args[0].toString())) {
				for (int i = 1; i < args.length; i++) {
					Atom a = args[i];
					if (a.isInt() || a.isFloat()) {
						int idx = a.toInt();
						skipRules.addWildcardRule(idx);
					}
				}
			}
		}
	}

	public void clearskip(Atom[] args) {
		if (args.length == 0) {
			skipRules.clearAll();
		}
		else if (args[0].isInt() || args[0].isFloat()) {
			int iteration = args[0].toInt();
			if (args.length == 1) {
				skipRules.clearRules(iteration);
			}
			else {
				for (int i = 1; i < args.length; i++) {
					Atom a = args[i];
					if (a.isInt() || a.isFloat()) {
						int idx = a.toInt();
						skipRules.clearRule(iteration, idx);
					}
				}
			}
		}
		else if ("*".equals(args[0].toString())) {
			if (args.length == 1) {
				skipRules.clearWildcardRules();
			}
			else {
				for (int i = 1; i < args.length; i++) {
					Atom a = args[i];
					if (a.isInt() || a.isFloat()) {
						int idx = a.toInt();
						skipRules.clearWildcardRule(idx);
					}
				}
			}
		}
	}


	protected void outputVals() {
		output(OUTLET.VALUES, getvalues());
	}


	protected void output(OUTLET outlet, int data) {
		outlet(outlet.outletNumber, data);
	}


	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}


	protected void output(OUTLET outlet, Atom[] data) {
		outlet(outlet.outletNumber, data);
	}


	public void reset() {
		index = defaultIndex;
		iteration = defaultIteration;
		increment = defaultIncrement;
		values.clear();
		values.addAll(defaultValues);
		wrap = true;
		handleListChange();
		outputVals();
	}

	public void resetindex() {
		index = defaultIndex;
	}

	public void resetiteration() {
		iteration = defaultIteration;
		wrap = true;
	}

	public void resetincrement() {
		increment = defaultIncrement;
	}

	public void resetseq() {
		values.clear();
		values.addAll(defaultValues);
		handleListChange();
		outputVals();
	}

	protected void handleListChange() {
	// maybe? index = defaultIndex;
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
