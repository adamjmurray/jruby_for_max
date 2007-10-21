package ajm;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import junit.framework.TestCase;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxQelem;

public class rhythmseqTest extends TestCase {

	private boolean DEBUG = false;

	private PrintStream out = System.out;

	protected class rhythmseqStub extends rhythmseq {
		public rhythmseqStub(Atom[] args) {
			super(args);
			if (DEBUG) {
				setDebugOut(out);
			}
		}

		// Sending to outlet will not work inside jUnit tests:
		@Override
		protected void output(OUTLET outlet, Atom data) {
			if (outlet == OUTLET.CURRENT_VAL) {
				valOuts.add(data.getInt());
				if (DEBUG) {
					out.println(outlet + ": " + data.getInt());
				}
			}
			outputs.put(outlet, data.getInt());
		}

		@Override
		protected void output(OUTLET outlet, Atom[] data) {}

		@Override
		protected void output(OUTLET outlet, int data) {
			outputs.put(outlet, data);
			if (DEBUG) {
				out.println(outlet + ": " + data);
			}
		}

		@Override
		protected MaxQelem getInitializer() {
			return null;
		}

		private Map<OUTLET, Integer> outputs = new HashMap<OUTLET, Integer>();

		private List<Integer> valOuts = new ArrayList<Integer>();

		public int[] getValueOutputs() {
			int[] vo = new int[valOuts.size()];
			for (int i = 0; i < valOuts.size(); i++) {
				vo[i] = valOuts.get(i);
			}
			return vo;
		}

		public Integer valueSinceBang() {
			return outputs.get(OUTLET.CURRENT_VAL);
		}

		public Integer indexSinceBang() {
			return outputs.get(OUTLET.INDEX);
		}

		public Integer iterationSinceBang() {
			return outputs.get(OUTLET.ITERATION);
		}

		public Integer tickSinceBang() {
			return outputs.get(OUTLET.TICK);
		}

		@Override
		public void bang() {
			outputs.clear();
			super.bang();
		}

		protected void set(int... vals) {
			set(Atom.newAtom(vals));
		}
	}

