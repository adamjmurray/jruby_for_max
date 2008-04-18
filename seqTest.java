package ajm;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

import org.junit.Test;

import ajm.seqsupport.Item;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxQelem;

public class seqTest {

	private boolean DEBUG = false;
	private PrintStream out = System.out;

	protected class seqStub extends seq {
		public seqStub(Atom[] args) {
			super(args);
			if (DEBUG) {
				setDebugOut(out);
			}
		}

		// Sending outlet will not work inside jUnit tests:
		@Override
		protected void output(OUTLET outlet, Atom data) {
			outputData.put(outlet, data);
		}

		@Override
		protected void output(OUTLET outlet, Atom[] data) {
			outputData.put(outlet, data);
		}

		@Override
		protected void output(OUTLET outlet, int data) {
			outputData.put(outlet, data);
		}

		@Override
		protected void output(OUTLET outlet, Item data) {
			outputData.put(outlet, data);
		}

		public Map<OUTLET, Object> outputData = new HashMap<OUTLET, Object>();

		public String getLastStringValue() {
			return outputData.get(OUTLET.VALUE).toString();
		}

		@Override
		protected MaxQelem getInitializer() {
			return null;
		}

		public void add(int n) {
			add(new int[] { n });
		}

		public void add(float n) {
			add(new float[] { n });
		}

		public void add(int n, int l, int r) {
			add(new int[] { n, l, r });
		}

		private void add(int... n) {
			super.add(Atom.newAtom(n));
		}

		private void add(float... n) {
			super.add(Atom.newAtom(n));
		}

		public void multiply(int n) {
			multiply(new int[] { n });
		}

		public void multiply(float n) {
			multiply(new float[] { n });
		}

		public void multiply(int n, int l, int r) {
			multiply(new int[] { n, l, r });
		}

		private void multiply(int... n) {
			super.multiply(Atom.newAtom(n));
		}

		private void multiply(float... n) {
			super.multiply(Atom.newAtom(n));
		}

		public void delete(int... idx) {
			super.delete(Atom.newAtom(idx));
		}
	}

