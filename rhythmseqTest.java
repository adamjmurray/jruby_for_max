package ajm;

import java.io.PrintStream;

import junit.framework.TestCase;

import com.cycling74.max.Atom;

public class rhythmseqTest extends TestCase {

	private PrintStream out = System.out;

	protected class rhythmseqStub extends rhythmseq {
		public rhythmseqStub(Atom[] args) {
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

	protected rhythmseq makeSeq(int... vals) {
		rhythmseq s = new rhythmseqStub(Atom.emptyArray);
		s.set(Atom.newAtom(vals));
		return s;
	}

	protected rhythmseq emptySeq() {
		return makeSeq(new int[] {});
	}

	public void testShortenList() throws Exception {
		rhythmseq s = makeSeq(1, 1);
		s.bang();
		s.values(Atom.newAtom(new int[] { 1 }));
		s.bang();
	}
}
