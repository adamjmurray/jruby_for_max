package ajm;

/*
 Copyright (c) 2008, Adam Murray (adam@compusition.com). All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, 
 this list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

import ajm.maxsupport.AbstractMaxRubyObject;
import ajm.rubysupport.MaxRubyEvaluator;
import ajm.seqsupport.Item;
import ajm.seqsupport.Parser;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxQelem;

/**
 * The ajm.seq MaxObject.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public class seq extends AbstractMaxRubyObject {

	public seq(Atom[] args) {
		declareAttrs();
		declareIO(1, 4);
		setInletAssist(new String[] { "list / bang / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "sequence" });
	}

	protected seq() { // for subclasses
		declareAttrs();
	}

	protected void declareAttrs() {
		declareAttribute("seq", "getseq", "seq");
		declareAttribute("defaultseq", "getdefaultseq", "defaultseq");
		declareAttribute("index", "getindex", "index");
		declareAttribute("cmode", "getchordmode", "chordmode");
		declareAttribute("iter", "getiter", "iter");
		declareAttribute("step", "getstep", "step");
	}

	@Override
	protected MaxQelem getInitializer() {
		return new MaxQelem(new seqInitializationCallback());
	}

	protected class seqInitializationCallback implements Executable {
		// see discussion at
		// http://www.cycling74.com/forums/index.php?t=rview&goto=114649
		public void execute() {
			// handle attributes used to construct the object
			defaultIndex = index;
			defaultIter = iter;
			defaultStep = step;
			defaultChordmode = chordmode;
			if (seq.isEmpty()) {
				seq.addAll(defaultSeq);
			}
			outputSeq();

			contructRubyEvaluator();

			initialized = true;
		}
	}

	protected enum OUTLET {
		VALUE(0), INDEX(1), ITER(2), SEQ(3), VALINDEX(4);
		// VALINDEX outlet is just for the rseq subclass because Java enums
		// don't support inheritance :(

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

	// Defaults (for reset commands)
	protected ArrayList<Item> defaultSeq = new ArrayList<Item>();
	protected int defaultIndex = index;
	protected int defaultIter = iter;
	protected int defaultStep = step;
	protected CHORDMODE defaultChordmode;

	protected int chordIndex = 0;
	protected boolean iterChanged = true;

	protected Parser parser = new Parser();

	protected final seq thisseq = this; // For use in anonymous classes

	/*------------------------------------------------
	 *  Attribute Handlers
	 *------------------------------------------------*/

	public List<Item> items() {
		return seq;
	}

	public Atom[] getseq() {
		return Utils.toAtoms(seq);
	}

	@SuppressWarnings("all")
	public void seq(Atom[] list) {
		list(list);
	}

	public Atom[] getdefaultseq() {
		return Utils.toAtoms(defaultSeq);
	}

	public void defaultseq(Atom[] list) {
		try {
			List<Item> newSeq = parser.parse(list);
			defaultSeq.clear();
			defaultSeq.addAll(newSeq);
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + detokenize(list) + "\n" + e.getMessage());
		}
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
			// undo the last step and apply the new one.
			// the behavior is unintuitive if we don't do this
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
				err("Unknown chordmode: " + chordmode + "");
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
		try {
			List<Item> newSeq = parser.parse(list);
			seq.clear();
			seq.addAll(newSeq);
			onSeqChange();
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + detokenize(list) + "\n" + e.getMessage());
		}
	}

	// Max doesn't treat lists starting with a symbol as lists (they're
	// messages) so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		try {
			List<Item> newSeq = parser.parse(msg, args);
			seq.clear();
			seq.addAll(newSeq);
			onSeqChange();
			outputSeq();
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + detokenize(msg, args) + "\n" + e.getMessage());
		}
	}

	public void rubyseq(Atom[] input) {
		// TODO: it seems questionable that I do my ajm.eval logic on the Atom(s) returned by Ruby.
		// Maybe it should use the raw results.
		String rubyCode = detokenize(input);
		Object val = evalRuby(rubyCode);
		if (val != null) {
			if (val instanceof Atom[]) {
				Atom[] vals = (Atom[]) val;
				if (vals.length > 0 && (vals.length > 1 || !MaxRubyEvaluator.NIL.equals(vals[0].toString()))) {
					list(vals);
				}
			}
			else {
				Atom a = (Atom) val;
				if (!MaxRubyEvaluator.NIL.equals(a.toString())) {
					list(new Atom[] { a });
				}
			}
		}
	}

	public void ruby(Atom[] input) {
		evalRuby(detokenize(input));
	}

	protected Object evalRuby(CharSequence input) {
		try {
			return ruby.eval(input);
		}
		catch (Exception e) {
			err("could not evaluate: " + input);
			return null;
		}
	}

	/*------------------------------------------------
	 *  Sequence Construction Methods
	 *------------------------------------------------*/
	public void append(Atom[] list) {
		seq.addAll(parser.parse(list));
		onSeqChange();
		outputSeq();
	}

	public void prepend(Atom[] list) {
		if (list.length > 0) {
			insert(0, list);
		}
	}

	public void insert(Atom[] args) {
		if (args.length < 2) {
			err("Invalid call to insert. Expected: insert index list");
		}
		else if (!isNumber(args[0])) {
			err("Invalid call to insert. First argument (index) was not a number.");
		}
		else {
			insert(args[0].toInt(), Atom.removeFirst(args));
		}
	}

	protected void insert(int idx, Atom[] list) {
		List<Item> newSeq = parser.parse(list);
		idx = fixBounds(idx);
		seq.addAll(idx, newSeq);
		if (idx <= index) {
			index += newSeq.size(); // keep the index at the correct current element
		}
		onSeqChange();
		outputSeq();
	}

	public void insertsort(Atom[] list) {
		// Note: This does not guarantee the list is sorted, it just inserts the
		// arguments into the first spot where they are not less then a value.
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
								// TODO: test this, I thought it was supposed to
								// be i<index, but because we
								// increment the index at the end of bang() I
								// think this is now the correct comparison
								// keep the index at the correct current
								// element. Except delete still uses i<index,
								// seemed to give the best results with the
								// arpeggiator (confusing!)
							}
							continue loop;
						}
					}
					seq.add(item);
				}
			}
			onSeqChange();
			outputSeq();
		}
	}

	public void repeat(Atom[] args) {
		int n = 1; // the default is one repetition
		if (args.length > 0) {
			if (!isNumber(args[0])) {
				err("Invalid call to repeat. Argument was not a number: " + args[0]);
				return;
			}
			n = args[0].toInt();
		}
		if (!seq.isEmpty()) {
			ArrayList<Item> currVals = new ArrayList<Item>(seq);
			for (int i = 0; i < n; i++) {
				seq.addAll(currVals);
			}
			onSeqChange();
			outputSeq();
		}
	}

	public void length(Atom[] args) {
		if (args.length < 1) {
			err("Invalid call to length. No Arguments. Expected: length n [list]");
		}
		else if (!isNumber(args[0])) {
			err("Invalid call to length. First argument (n) was not a number: " + args[0]);
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
			onSeqChange();
		}
	}

	public void delete(Atom[] args) {
		if (!seq.isEmpty()) {
			if (args.length == 0) {
				seq.clear();
			}
			else {
				// Sort in reverse order, so any index shifting that occurs when we start
				// deleting won't effect indices that still need to be deleted
				TreeSet<Integer> indices = new TreeSet<Integer>(new Comparator<Integer>() {
					public int compare(Integer o1, Integer o2) {
						return -o1.compareTo(o2);
					}

				});
				for (Atom arg : args) {
					if (isNumber(arg)) {
						indices.add(fixBounds(arg.toInt()));
					}
				}
				for (int idx : indices) {
					seq.remove(idx);
					if (idx < index) {
						index--; // keep the index at the current element
					}

				}
			}
			outputSeq();
			onSeqChange();
		}
	}

	protected int fixBounds(int idx) {
		if (!seq.isEmpty()) { // prevents infinite loops!
			int size = seq.size();
			while (idx >= size) {
				idx -= size;
			}
			while (idx < 0) {
				idx += size;
			}
		}
		return idx;
	}

	protected int[] fixBounds(int left, int right) {
		left = fixBounds(left);
		right = fixBounds(right);
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		return new int[] { left, right };
	}

	protected int[] getRange(int start, int end) {
		if (seq.isEmpty()) {
			return new int[] { 0, 0 };
		}
		while (end < start) {
			end += seq.size();
		}
		// now make sure both values are non-negative so we can do
		// positive modular arithmetic
		while (start < 0 || end < 0) {
			start += seq.size();
			end += seq.size();
		}
		return new int[] { start, end };
	}

	protected int[] getReverseRange(int start, int end) {
		if (seq.isEmpty()) {
			return new int[] { 0, 0 };
		}
		while (start < end) {
			start += seq.size();
		}
		// now make sure both values are non-negative so we can do
		// positive modular arithmetic
		while (start < 0 || end < 0) {
			start += seq.size();
			end += seq.size();
		}
		return new int[] { start, end };
	}

	public void subseq(int left, int right) {
		int lr[] = fixBounds(left, right);
		left = lr[0];
		right = lr[1];

		ArrayList<Item> newVals = new ArrayList<Item>(right - left + 1);
		for (int i = left; i <= right; i++) {
			newVals.add(seq.get(i));
		}
		seq = newVals;

		onSeqChange();
		outputSeq();
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
			onSeqChange();
			outputSeq();
		}
	}

	public void deletevalue(Atom[] args) {
		for (Atom a : args) {
			for (int i = 0; i < seq.size(); i++) {
				if (seq.get(i).getAtom().equals(a)) {
					seq.remove(i);
					// keep the index at the correct current element
					if (i < index) {
						// TODO: test this
						index--;
					}
					i--;
				}
			}
		}
		/*
		 * if (seq.isEmpty()) { index = 0; }
		 */
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
		onSeqChange();
		outputSeq();
	}

	public void sortrange(int left, int right) {
		if (seq.size() > 0) {
			int[] lr = fixBounds(left, right);
			left = lr[0];
			right = lr[1];

			List<Item> sorted = seq.subList(left, right + 1);
			// right+1 converts my inclusive range to Java's standard exclusive range
			Collections.sort(sorted);

			deleterange(left, right);
			seq.addAll(left, sorted);
			onSeqChange();
			outputSeq();
		}
	}

	public void replace(Atom args[]) {
		if (args.length < 2) {
			err("Invalid call to replace. Not enough arguments. Expected: replace index list");
		}
		else if (!isNumber(args[0])) {
			err("Invalid call to replace. First argument (index) was not a number: " + args[0]);
		}
		else {
			int idx = fixBounds(args[0].toInt());
			seq.remove(idx);
			insert(idx, Atom.removeFirst(args));
		}
	}

	public void replacerange(Atom args[]) {
		if (args.length < 2) {
			err("Invalid call to replacerange. Expected: replace fromIndex toIndex list");
		}
		else if (!isNumber(args[0])) {
			err("Invalid call to replacerange. First argument (fromIndex) was not a number: " + args[0]);
		}
		else if (!isNumber(args[1])) {
			err("Invalid call to replacerange. Second argument (toIndex) was not a number: " + args[1]);
		}
		else {
			int[] ft = fixBounds(args[0].toInt(), args[1].toInt());
			int from = ft[0];
			int to = ft[1];
			deleterange(from, to);
			insert(from, Atom.removeFirst(Atom.removeFirst(args)));
		}
	}

	public void swap(Atom args[]) {
		if (args.length < 2) {
			err("Invalid call to swap. Expected: swap index1 index2");
		}
		else if (!isNumber(args[0])) {
			err("Invalid call to swap. First argument (index1) was not a number: " + args[0]);
		}
		else if (!isNumber(args[1])) {
			err("Invalid call to swap. Second argument (index2) was not a number: " + args[1]);
		}
		int idx1 = fixBounds(args[0].toInt());
		int idx2 = fixBounds(args[1].toInt());
		if (idx1 != idx2) {
			Item tmp = seq.get(idx1);
			seq.set(idx1, seq.get(idx2));
			seq.set(idx2, tmp);
			onSeqChange();
		}
		outputSeq();
	}

	public void reverse() {
		reverseVals(0, seq.size() - 1);
		onSeqChange();
		outputSeq();
	}

	public void reverserange(int idx1, int idx2) {
		if (seq.size() == 0) {
			return;
		}
		int[] lr = fixBounds(idx1, idx2);
		reverseVals(lr[0], lr[1]);
		onSeqChange();
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

	// NOTE: the signature of this method changed (left, right is now before n
	// for consistency)
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
		onSeqChange();
		outputSeq();
	}

	/*
	 * Add the specified value to all numeric values in the sequence. Non-numeric values will not be changed. The arg
	 * list is looped to create a list the same length as the values and applies the addition on an element by element
	 * basis. Note that chords will have a single arg applied to each chord atom.
	 */
	public void add(Atom[] args) {
		if (args.length == 0) {
			err("add needs at least one argument");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to add must be numbers");
				return;
			}
		}
		for (int i = 0; i < seq.size(); i++) {
			seq.set(i, seq.get(i).add(args[i % args.length]));
		}
		onSeqChange();
		outputSeq();
	}

	/*
	 * at least 3 args are required. first arg is left index, second arg is right index, 3rd/remaining args acts just
	 * like add()
	 */
	public void addrange(Atom[] args) {
		if (args.length < 3) {
			err("addrange needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to addrange must be numbers");
				return;
			}
		}

		int[] range = getRange(args[0].toInt(), args[1].toInt());
		int start = range[0];
		int end = range[1];
		int len = args.length - 2;
		int i = start;
		int j = 0;
		while (i <= end) {
			Atom summand = args[(j % len) + 2];
			int idx = i % seq.size();
			seq.set(idx, seq.get(idx).add(summand));
			i++;
			j++;
		}
		onSeqChange();
		outputSeq();
	}

	public void addrevrange(Atom[] args) {
		if (args.length < 3) {
			err("addrevrange needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to addrevrange must be numbers");
				return;
			}
		}

		int[] range = getReverseRange(args[0].toInt(), args[1].toInt());
		int start = range[0];
		int end = range[1];
		int len = args.length - 2;
		int i = start;
		int j = 0;
		while (i >= end) {
			Atom summand = args[(j % len) + 2];
			int idx = i % seq.size();
			seq.set(idx, seq.get(idx).add(summand));
			i--;
			j++;
		}
		onSeqChange();
		outputSeq();
	}

	public void multiply(Atom[] args) {
		if (args.length == 0) {
			err("multiply needs at least one argument");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to multiply must be numbers");
				return;
			}
		}
		for (int i = 0; i < seq.size(); i++) {
			seq.set(i, seq.get(i).multiply(args[i % args.length]));
		}
		onSeqChange();
		outputSeq();
	}

	public void multiplyrange(Atom[] args) {
		if (args.length < 3) {
			err("multiplyrange needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to multiplyrange must be numbers");
				return;
			}
		}

		int[] range = getRange(args[0].toInt(), args[1].toInt());
		int start = range[0];
		int end = range[1];
		int len = args.length - 2;
		int i = start;
		int j = 0;
		while (i <= end) {
			Atom multiplicand = args[(j % len) + 2];
			int idx = i % seq.size();
			seq.set(idx, seq.get(idx).multiply(multiplicand));
			i++;
			j++;
		}
		onSeqChange();
		outputSeq();
	}

	public void multiplyrevrange(Atom[] args) {
		if (args.length < 3) {
			err("multiplyrevrange needs at least 3 arguments");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to multiplyrevrange must be numbers");
				return;
			}
		}

		int[] range = getReverseRange(args[0].toInt(), args[1].toInt());
		int start = range[0];
		int end = range[1];
		int len = args.length - 2;
		int i = start;
		int j = 0;
		while (i >= end) {
			Atom multiplicand = args[(j % len) + 2];
			int idx = i % seq.size();
			seq.set(idx, seq.get(idx).multiply(multiplicand));
			i--;
			j++;
		}
		onSeqChange();
		outputSeq();
	}

	public void direction() {
		step(step * -1);
	}

	public void direction(int dir) {
		if (dir > 0) {
			// force step to be positive
			if (step < 0) {
				step(step * -1);
			}
		}
		else {
			// force step to be negative
			if (step > 0) {
				step(step * -1);
			}
		}
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
				output(OUTLET.ITER, iter);
			}
			output(OUTLET.INDEX, this.index);
			output(OUTLET.VALUE, seq.get(this.index));
		}
	}

	protected void outputSeq() {
		Atom[] atoms = getseq();
		if (atoms.length > 0) {
			output(OUTLET.SEQ, getseq());
		}
		else {
			// " " is pattr friendly (pattr will not send out a message on preset recall if it is empty string)
			output(OUTLET.SEQ, Atom.newAtom(" "));
		}
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

	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}

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
		onSeqChange();
		outputSeq();
	}

	protected void onSeqChange() {
		// maybe? index = defaultIndex;

		// chordIndex = 0; // maybe this isn't really needed
		// chordIndex needs to be reset whenever the current value changes, but
		// is this overly aggressive? YES! Try
		// changing a list of chords while it is playing. it is not cool...
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

}
