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

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

import ajm.maxsupport.AbstractMaxRubyObject;
import ajm.rubysupport.MaxRubyAdapter;
import ajm.seqsupport.Item;
import ajm.seqsupport.Parser;
import ajm.seqsupport.Token;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

/**
 * The ajm.seq MaxObject.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class seq extends AbstractMaxRubyObject {

	public seq(Atom[] args) {
		declareAttribute("seq", "getseq", "seq");
		declareAttribute("index", "getindex", "index");
		declareAttribute("cmode", "getchordmode", "chordmode");
		declareAttribute("iter", "getiter", "iter");
		declareAttribute("step", "getstep", "step");
		declareIO(1, 4);
		setInletAssist(new String[] { "list / bang / commands" });
		setOutletAssist(new String[] { "value", "index", "iteration", "sequence" });
	}

	@Override
	protected Executable getInitializer() {
		return new SeqInitializer();
	}

	protected class SeqInitializer extends DefaultRubyInitializer {
		@Override
		public void execute() {
			super.execute();
			parser.setRubyEvaluator(ruby);
			// handle attributes used to construct the object
			defaultIndex = index;
			defaultIter = iter;
			defaultStep = step;
			defaultChordmode = chordmode;
			if (!seq.isEmpty()) {
				defaultSeq.addAll(seq);
			}
			outputSeq();
		}
	}

	protected enum OUTLET {
		VALUE(0), INDEX(1), ITER(2), SEQ(3), VALINDEX(4), INFO(-1);
		// VALINDEX outlet is just for the rseq subclass because Java enums
		// don't support inheritance :(

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}

	protected static int INFO_OUTLET = 4;

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

	public int getindex() {
		return this.index;
	}

	public void index(int idx) {
		index = idx;
		fixIndexBounds();
		if (!seq.isEmpty()) {
			seq.get(index).setReeval(true);
		}
		chordIndex = 0;
	}

	public int getiter() {
		return iter;
	}

	public void iter(int iter) {
		fixIndexBounds(); // otherwise we might change iter on next bang
		this.iter = iter;
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
			err("Could not evaluate: " + Utils.detokenize(list) + "\n" + e.getMessage());
		}
	}

	// Max doesn't treat lists starting with a symbol as lists (they're
	// messages) so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		try {
			List<Item> newSeq = parser.parse(msg, args);
			seq.clear();
			seq.addAll(newSeq);
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + Utils.detokenize(msg, args) + "\n" + e.getMessage());
			return;
		}
		onSeqChange();
		outputSeq();
	}

	public void text(Atom[] args) {
		if (args.length == 0) {
			System.out.println("Handle empty input");
			seq.clear();
		}
		else {
			String input = args[0].toString().trim();
			if (input.startsWith("!")) {
				String command;
				Atom[] commandArgs = null;
				int firstSpace = input.indexOf(' ');
				if (firstSpace >= 0) {
					command = input.substring(1, firstSpace);
					String[] strArgs = input.substring(firstSpace + 1).split("\\s+");
					commandArgs = new Atom[strArgs.length];
					for (int i = 0; i < commandArgs.length; i++) {
						commandArgs[i] = Atom.newAtom(strArgs[i]);
					}
				}
				else {
					command = input.substring(1);

				}

				try {
					Method method;
					if (commandArgs == null) {
						method = getClass().getMethod(command);
						method.invoke(this);
					}
					else {
						method = getClass().getMethod(command, Atom[].class);
						method.invoke(this, (Object) commandArgs);
					}
				}
				catch (Exception e) {
					throw new RuntimeException(e);
				}
				// TODO: error handling

				/*
				if ("ruby".equals(firstToken)) {
					ruby(new Atom[] { Atom.newAtom("text"), Atom.newAtom(input.substring(firstSpace)) });
					return;
				}
				else if ("rubyseq".equals(firstToken)) {
					rubyseq(new Atom[] { Atom.newAtom("text"), Atom.newAtom(input.substring(firstSpace)) });
					return;
				}*/

			}
			else try {
				List<Item> newSeq = parser.parse(input);
				seq.clear();
				seq.addAll(newSeq);
				onSeqChange();
				outputSeq();
			}
			catch (IllegalStateException e) {
				err("Could not evaluate: " + input + "\n" + e.getMessage());
				return;
			}
		}

	}

	public void rubyseq(Atom[] input) {
		Atom[] atoms = null;
		if (input.length > 0) {
			if (ruby == null) {
				err("ruby evaluator not initialized yet. If you are loadbanging a script, try using a deferlow.");
				return;
			}
			Object result = null;
			try {
				result = evalRuby(input, true);
			}
			catch (Exception e) {
				err("could not evaluate: " + input);
				return;
			}
			if (result != null) {
				if (result instanceof Atom[]) {
					atoms = (Atom[]) result;
				}
				else {
					atoms = new Atom[] { (Atom) result };
				}
			}
		}

		if (atoms == null || atoms.length == 0
				|| (atoms.length == 1 && MaxRubyAdapter.NIL.equals(atoms[0].toString()))) {
			atoms = Atom.emptyArray;
		}
		list(atoms);

	}

	public void ruby(Atom[] input) {
		if (input.length > 0) {
			if (ruby == null) {
				err("ruby evaluator not initialized yet. If you are loadbanging a script, try using a deferlow.");
				return;
			}
			try {
				evalRuby(input, false);
			}
			catch (Exception e) {
				err("could not evaluate: " + input);
				return;
			}
		}
	}

	protected Object evalRuby(Atom[] input, boolean returnResults) {
		String rubyCode;
		if (input[0].isString() && "text".equals(input[0].getString())) {
			rubyCode = input[1].getString();
		}
		else {
			rubyCode = Utils.detokenize(input);
		}
		return ruby.eval(rubyCode, returnResults);
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
		else if (!Utils.isNumber(args[0])) {
			err("Invalid call to insert. First argument (index) was not a number.");
		}
		else {
			insert(args[0].toInt(), Atom.removeFirst(args));
		}
	}

	protected void insert(int idx, Atom[] list) {
		List<Item> newSeq = parser.parse(list);

		// this is almost the fixBounds() logic, except we can insert at idx==size
		int size = seq.size();
		if (idx < -size || idx > size) {
			info("cannot insert. insert index (" + idx + ") must be >= -size and <= size (current size=" + size + ")");
			return;
		}
		if (idx < 0) {
			idx += size;
		}

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
			if (!Utils.isNumber(args[0])) {
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
		else if (!Utils.isNumber(args[0])) {
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
					if (Utils.isNumber(arg)) {
						int idx = fixBounds(arg.toInt());
						if (idx >= 0) {
							indices.add(idx);
						}
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
		int size = seq.size();
		if (idx < -size || idx >= size) {
			info("index (" + idx + ") must be >= -size and < size (current size=" + size + ")");
			return -1;
		}
		else if (idx < 0) {
			idx += size;
		}
		return idx;
	}

	protected int[] fixBounds(int left, int right) {
		left = fixBounds(left);
		right = fixBounds(right);
		if (left < 0 || right < 0) {
			return null;
		}
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		return new int[] { left, right };
	}

	@Deprecated
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

	@Deprecated
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
		if (lr == null) {
			return;
		}
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
			if (lr == null) {
				return;
			}
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
				if (seq.get(i).toAtom().equals(a)) {
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

	public void sort() {
		Collections.sort(seq);
		onSeqChange();
		outputSeq();
	}

	public void sortrange(int left, int right) {
		if (seq.size() > 0) {
			int[] lr = fixBounds(left, right);
			if (lr == null) {
				return;
			}
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
		else if (!Utils.isNumber(args[0])) {
			err("Invalid call to replace. First argument (index) was not a number: " + args[0]);
		}
		else {
			int idx = fixBounds(args[0].toInt());
			if (idx >= 0) {
				seq.remove(idx);
				insert(idx, Atom.removeFirst(args));
			}
		}
	}

	public void replacerange(Atom args[]) {
		if (args.length < 2) {
			err("Invalid call to replacerange. Expected: replace fromIndex toIndex list");
		}
		else if (!Utils.isNumber(args[0])) {
			err("Invalid call to replacerange. First argument (fromIndex) was not a number: " + args[0]);
		}
		else if (!Utils.isNumber(args[1])) {
			err("Invalid call to replacerange. Second argument (toIndex) was not a number: " + args[1]);
		}
		else {
			int[] lr = fixBounds(args[0].toInt(), args[1].toInt());
			if (lr == null) {
				return;
			}
			int left = lr[0];
			int right = lr[1];
			deleterange(left, right);
			insert(left, Atom.removeFirst(Atom.removeFirst(args)));
		}
	}

	public void swap(Atom args[]) {
		if (args.length < 2) {
			err("Invalid call to swap. Expected: swap index1 index2");
		}
		else if (!Utils.isNumber(args[0])) {
			err("Invalid call to swap. First argument (index1) was not a number: " + args[0]);
		}
		else if (!Utils.isNumber(args[1])) {
			err("Invalid call to swap. Second argument (index2) was not a number: " + args[1]);
		}
		int idx1 = fixBounds(args[0].toInt());
		int idx2 = fixBounds(args[1].toInt());
		if (idx1 >= 0 && idx2 >= 0 && idx1 != idx2) {
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
		if (lr == null) {
			return;
		}
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
		if (lr == null) {
			return;
		}
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
	@Deprecated
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

	@Deprecated
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

	@Deprecated
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

	@Deprecated
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

	public void invert(Atom[] args) {
		Atom doubleCenter;
		if (args.length >= 1) {
			Atom center = args[0];
			if (center.isString()) {
				// try parsing as a note
				center = new Token(Token.TYPE.TEXT, center.toString()).getValue();
			}

			if (center.isFloat()) {
				doubleCenter = Atom.newAtom(2.0 * center.toFloat());
			}
			else if (center.isInt()) {
				doubleCenter = Atom.newAtom(2 * center.toInt());
			}
			else {
				err("argument to invert must be a number");
				return;
			}
		}
		else {
			Number min = getMin();
			Number max = getMax();
			if (min == null || max == null) {
				return;
			}
			else if (min instanceof Float || max instanceof Float) {
				doubleCenter = Atom.newAtom(min.floatValue() + max.floatValue());
			}
			else {
				doubleCenter = Atom.newAtom(min.intValue() + max.intValue());
			}
		}
		subtractfrom(doubleCenter);
	}

	public void subtractfrom(Atom... args) {
		if (args.length == 0) {
			err("subtractFrom needs at least one argument");
			return;
		}
		for (Atom atom : args) {
			if (!atom.isFloat() && !atom.isInt()) {
				err("arguments to add must be numbers");
				return;
			}
		}
		for (int i = 0; i < seq.size(); i++) {
			seq.set(i, seq.get(i).subtractFrom(args[i % args.length]));
		}
		onSeqChange();
		outputSeq();
	}

	protected static Atom ATOM_MAX = Atom.newAtom("max");

	protected static Atom ATOM_MIN = Atom.newAtom("min");

	public void max() {
		Number max = getMax();
		if (max == null) {
			outputInfo(ATOM_MAX);
		}
		else if (max instanceof Float) {
			outputInfo(ATOM_MAX, Atom.newAtom(max.floatValue()));
		}
		else {
			outputInfo(ATOM_MAX, Atom.newAtom(max.intValue()));
		}
	}

	public Number getMax() {
		Number max = null;
		for (Item item : seq) {
			if (item.isAtomArray()) {
				for (Atom atom : item.getAtoms()) {
					max = max(atom, max);
				}
			}
			else {
				max = max(item.getAtom(), max);
			}
		}
		return max;
	}

	private Number max(Atom atom, Number n) {
		if (atom.isInt()) {
			int val = atom.toInt();
			if (n == null) {
				return val;
			}
			else if (n instanceof Float) {
				return val >= n.floatValue() ? val : n;
			}
			else {
				return val >= n.intValue() ? val : n;
			}
		}
		else if (atom.isFloat()) {
			float val = atom.toFloat();
			if (n == null) {
				return val;
			}
			else if (n instanceof Float) {
				return val >= n.floatValue() ? val : n;
			}
			else {
				return val >= n.intValue() ? val : n;
			}
		}
		else {
			return n;
		}
	}

	public void min() {
		Number min = getMin();
		if (min == null) {
			outputInfo(ATOM_MIN);
		}
		else if (min instanceof Float) {
			outputInfo(ATOM_MIN, Atom.newAtom(min.floatValue()));
		}
		else {
			outputInfo(ATOM_MIN, Atom.newAtom(min.intValue()));
		}
	}

	public Number getMin() {
		Number min = null;
		for (Item item : seq) {
			if (item.isAtomArray()) {
				for (Atom atom : item.getAtoms()) {
					min = min(atom, min);
				}
			}
			else {
				min = min(item.getAtom(), min);
			}
		}
		return min;
	}

	private Number min(Atom atom, Number n) {
		if (atom.isInt()) {
			int val = atom.toInt();
			if (n == null) {
				return val;
			}
			else if (n instanceof Float) {
				return val <= n.floatValue() ? val : n;
			}
			else {
				return val <= n.intValue() ? val : n;
			}
		}
		else if (atom.isFloat()) {
			float val = atom.toFloat();
			if (n == null) {
				return val;
			}
			else if (n instanceof Float) {
				return val <= n.floatValue() ? val : n;
			}
			else {
				return val <= n.intValue() ? val : n;
			}
		}
		else {
			return n;
		}
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
			fixIndexBounds();
			output();
			if (!arpeggiating()) {
				index(index + step);
			}
		}
	}

	protected boolean arpeggiating() {
		Item currentItem = seq.get(this.index);
		if (currentItem.isAtomArray() && chordmode == CHORDMODE.ARPEGGIATE) {
			Atom[] atoms = currentItem.getAtoms();
			if (atoms.length > 0) {
				chordIndex = (chordIndex + 1) % atoms.length;
				return chordIndex > 0;
				// if chordIndex == 0, we wrapped around and are done arpeggiating
			}
			// else this is [], the empty chord "noop", and we need to advance
		}
		return false;
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
		Object value = data.getValue();
		if (value instanceof Atom[]) {
			Atom[] atoms = (Atom[]) value;
			switch (chordmode) {
			case CHORD:
				for (Atom atom : atoms) {
					outlet(outlet.outletNumber, atom);
				}
				break;

			case ARPEGGIATE:
				if (atoms.length > 0) {
					chordIndex %= atoms.length;
					outlet(outlet.outletNumber, atoms[chordIndex]);
				}
				break;

			case LIST:
				outlet(outlet.outletNumber, atoms);
				break;

			case SYMBOL:
				outlet(outlet.outletNumber, data.toAtom());
				break;
			}
		}
		else {
			outlet(outlet.outletNumber, (Atom) value);
		}
	}

	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}

	protected void output(OUTLET outlet, Atom[] data) {
		outlet(outlet.outletNumber, data);
	}

	protected void outputInfo(Atom... data) {
		outlet(INFO_OUTLET, data);
	}

	public void reset() {
		resetiter();
		resetstep();
		resetcmode();
		resetseq();
		resetindex();
	}

	public void resetindex() {
		index(defaultIndex);
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
