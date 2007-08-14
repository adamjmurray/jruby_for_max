package ajm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

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
	 * ajm.seq suppots the following attributes:
	 * <ul>
	 * <li>{@link #values values}</li>
	 * <li>{@link #index index}</li>
	 * <li>{@link #iteration iteration}</li>
	 * <li>{@link #increment increment}</li>
	 * </ul>
	 * 
	 * ajm.seq does not take any arguments.
	 */
	public seq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("index", "getindex", "index");
		declareAttribute("iteration");
		declareAttribute("increment");
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
	 * <dd>send the current list of symbols out the rightmost outlet.</dd>
	 * </dl>
	 * 
	 * @attribute
	 */
	protected int index = 0;
	protected int iteration = 0;
	protected int increment = 1;

	// Other internal state:
	protected boolean wrap = true;
	protected boolean autoIncrement = false;

	protected enum OUTLET {
		CURRENT_VAL(0), INDEX(1), ITERATION(2), VALUES(3);

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
	 * @see #values
	 * @param list
	 * @nodoc
	 */
	public void values(Atom[] list) {
		set(list);
	}

	/**
	 * Sets the list of symbols without triggering output. Identical to {@link #values <code>values <i>list</i></code>}.
	 * 
	 * @param list
	 * @see #values
	 * @see #list
	 */
	public void set(Atom[] list) {
		values.clear();
		Collections.addAll(values, list);
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


	public void append(Atom[] newVals) {
		values.addAll(Arrays.asList(newVals));
		outputVals();
	}


	public void prepend(Atom[] newVals) {
		values.addAll(0, Arrays.asList(newVals));
		outputVals();
	}


	public void insert(Atom[] args) {
		if (args.length < 2) {
			error("invalid call to insert, expected: insert position vals");
		}
		else {
			try {
				// parse as a Float so we can accept any number
				int position = (new Float(args[0].toString())).intValue();
				insert(position, Atom.removeFirst(args));
			}
			catch (NumberFormatException e) {
				error("invalid call to insert, position argument was not a number (expcected: insert position vals)");
			}
		}
		outputVals();
	}


	// This is split out as a separate method so it can be overriden in typedseq after validation of the args
	// is performed in insert(Atom[] args)
	protected void insert(int position, Atom[] newVals) {
		values.addAll(position, Arrays.asList(newVals));
	}


	public void repeat() {
		values.addAll(values);
		outputVals();
	}


	public void repeat(int n) {
		List<Atom> currVals = new ArrayList<Atom>(values);
		for (int i = 0; i < n; i++) {
			values.addAll(currVals);
		}
		outputVals();
	}


	// TODO: what to do if the index moves off the end
	// probably position at last element, but really I think we
	// want to go to the first element next if direction is forward
	// and last element if direction is backward...
	// probably need a boolean to keep track of this undefined state
	// and let the list traversal methods (advance, goto, etc) handle it
	public void delete(int index) {
		values.remove(index);
		outputVals();
	}


	public void delete(int[] indices) {
		Arrays.sort(indices);
		// delete in reverse order so any index shifting that occurs doesn't affect things
		for (int i = indices.length - 1; i >= 0; i--) {
			values.remove(indices[i]);
		}
		outputVals();
	}

	public void clear() {
		values.clear();
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


	// TODO: all my methods use inclusive ranges... is that too confusing?
	public void delrange(int left, int right) {
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
		outputVals();
	}


	public void delfirst() {
		delete(0);
	}


	public void delfirst(int n) {
		if (n > 0) {
			delrange(0, n - 1);
		}
	}


	public void dellast() {
		delete(values.size() - 1);
	}


	public void dellast(int n) {
		if (n > 0) {
			delrange(values.size() - n, values.size() - 1);
		}
	}


	public void delcurr() {
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
	}


	public void sortrange(int left, int right) {
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
	}


	protected int compare(Atom a1, Atom a2) {
		return a1.toString().compareTo(a2.toString());
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
		outputVals();
	}


	/**
	 * Reverse the list of values and send the new list out the fourth outlet.
	 */
	public void reverse() {
		reverseVals(0, values.size() - 1);
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
		int[] lr = fixBounds(idx1, idx2);
		reverseVals(lr[0], lr[1]);
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
		rotate(n, 0, values.size() - 1);
	}


	public void rotate(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= values.size())
			right = values.size() - 1;

		int segmentLen = right - left;
		n = left + n;
		while (n < left)
			n += segmentLen;
		while (n >= right)
			n -= segmentLen;

		if (n != left) {
			// This is not the fastest rotate algorithm, but it is the easiest to understand
			reverseVals(left, n - 1);
			reverseVals(n, right);
			reverseVals(left, right);
		}
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

	public int getindex() {
		return index;
	}

	public void index(int index) {
		autoIncrement = false;
		setIndex(index);
	}

	protected void setIndex(int index) {
		int len = values.size();
		if (len == 0) {
			this.index = 0;
		}
		else {
			while (index >= len) {
				wrap = true;
				iteration++;
				index -= len;
			}
			while (index < 0) {
				wrap = true;
				iteration--;
				index += len;
			}
			this.index = index;
		}
	}


	public void bang() {
		/* Although it would be much easier to not keep track of autoIncrement, and
		   just output() then increment, that would lead to misleading results when querying
		   for the current value, current index, and current interation 
		   (it'll be the next value, not the current one). */
		if (!values.isEmpty()) {
			if (autoIncrement) {
				setIndex(index + increment);
			}
			else {
				autoIncrement = true;
			}
			output();
		}
	}

	/**
	 * Send the current value out the first outlet, the current index out the second outlet, and if a wrap-around has
	 * occurred since the last output (including those triggered by bangs) then send the current iteration out the third
	 * outlet.
	 */
	public void output() {
		if (!values.isEmpty()) {
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
		// TODO! reset should reset to the passed in attributes if any (use getAttr in constructor?)
		index = 0;
		iteration = 0;
		wrap = true;
		autoIncrement = false;
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

}
