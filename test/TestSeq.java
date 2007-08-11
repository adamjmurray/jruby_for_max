package ajm.test;

import junit.framework.TestCase;
import ajm.seq;

import com.cycling74.max.Atom;

public class TestSeq extends TestCase {

	protected class SeqStub extends seq {
		public SeqStub(Atom[] args) {
			super(args);
		}

		// Sending outlet will not work inside jUnit tests:
		@Override
		protected void output(OUTLET outlet, Atom data) {
		}

		@Override
		protected void output(OUTLET outlet, Atom[] data) {
		}

		@Override
		protected void output(OUTLET outlet, int data) {
		}
	}

	protected seq makeSeq(String... vals) {
		SeqStub s = new SeqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected seq makeSeq() {
		return makeSeq("A", "B", "C", "D", "E");
	}

	public void testReverse() throws Exception {
		seq s = makeSeq();
		s.reverse();
		assertEquals(makeSeq("E", "D", "C", "B", "A"), s);
	}

	public void testReverseRange() throws Exception {
		seq s = makeSeq();
		s.reverse(1, 3);
		assertEquals(makeSeq("A", "D", "C", "B", "E"), s);
		s.reverse(4, 3);
		assertEquals(makeSeq("A", "D", "C", "E", "B"), s);
	}
}
