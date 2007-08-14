package ajm;

import junit.framework.TestCase;

import com.cycling74.max.Atom;

public class intseqTest extends TestCase {

	protected class intseqStub extends intseq {
		public intseqStub(Atom[] args) {
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

	protected intseq makeSeq(String... vals) {
		intseq s = new intseqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected intseq makeSeq(int... vals) {
		intseq s = new intseqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected intseq makeSeq() {
		return makeSeq(1, 2, 3, 4, 5);
	}

	protected Atom[] ints(int... vals) {
		return Atom.newAtom(vals);
	}

	public void testSymbolList() {
		intseq s = makeSeq("A", "B", "C");
		assertEquals(makeSeq(0, 0, 0), s);
		s.append(ints(1, 2, 3));
		assertEquals(makeSeq(0, 0, 0, 1, 2, 3), s);

		s.clear();
		s.set(new Atom[] { Atom.newAtom("A"), Atom.newAtom(1), Atom.newAtom("C") });
		assertEquals(makeSeq(0, 1, 0), s);
	}

}
