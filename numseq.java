package ajm;

import java.util.LinkedList;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

/**
 * 
 * @deprecated - TODO convert existing GUI objects and patches
 * 
 */
public class numseq extends MaxObject {
	protected int[] vals = new int[] { 1 };
	protected int index = 0;
	protected int iteration = 0;
	protected LinkedList<int[]> queue = new LinkedList<int[]>();

	protected boolean initialized = false;

	protected boolean valsChanged = false;
	protected boolean wrap = true;

	protected int increment = 1;

	protected final static int OUT_VAL = 0;
	protected final static int OUT_IDX = 1;
	protected final static int OUT_ITER = 2;
	protected final static int OUT_LIST = 3;

	public numseq(Atom[] args) {
		declareIO(1, 4);
		createInfoOutlet(false);
		setInletAssist(new String[] { "[queue] list / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "list" });
	}

	/*******************************************************************************************************************
	 * List Definition Functions
	 ******************************************************************************************************************/

	public void queue(int[] list) {
		queue.add(list);
	}

	public void list(int[] list) {
		setVals(list);
		outlet(OUT_LIST, vals);
	}

	public void inlet(int i) {
		list(new int[] { i });
	}

	public void set(int[] list) {
		setVals(list);
	}

	protected void setVals(int[] list) {
		boolean allZeros = true;
		for (int i = 0; i < list.length; i++) {
			if (list[i] != 0) {
				allZeros = false;
				break;
			}
		}
		if (allZeros) {
			list[0] = 1; // prevent infinite loops
		}
		vals = list;
	}

	// todo: make public, but how should the output work?
	protected void dequeue() {
		if (!queue.isEmpty()) {
			setVals(queue.removeFirst());
			valsChanged = true;
		}
	}

	// TODO: need to handle empty list (at least with numseq, maybe not rhythm)
	// think about using append to record something from scratch

	// TODO: maybe this is better with a List? But less efficient?
	public void append(int[] newVals) {
		int[] oldVals = vals;
		vals = new int[oldVals.length + newVals.length];
		int i;
		for (i = 0; i < oldVals.length; i++) {
			vals[i] = oldVals[i];
		}
		for (int j = 0; j < newVals.length; j++) {
			vals[i + j] = newVals[j];
		}
		outlet(OUT_LIST, vals);
	}

	public void prepend(int[] newVals) {
		int[] oldVals = vals;
		vals = new int[oldVals.length + newVals.length];
		int i;
		for (i = 0; i < newVals.length; i++) {
			vals[i] = newVals[i];
		}
		for (int j = 0; j < oldVals.length; j++) {
			vals[i + j] = oldVals[j];
		}
		outlet(OUT_LIST, vals);
	}

	public void repeat() {
		append(vals);
	}

	public void repeat(int n) {
		if (n > 0) {
			int[] newVals = new int[n * vals.length];
			for (int i = 0; i < newVals.length; i++) {
				newVals[i] = vals[i % vals.length];
			}
			append(newVals);
		}
	}

	// TODO: insert (list), delete (index or range)

	/*******************************************************************************************************************
	 * List Manipulation Functions
	 ******************************************************************************************************************/

	public void reverse() {
		reverseVals(0, vals.length - 1);
		outlet(OUT_LIST, vals);
	}

	public void reverse(int left, int right) {
		reverseVals(left, right);
		outlet(OUT_LIST, vals);
	}

	protected void reverseVals(int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.length)
			right = vals.length - 1;

		while (left < right) {
			int temp = vals[left];
			vals[left] = vals[right];
			vals[right] = temp;
			left++;
			right--;
		}
	}

	public void rotate(int n) {
		rotate(n, 0, vals.length - 1);
	}

	public void rotate(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.length)
			right = vals.length - 1;

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

		outlet(OUT_LIST, vals);
	}

	public void add(int n) {
		add(n, 0, vals.length - 1);
	}

	public void add(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.length)
			right = vals.length - 1;

		for (int i = left; i <= right; i++) {
			vals[i] += n;
		}
		outlet(OUT_LIST, vals);
	}

	public void multiply(int n) {
		multiply(n, 0, vals.length - 1);
	}

	public void multiply(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.length)
			right = vals.length - 1;

		for (int i = left; i <= right; i++) {
			vals[i] += n;
		}
		outlet(OUT_LIST, vals);
	}

	// todo: arbitrary expression? can I eval javascript?

	/*******************************************************************************************************************
	 * Value Access ("Iteration") Functions
	 ******************************************************************************************************************/

	public void bang() {
		output();
	}

	public void increment(int n) {
		increment = n;
	}

	public void direction() {
		increment *= -1;
	}

	public void advance(int n) {
		setIndex(index + n);
	}

	public void reset() {
		queue.clear();
		setIndex(0);
		iteration = 0;
		wrap = true;
	}

	public void anything(String msg, Atom[] args) {
		// must implement goto via anything(), because goto is a reserved word in Java
		if ("goto".equals(msg)) {
			if (args.length > 0 && args[0].isInt()) {
				setIndex(args[0].getInt());
			}
			else
				post("invalid arguments for goto");
		}
		else
			post("doesn't understand " + msg);
	}

	protected void output() {
		if (valsChanged) {
			valsChanged = false;
			outlet(OUT_LIST, vals);
		}
		if (wrap) {
			wrap = false;
			outlet(OUT_ITER, iteration);
		}
		outlet(OUT_IDX, index);
		outlet(OUT_VAL, vals[index]);
	}

	protected void setIndex(int index) {

		boolean dequeue = false;

		int len = vals.length;
		while (index >= len) {
			wrap = true;
			dequeue = true;
			iteration++;
			index -= len;
		}
		while (index < 0) {
			wrap = true;
			dequeue = true;
			iteration--;
			index += len;
		}

		if (dequeue) {
			dequeue();
		}

		this.index = index;
	}
}
