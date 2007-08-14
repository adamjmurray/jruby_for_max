package ajm;

import java.io.PrintStream;

import junit.framework.TestCase;

import com.cycling74.max.Atom;

public class seqTest extends TestCase {

	private PrintStream out = System.out;

	protected class seqStub extends seq {
		public seqStub(Atom[] args) {
			super(args);
		}

		// Sending outlet will not work inside jUnit tests:
		@Override
		protected void output(OUTLET outlet, Atom data) {}

		@Override
		protected void output(OUTLET outlet, Atom[] data) {}

		@Override
		protected void output(OUTLET outlet, int data) {}
	}


	protected seq makeSeq(String... vals) {
		seq s = new seqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}


	protected seq makeSeq() {
		return makeSeq("A", "B", "C", "D", "E");
	}


	protected seq emptySeq() {
		return makeSeq(new String[] {});
	}


	public void testReverse() throws Exception {
		seq s = makeSeq();
		s.reverse();
		assertEquals(makeSeq("E", "D", "C", "B", "A"), s);
	}


	public void testReverseRange() throws Exception {
		seq s = makeSeq();
		s.revrange(1, 3);
		assertEquals(makeSeq("A", "D", "C", "B", "E"), s);
		s.revrange(4, 3);
		assertEquals(makeSeq("A", "D", "C", "E", "B"), s);
	}


	public void testDelete() throws Exception {
		seq s = makeSeq();
		s.delete(0);
		assertEquals(makeSeq("B", "C", "D", "E"), s);
		s.delete(new int[] { 1, 2 });
		assertEquals(makeSeq("B", "E"), s);
	}


	public void testDelrange() throws Exception {
		seq s = makeSeq();
		s.delrange(1, 3);
		assertEquals(makeSeq("A", "E"), s);

		s = makeSeq();
		s.delrange(3, 1);
		assertEquals(makeSeq("A", "E"), s);

		s = makeSeq();
		s.delrange(10, 1);
		assertEquals(makeSeq("A"), s);

		s = makeSeq();
		s.delrange(-1, 3);
		assertEquals(makeSeq("E"), s);

		s = makeSeq();
		s.delrange(-1, -5);
		assertEquals(makeSeq(), s);

		s = makeSeq();
		s.delrange(10, -5);
		assertEquals(emptySeq(), s);
	}


	public void testSort() throws Exception {
		seq s = makeSeq();
		s.reverse();
		s.sort();
		assertEquals(makeSeq(), s);
	}
}
