package ajm;

import java.util.LinkedList;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

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

	protected void dequeue() {
		if (!queue.isEmpty()) {
			setVals(queue.removeFirst());
			valsChanged = true;
		}

	}

	public void bang() {
		output();
	}

	public void increment(int n) {
		increment = n;
	}

	public void direction() {
		increment *= -1;
	}

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
		/*
		 * while (n < 0) n += vals.length; while (n >= vals.length) n -= vals.length;
		 * 
		 * if (n != 0) { // This is not the fastest rotate algorithm, but it is the easiest to understand reverseVals(0,
		 * n - 1); reverseVals(n, vals.length - 1); reverseVals(0, vals.length - 1); }
		 * 
		 * outlet(OUT_LIST, vals);
		 */
		rotate(0, 0, vals.length);
	}

	public void rotate(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		int segmentLen = right - left;

		while (n < left)
			n += segmentLen;
		while (n >= right)
			n -= segmentLen;

		if (n != 0) {
			// This is not the fastest rotate algorithm, but it is the easiest to understand
			reverseVals(left, n - 1);
			reverseVals(n, right - 1);
			reverseVals(0, right - 1);
		}

		outlet(OUT_LIST, vals);
	}

	public void add(int n) {
		for (int i = 0; i < vals.length; i++) {
			vals[i] += n;
		}
		outlet(OUT_LIST, vals);
	}

	public void multiply(int n) {
		for (int i = 0; i < vals.length; i++) {
			vals[i] += n;
		}
		outlet(OUT_LIST, vals);
	}

	// todo: arbitrary expression? can I eval javascript?

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
			} else
				post("invalid arguments for goto");
		} else
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
