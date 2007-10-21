package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

/**
 * <p>
 * Store a list of symbols that can be manipulated and traversed in various ways.
 * </p>
 * <p>
 * The list of symbols can be constructed and manipulated through the use of the commands:<br/>
 * {@link #append <code>append</code>}, {@link #prepend <code>prepend</code>}, {@link #insert <code>insert</code>},
 * {@link #delete <code>delete</code>}, {@link #reverse <code>reverse</code>}, {@link #rotate <code>rotate</code>},
 * {@link #repeat <code>repeat</code>}, {@link #sort <code>sort</code>}, {@link #swap <code>swap</code>}, and
 * variations thereof.<br/> Some of these commands accept optional parameters specifying subsets of the list to
 * manipulate.
 * </p>
 * <p>
 * The list is traversed by keeping track of the {@link #index current index}. When a {@link #bang <code>bang</code>}
 * is recieved the current index increases by 1, then the current value (the symbol at the current index) and the
 * current index are sent out the first and second outlets, respectively. When the current index reaches the end of the
 * list it wraps around to the beginning, then an {@link #iteration iteration} count is increased and sent out the third
 * outlet the next time a bang is recieved. This describes the default behavior of looping through the list
 * sequentially. This traversal behavior can be controlled by the following commands:<br/>
 * {@link #increment <code>increment</code>}, {@link #direction <code>direction</code>},
 * {@link #advance <code>advance</code>}, {@link #index <code>index</code>}, {@link #next <code>next</code>},
 * {@link #prev <code>prev</code>}.
 * </p>
 * <p>
 * A note about indexes:<br/> Many commands accept index parameters so it is important to understand how the list is
 * indexed. The first value in the list is at index 0. This means the last element is at one less than the list length.
 * This follows standard programming practice and matches the behavior of most other Max objects. Some commands accept
 * two indexes to specify a range. Common programming practice is to require the left index followed by the right index,
 * and the left index is inclusive but the right index is exclusive. So for example, if the list is
 * <code>A B C D E</code> (A at index 0, E at 4), the range <code>B C D</code> would be specified by the indexes 1
 * to 4. I found this system particularly counter-intuitive for this external, so I made both indexes inclusive. So as
 * far as this external is concerned <code>B C D</code> is from indexes 1 to 3. Also, there is no requirement that the
 * left index is specified before the right index, so saying 3 to 1 is perfectly acceptable. Finally, automatic range
 * checking occurs, so for the list <code>A B C D E</code> the range -100 to 100 would silently convert into the valid
 * range 0 to 4.
 * 
 * @author Adam Murray (<a href="mailto:dev@compusition.com?subject=ajm.seq external">dev@compusition.com</a>)
 * @version 1.0
 * 
 */
public class seq extends MaxObject {

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
	public seq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("index", "getindex", "index");
		declareAttribute("iteration");
		declareAttribute("increment");

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

	// Other internal state:
	protected boolean wrap = true;
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
	protected final seq thisseq = this;

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
	 * TODO: update this text Set the length of the sequence. If the sequence is currently shorter than the requested
	 * length, it will be padded with 0s. If it is longer, it will be truncated.
	 * 
	 * @param length -
	 *            the new length of the sequence.
	 */
	public void len(Atom[] args) {
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
		values.addAll(0, Arrays.asList(newVals));
		handleListChange();
		outputVals();
	}


	public void insert(Atom[] args) {
		if (args.length < 2) {
			error("invalid call to insert, expected: insert position value1 ...");
		}
		else {
			try {
				// parse as a Float so we can accept any number
				int position = (new Float(args[0].toString())).intValue();
				insert(position, Atom.removeFirst(args));
				handleListChange();
				outputVals();
			}
			catch (NumberFormatException e) {
				error("invalid call to insert, position argument was not a number (expcected: insert position value1 ...)");
			}
		}
	}


	// This is split out as a separate method so it can be overriden in typedseq after validation of the args
	// is performed in insert(Atom[] args)
	protected void insert(int position, Atom[] newVals) {
		values.addAll(position, Arrays.asList(newVals));
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
		if (index >= 0 && index < values.size()) {
			values.remove(index);
			handleListChange();
			outputVals();
		}
	}


	public void delete(int[] indices) {
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
		delete(0);
	}


	public void deletefirst(int n) {
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
		delete(index);
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
	 *            first param is the required value to add to all numers in the sequence if 3 args are used then the
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
		/*
		if (!values.isEmpty()) {
			// this check is needed so that attribute order won't matter
			fixIndexBounds();
		}*/
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
			output(OUTLET.INDEX, this.index);
			output(OUTLET.CURRENT_VAL, values.get(this.index));
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
	}

	protected void handleListChange() {}


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
