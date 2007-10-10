package ajm;

import java.io.PrintStream;

import junit.framework.TestCase;
import ajm.seqparser.Parser;

public class seqparserTest extends TestCase {

	private PrintStream out = System.out;

	protected class parserStub extends seqparser {

		@Override
		protected void output(String data) {
			lastOutput = data;
		}

		private String lastOutput = null;

		public String getLastOutput() {
			return lastOutput;
		}
	}

	protected String parse(String input) {
		return new Parser(input).parse();
	}

	public void testDegenerateCase() {
		assertEquals("1 2 3", parse("1 2 3"));
	}

	public void testDegenerateRepeat() {
		assertEquals("1 2 3", parse("(1 2 3)"));
	}

	public void testSimpleRepeats() {
		assertEquals("1 2 3 1 2 3", parse("(1 2 3)*2"));
		assertEquals("1 1", parse("1*2"));
		assertEquals("\"1 2 3\" \"1 2 3\"", parse("[1 2 3]*2"));
	}

	public void testMultipleRepeats() {
		assertEquals("1 2 3 1 2 3 1 1 \"1 2 3\" \"1 2 3\"", parse("(1 2 3)*2 1*2 [1 2 3]*2"));
	}

	public void testNonRepeats() {
		assertEquals("", parse("(1 2 3)*0"));
		assertEquals("", parse("1*0"));
		assertEquals("", parse("[1 2 3]*0"));
	}

	public void testNestedRepeat() {
		assertEquals("1 2 3 2 3 2 3 1 2 3 2 3 2 3", parse("(1 (2 3)*3)*2"));
		assertEquals("1 2 2 3 2 2 3 1 2 2 3 2 2 3", parse("(1 (2*2 3)*2)*2"));
		assertEquals("1 \"2 3\" \"2 3\" 1 \"2 3\" \"2 3\"", parse("(1 [2 3]*2)*2"));
		assertEquals("1 \"2 3\" \"2 3\" 1 \"2 3\" \"2 3\"", parse("(1 ([2 3])*2)*2"));
		assertEquals("1 \"2 2 3\" \"2 2 3\" 1 \"2 2 3\" \"2 2 3\"", parse("(1 ([2*2 3])*2)*2"));
	}

	public void testNote() {
		assertEquals("0", parse("C-1"));
		assertEquals("12", parse("C0"));
		assertEquals("24", parse("C1"));
		assertEquals("60", parse("C4"));
		assertEquals("62", parse("D4"));
		assertEquals("64", parse("E4"));
		assertEquals("65", parse("F4"));
		assertEquals("67", parse("G4"));
		assertEquals("69", parse("A4"));
		assertEquals("71", parse("B4"));
		assertEquals("60", parse("c4"));
		assertEquals("62", parse("d4"));
		assertEquals("64", parse("e4"));
		assertEquals("65", parse("f4"));
		assertEquals("67", parse("g4"));
		assertEquals("69", parse("a4"));
		assertEquals("71", parse("b4"));
	}

	public void testNoteAccidental() {
		assertEquals("61", parse("C#4"));
		assertEquals("61", parse("Db4"));
		assertEquals("62", parse("C##4"));
		assertEquals("60", parse("Dbb4"));
		assertEquals("65", parse("e#4"));
		assertEquals("64", parse("fb4"));
		assertEquals("66", parse("e##4"));
		assertEquals("63", parse("fbb4"));
	}

	public void testNoteSequence() {
		assertEquals("60 64 67 72", parse("C4 e4 G4 b#4"));
		assertEquals("60 67 64 72", parse("C4 G4 e4 b#4"));
	}

	public void testNoteChords() {
		assertEquals("\"60 64 67 72\"", parse("[C4 e4 G4 b#4]"));
		assertEquals("60 \"64 67\" 72", parse("C4 [e4 G4] b#4"));
	}

	public void testNoteRepeat() {
		assertEquals("60 64 67 72 60 64 67 72", parse("(C4 e4 G4 b#4)*2"));
		assertEquals("60 64 67 64 67 72", parse("C4 (e4 G4)*2 b#4"));
		assertEquals("60 64 67 67 72", parse("C4 e4 G4*2 b#4"));
	}

	public void testNoNestedChords() {
		try {
			parse("[1 [2 3]]");
			fail("Invalid syntax parsed successfully");
		}
		catch (IllegalStateException e) {
			// should make it here
		}
	}
}