	protected rhythmseqStub makeSeq(int... vals) {
		rhythmseqStub s = new rhythmseqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected rhythmseq emptySeq() {
		return makeSeq(new int[] {});
	}

	protected void assertEquals(int i1, Integer i2) {
		if (i2 == null) {
			super.assertEquals(i1, null);
		}
		else {
			super.assertEquals(i1, i2.intValue());
		}
	}

	protected void assertEquals(int[] actualIntArray, int... expectedInts) {
		assertTrue(Arrays.equals(expectedInts, actualIntArray));
	}


	public void testShortenList() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testShortenList ***");
		}
		rhythmseq s = makeSeq(1, 1);
		s.bang();
		s.values(Atom.newAtom(new int[] { 1 }));
		s.bang();
		if (DEBUG) {
			out.println("*** END testShortenList ***\n");
		}
	}

	public void testSequence() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testSequence ***");
		}
		rhythmseqStub s = makeSeq(1, 2, 3);
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(3, s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());

		assertEquals(s.getValueOutputs(), 1, 2, 3, 1);
		if (DEBUG) {
			out.println("*** END testSequence ***\n");
		}
	}

	public void testSetIndex() {

		if (DEBUG) {
			out.println("\n*** START testSetIndexToZero ***");
		}
		rhythmseqStub s = makeSeq(1, 0, 1);
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(0, s.indexSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(2, s.indexSinceBang());
		s.index(1);
		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(2, s.indexSinceBang());
		assertEquals(s.getValueOutputs(), 1, 0, 1, 0, 1);
		if (DEBUG) {
			out.println("*** END testSetIndexToZero ***\n");
		}
	}

	public void testSetIndexToZero() {
		if (DEBUG) {
			out.println("\n*** START testSetIndex ***");
		}
		rhythmseqStub s = makeSeq(1, 2, 3);
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.index(0);
		s.bang();
		assertEquals(1, s.valueSinceBang());
		s.bang();
		assertEquals(2, s.valueSinceBang());

		assertEquals(s.getValueOutputs(), 1, 2, 1, 2);
		if (DEBUG) {
			out.println("*** END testSetIndex ***\n");
		}
	}

	public void testTickBasic() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testTickBasic ***");
		}
		rhythmseqStub s = makeSeq(1, 2, 3);
		assertNull(s.tickSinceBang());
		s.bang();
		assertEquals(0, s.tickSinceBang());
		s.bang();
		assertEquals(1, s.tickSinceBang());
		s.bang();
		assertEquals(2, s.tickSinceBang());
		s.bang();
		assertEquals(3, s.tickSinceBang());
		s.bang();
		assertEquals(4, s.tickSinceBang());
		s.bang();
		assertEquals(5, s.tickSinceBang());
		s.bang();
		assertEquals(0, s.tickSinceBang());
		if (DEBUG) {
			out.println("*** END testTickBasic ***\n");
		}
	}

	public void testNegativeValue() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testNegativeValue ***");
		}
		rhythmseqStub s = makeSeq(1, -2, 3);
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		s.bang();
		assertEquals(-2, s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(3, s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());

		assertEquals(s.getValueOutputs(), 1, -2, 3, 1);
		if (DEBUG) {
			out.println("*** END testNegativeValue ***\n");
		}
	}


	public void testZeroValue() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testZeroValue ***");
		}
		rhythmseqStub s = makeSeq(1, 0);
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(s.getValueOutputs(), new int[] { 1 });

		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(s.getValueOutputs(), 1, 0, 1);

		s.bang();
		assertEquals(1, s.valueSinceBang());
		assertEquals(s.getValueOutputs(), 1, 0, 1, 0, 1);


		if (DEBUG) {
			out.println("*** END testZeroValue ***\n");
		}
	}


	public void testInterleavedZero() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testInterleavedZero ***");
		}
		rhythmseqStub s = makeSeq(2, 0, 2, 0);

		// out.println("***");
		s.bang();
		assertEquals(2, s.valueSinceBang());
		// out.println("***");

		s.bang();
		assertEquals(null, s.valueSinceBang());
		// out.println("***");

		s.bang();
		assertEquals(2, s.valueSinceBang());
		// out.println("***");

		s.bang();
		assertEquals(null, s.valueSinceBang());

		s.bang();
		assertEquals(2, s.valueSinceBang());

		assertEquals(s.getValueOutputs(), 2, 0, 2, 0, 2);
		if (DEBUG) {
			out.println("*** END testInterleavedZero ***\n");
		}
	}

	public void testPreventInfiniteLoop() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testPreventInfiniteLoop ***");
		}
		rhythmseqStub s = makeSeq(0, 0, 0); // should turn into 1, 0, 0
		assertNull(s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());
		s.bang();
		assertEquals(1, s.valueSinceBang());

		assertEquals(s.getValueOutputs(), 1, 0, 0, 1);
		if (DEBUG) {
			out.println("*** END testPreventInfiniteLoop ***\n");
		}
	}

	public void testRhythmlen() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testRhythmlen ***");
		}
		// TODO: test with symbols in the list

		rhythmseqStub s = makeSeq(1, 2, 3);
		s.rhythmlen(7);
		assertEquals(makeSeq(1, 2, 4), s);
		s.rhythmlen(4);
		assertEquals(makeSeq(1, 2, 1), s);
		s.rhythmlen(3);
		assertEquals(makeSeq(1, 2), s);
		s.rhythmlen(2);
		assertEquals(makeSeq(1, 1), s);
		s.rhythmlen(4);
		assertEquals(makeSeq(1, 3), s);
		s.rhythmlen(1);
		assertEquals(makeSeq(1), s);
		s.rhythmlen(4);
		assertEquals(makeSeq(4), s);
		s.rhythmlen(0);
		assertEquals(emptySeq(), s);
		if (DEBUG) {
			out.println("*** END testRhythmlen ***\n");
		}
	}

	public void testMaintainTickWhenListChangesSimple() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testMaintainTickWhenListChangesSimple ***");
		}
		rhythmseqStub s = makeSeq(2, 2, 1);
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.bang();
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.set(1, 1, 2, 1);
		s.bang();
		s.bang();
		assertEquals(1, s.valueSinceBang());
		if (DEBUG) {
			out.println("*** END testMaintainTickWhenListChangesSimple ***\n");
		}
	}

	public void testMaintainTickWhenListChangesComplex() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testMaintainTickWhenListChangesComplex ***");
		}
		rhythmseqStub s = makeSeq(3, 2, 1);
		s.bang();
		assertEquals(3, s.valueSinceBang());
		s.bang();
		s.bang();
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.set(1, 1, 2, 2);
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.bang();
		s.bang();
		assertEquals(1, s.valueSinceBang());

		if (DEBUG) {
			out.println("*** END testMaintainTickWhenListChangesComplex ***\n");
		}
	}

	public void testMaintainTickWhenListChangesComplex2() throws Exception {
		if (DEBUG) {
			out.println("\n*** START testMaintainTickWhenListChangesComplex2 ***");
		}
		// try again, but switch the seq in a different spot
		rhythmseqStub s = makeSeq(3, 2, 1);
		s.bang();
		assertEquals(3, s.valueSinceBang());
		s.bang();
		s.bang();
		s.bang();
		assertEquals(2, s.valueSinceBang());
		s.bang();
		s.set(1, 1, 2, 2);
		s.bang();
		s.bang();
		assertEquals(1, s.valueSinceBang());

		if (DEBUG) {
			out.println("*** END testMaintainTickWhenListChangesComplex2 ***\n");
		}
	}
}
