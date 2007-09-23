package ajm;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

import junit.framework.TestCase;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxQelem;

public class seqTest extends TestCase {

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

		public Map<OUTLET, Object> outputData = new HashMap<OUTLET, Object>();

		public String getLastStringValue() {
			return ((Atom) outputData.get(OUTLET.CURRENT_VAL)).toString();
		}

		protected MaxQelem getOutputValuesOnInit() {
			return null;
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
		s.delete(-1);
		assertEquals(makeSeq("B", "C", "D", "E"), s);
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
		seqStub s = emptySeq();
		s.index(2);
		// assertEquals(2, s.getindex());
		s.values(Atom.newAtom(new String[] { "A", "B", "C" }));
		// assertEquals(2, s.getindex());
		s.bang();
		assertEquals("C", s.getLastStringValue());
	}

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

	public void testDeleteCurrent() {
		seq s = makeSeq();
		s.index = 2;
		s.deletecurrent();
		assertEquals(makeSeq("A", "B", "D", "E"), s);

		s = emptySeq();
		s.deletecurrent();
	}

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

	public void testInsertNumberAndMaintainIndex() {
	// what is the correct behavior in different situations?
	// setting a new list vs

	}

}
