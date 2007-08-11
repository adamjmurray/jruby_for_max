package ajm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

/**
 * Store a list of symbols that can be manipulated and traversed in various ways.
 * 
 * @author Adam Murray
 * @version 1.0
 * 
 */
public class seq extends MaxObject {

	/**
	 * seq does not take any arguments, but the following attributes are supported:
	 * 
	 * {@link #vals vals}, index, interation, increment
	 * 
	 */
	public seq(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });

		declareAttribute("vals", "getvals", "vals");
		declareAttribute("index");
		declareAttribute("iteration");
		declareAttribute("increment");
	}

	// Attributes:
	/**
	 * The list of symbols stored by this sequence. This is an attribute so it can be set with the message:
	 * <code>vals symbol-list</code> and the current symbol-list can be sent out the rightmost outlet with the message
	 * <code>getvals</code>
	 * 
	 * @see #set
	 * @see #list
	 */
	protected List<Atom> vals = new ArrayList<Atom>();

	protected int index = 0;
	protected int iteration = 0;
	protected int increment = 1;

	// Other internal state:
	protected boolean wrap = true;
	protected boolean initialized = false;

	// Constants:
	protected enum OUTLET {
		CURRENT_VAL(0), INDEX(1), ITERATION(2), VALUES(3);

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}

	/*-----------------------------------------------------------------------
	   List Definition Functions
	  -----------------------------------------------------------------------*/

	public Atom[] getvals() {
		return vals.toArray(new Atom[vals.size()]);
	}

	/**
	 * Sets the list of symbols and outputs it out the 4th outlet.
	 */
	public void list(Atom[] list) {
		set(list);
		outputVals();
	}

	/**
	 * Sets the list of symbols without generating output. Identical to using the <code>vals</code> command to set the
	 * attribute vals.
	 * 
	 * @param list
	 * @see #vals
	 */
	public void set(Atom[] list) {
		vals = Arrays.asList(list);
	}

	public void vals(Atom[] list) {
		set(list);
	}

	public void append(Atom[] newVals) {
		vals.addAll(Arrays.asList(newVals));
		outputVals();
	}

	public void prepend(Atom[] newVals) {
		vals.addAll(0, Arrays.asList(newVals));
		outputVals();
	}

	public void insert(Atom[] newVals) {
		if (newVals.length < 2) {
			error("invalid call to insert, expected: insert position vals");
		} else {
			int position = newVals[0].toInt();
			newVals = Atom.removeFirst(newVals);
			vals.addAll(position, Arrays.asList(newVals));
		}
		outputVals();
	}

	public void repeat() {
		vals.addAll(vals);
		outputVals();
	}

	public void repeat(int n) {
		List<Atom> currVals = new ArrayList<Atom>(vals);
		for (int i = 0; i < n; i++) {
			vals.addAll(currVals);
		}
		outputVals();
	}

	public void delete(int index) {
		set(Atom.removeOne(getvals(), index));
		outputVals();
	}

	public void delete(int left, int right) {
		set(Atom.removeSome(getvals(), left, right));
		outputVals();
	}

	// TODO: other remove operations (remove first/amount, remove last/amount)

	// TODO: intersection, union (see Atom API)

	// TODO: anything else to expose in the Atom or List (or Arrays or Collections??) APIs
	// Arrays.fill,equals,sort

	/*-----------------------------------------------------------------------
	     List Manipulation Functions
	  -----------------------------------------------------------------------*/

	/**
	 * Reverse the sequence and output the new sequence out the {@value #OUT_LIST} outlet.
	 */
	public void reverse() {
		reverseVals(0, vals.size() - 1);
		outputVals();
	}

	/**
	 * Reverse the portion of the sequnce between the specified left and right index (inclusive). The first element is
	 * index 0. For example, if the sequence is A B C D E, the message <code>reverse 1 3</code> with transform the
	 * sequence into A D C B E.
	 * 
	 * @param left
	 * @param right
	 */
	public void reverse(int left, int right) {
		reverseVals(left, right);
		outputVals();
	}

	protected void reverseVals(int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.size())
			right = vals.size() - 1;

		while (left < right) {
			Atom temp = vals.get(left);
			vals.set(left, vals.get(right));
			vals.set(right, temp);
			left++;
			right--;
		}
	}

	public void rotate(int n) {
		rotate(n, 0, vals.size() - 1);
	}

	public void rotate(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.size())
			right = vals.size() - 1;

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

	/*******************************************************************************************************************
	 * Value Access ("Iteration") Functions
	 ******************************************************************************************************************/

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
		setIndex(index + n);
	}

	public void reset() {
		// TODO! reset should reset to the passed in attributes if any (use getAttr in constructor?)
		setIndex(0);
		iteration = 0;
		wrap = true;
	}

	public void anything(String msg, Atom[] args) {
		// must implement goto via anything(), because goto is a reserved word in Java
		if ("goto".equals(msg)) {
			if (args.length > 0) {
				setIndex(args[0].getInt());
			} else
				error("missing argument, expected: goto position");
		} else {
			error(getClass() + " doesn't understand " + msg);
		}
	}

	public void bang() {
		if (initialized) {
			setIndex(index + increment);
		} else {
			initialized = true;
		}

		if (wrap) {
			wrap = false;
			output(OUTLET.ITERATION, iteration);
		}
		output(OUTLET.INDEX, index);
		output(OUTLET.CURRENT_VAL, vals.get(index));
	}

	protected void outputVals() {
		output(OUTLET.VALUES, getvals());
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

	protected void setIndex(int index) {
		int len = vals.size();
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

	public boolean equals(Object obj) {
		if (obj instanceof seq) {
			return Arrays.equals(getvals(), ((seq) obj).getvals());
		} else {
			return false;
		}
	}
}