	protected seqStub makeSeq(String... vals) {
		seqStub s = new seqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected seqStub makeSeq(int... vals) {
		seqStub s = new seqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected seqStub makeFloatSeq(float... vals) {
		seqStub s = new seqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	public String[] DEFAULT_VALS = new String[] { "A", "B", "C", "D", "E" };

	protected seqStub makeSeq() {
		return makeSeq(DEFAULT_VALS);
	}

	protected seqStub emptySeq() {
		return makeSeq(new String[] {});
	}

	@Test
	public void testBasicIteration() {
		seqStub s = makeSeq();
		for (String val : DEFAULT_VALS) {
			s.bang();
			assertEquals(val, s.getLastStringValue());
		}
		s.bang();
		assertEquals(DEFAULT_VALS[0], s.getLastStringValue());
	}

	@Test
	public void testReverse() throws Exception {
		seq s = makeSeq();
		s.reverse();
		assertEquals(makeSeq("E", "D", "C", "B", "A"), s);
	}

	@Test
	public void testReverseRange() throws Exception {
		seq s = makeSeq();
		s.reverserange(1, 3);
		assertEquals(makeSeq("A", "D", "C", "B", "E"), s);
		s.reverserange(4, 3);
		assertEquals(makeSeq("A", "D", "C", "E", "B"), s);
	}

	@Test
	public void testDelete() throws Exception {
		seqStub s = makeSeq();
		s.delete(0);
		assertEquals(makeSeq("B", "C", "D", "E"), s);
		s.delete(-1);
		assertEquals(makeSeq("B", "C", "D"), s);
		s.delete(5);
		assertEquals(makeSeq("B", "C", "D", "E"), s);
		s.delete(new int[] { 1, 3 });
		assertEquals(makeSeq("B", "D"), s);
		s.delete(new int[] { 0, 1, 2, -1 });
		assertEquals(emptySeq(), s);
		s.delete(0);
		s.delete(new int[] { 1, 2, 3 });
		assertEquals(emptySeq(), s);
	}

	@Test
	public void testDeleteRange() throws Exception {
		seq s = makeSeq();
		s.deleterange(1, 3);
		assertEquals(makeSeq("A", "E"), s);

		s = makeSeq();
		s.deleterange(3, 1);
		assertEquals(makeSeq("A", "E"), s);

		s = makeSeq();
		s.deleterange(10, 1);
		assertEquals(makeSeq("A"), s);

		s = makeSeq();
		s.deleterange(-1, 3);
		assertEquals(makeSeq("E"), s);

		s = makeSeq();
		s.deleterange(-1, -5);
		assertEquals(makeSeq(), s);

		s = makeSeq();
		s.deleterange(10, -5);
		assertEquals(emptySeq(), s);

		s = emptySeq();
		s.deleterange(0, 1);
		assertEquals(emptySeq(), s);
	}

	@Test
	public void testSort() throws Exception {
		seq s = makeSeq();
		s.reverse();
		s.sort();
		assertEquals(makeSeq(), s);
	}

	@Test
	public void testShortenList() throws Exception {
		// This test is here because it was possible to get an IndexOutOfBoundsException
		seq s = makeSeq(1, 2);
		s.step = 0;
		s.next();
		s.seq(Atom.newAtom(new int[] { 1 }));
		s.output();
	}

	@Test
	public void testAttributeOrder() throws Exception {
		seqStub s = emptySeq();
		s.index(2);
		// assertEquals(2, s.getindex());
		s.seq(Atom.newAtom(new String[] { "A", "B", "C" }));
		// assertEquals(2, s.getindex());
		s.bang();
		assertEquals("C", s.getLastStringValue());
	}

	@Test
	public void testRotate() throws Exception {
		seq s = makeSeq();
		s.rotate(1);
		assertEquals(makeSeq("B", "C", "D", "E", "A"), s);
		s.rotate(2);
		assertEquals(makeSeq("D", "E", "A", "B", "C"), s);
		s.rotate(5);
		assertEquals(makeSeq("D", "E", "A", "B", "C"), s);
		s.rotate(6);
		assertEquals(makeSeq("E", "A", "B", "C", "D"), s);
		s.rotate(4);
		assertEquals(makeSeq("D", "E", "A", "B", "C"), s);
		s.rotate(1);
		s.rotate(-1);
		assertEquals(makeSeq("D", "E", "A", "B", "C"), s);
		s.rotate(-5);
		assertEquals(makeSeq("D", "E", "A", "B", "C"), s);
		s.rotate(-7);
		assertEquals(makeSeq("B", "C", "D", "E", "A"), s);

		s = emptySeq();
		s.rotate(1);
		assertEquals(emptySeq(), s);
	}

	/*
	 * public void testDeleteCurrent() { seq s = makeSeq(); s.index = 2; s.deletecurrent(); assertEquals(makeSeq("A",
	 * "B", "D", "E"), s);
	 * 
	 * s = emptySeq(); s.deletecurrent(); }
	 */

	@Test
	public void testSetIndex() {
		seqStub s = makeSeq();
		s.bang();
		assertEquals("A", s.getLastStringValue());
		s.index(0);
		s.bang();
		assertEquals("A", s.getLastStringValue());
		s.bang();
		assertEquals("B", s.getLastStringValue());
		s.index(0);
		s.index(4);
		s.bang();
		assertEquals("E", s.getLastStringValue());
		s.bang();
		assertEquals("A", s.getLastStringValue());
		s.index(5);
		s.bang();
		assertEquals("A", s.getLastStringValue());
		s.index(-1);
		s.bang();
		assertEquals("E", s.getLastStringValue());
	}

	@Test
	public void testAdd() {
		seqStub s = makeSeq(1, 2, 3);
		s.add(2);
		assertEquals(makeSeq(3, 4, 5), s);
		s.add(0);
		assertEquals(makeSeq(3, 4, 5), s);
		s.add(-4);
		assertEquals(makeSeq(-1, 0, 1), s);

		s.add(2, 1, 2);
		assertEquals(makeSeq(-1, 2, 3), s);
		s.add(2, 1, 1);
		assertEquals(makeSeq(-1, 4, 3), s);

		s.add(2.5f);
		assertEquals(makeFloatSeq(-1 + 2.5f, 4 + 2.5f, 3 + 2.5f), s);

		s.set(new Atom[] { Atom.newAtom(1), Atom.newAtom("a"), Atom.newAtom(2.5), Atom.newAtom("b") });
		s.add(2);
		assertEquals(Atom.newAtom(3), s.seq.get(0));
		assertEquals(Atom.newAtom("a"), s.seq.get(1));
		assertEquals(Atom.newAtom(2.5 + 2), s.seq.get(2));
		assertEquals(Atom.newAtom("b"), s.seq.get(3));
	}

	@Test
	public void testMultiply() {
		seqStub s = makeSeq(1, 2, 3);
		s.multiply(2);
		assertEquals(makeSeq(2, 4, 6), s);
		s.multiply(1);
		assertEquals(makeSeq(2, 4, 6), s);
		s.multiply(-1);
		assertEquals(makeSeq(-2, -4, -6), s);

		s.multiply(2, 1, 2);
		assertEquals(makeSeq(-2, -8, -12), s);
		s.multiply(0, 1, 1);
		assertEquals(makeSeq(-2, 0, -12), s);

		s.multiply(2.5f);
		assertEquals(makeFloatSeq(-2 * 2.5f, 0, -12 * 2.5f), s);

		s.set(new Atom[] { Atom.newAtom(1), Atom.newAtom("a"), Atom.newAtom(2.5), Atom.newAtom("b") });
		s.multiply(2);
		assertEquals(Atom.newAtom(2), s.seq.get(0));
		assertEquals(Atom.newAtom("a"), s.seq.get(1));
		assertEquals(Atom.newAtom(2.5 * 2), s.seq.get(2));
		assertEquals(Atom.newAtom("b"), s.seq.get(3));
	}

	/*
	 * public void testInsertNumberAndMaintainIndex() { // TODO! // what is the correct behavior in different
	 * situations? }
	 */
}
