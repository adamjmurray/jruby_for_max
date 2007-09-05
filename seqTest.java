package ajm;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

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

		public Map<OUTLET, Object> outputData = new HashMap<OUTLET, Object>();

		public String getLastStringValue() {
			return ((Atom) outputData.get(OUTLET.CURRENT_VAL)).toString();
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

	public String[] DEFAULT_VALS = new String[] { "A", "B", "C", "D", "E" };

	protected seqStub makeSeq() {
		return makeSeq(DEFAULT_VALS);
	}


	protected seqStub emptySeq() {
		return makeSeq(new String[] {});
	}

	public void testBasicIteration() {
		seqStub s = makeSeq();
		for (String val : DEFAULT_VALS) {
			s.bang();
			assertEquals(val, s.getLastStringValue());
		}
		s.bang();
		assertEquals(DEFAULT_VALS[0], s.getLastStringValue());
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

	// It was possible to get an IndexOutOfBoundsException
	public void testShortenList() throws Exception {
		seq s = makeSeq(1, 2);
		s.increment = 0;
		s.next();
		s.values(Atom.newAtom(new int[] { 1 }));
		s.output();
	}

	public void testAttributeOrder() throws Exception {
		seq s = emptySeq();
		s.index(2);
		assertEquals(2, s.getindex());
		s.values(Atom.newAtom(new int[] { 1, 2, 3 }));
		assertEquals(2, s.getindex());
	}
}
