package ajm;

import java.io.PrintStream;
import java.util.List;

import junit.framework.TestCase;
import ajm.seqparser.Parser;
import ajm.seqparser.Parser.Node;

import com.cycling74.max.Atom;

public class seqparserTest extends TestCase {

	private PrintStream out = System.out;

	protected class parserStub extends seqparser {

		@Override
		protected void output(List<String> data) {
			lastOutput = data;
		}

		private List<String> lastOutput = null;

		public List<String> getLastOutput() {
			return lastOutput;
		}
	}

	protected Parser parse(String... vals) {
		return new Parser(Atom.newAtom(vals));
	}


	public void testSimpleList() {
		Parser p = parse("1", "2", "3");
		Node root = p.getRoot();
		assertEquals(1, root.getChildren().size());
		assertEquals(3, root.getChildren().get(0).getChildren().size());
		assertEquals("SECTION<1,2,3>", root.toString());

		List<String> output = p.evaluate();
		assertEquals(1, output.size());
		assertEquals("1 2 3", output.get(0));
	}


	public void testMultipleSections() {
		Parser p = parse("1", "2", "3", ">", "4", "5");
		Node root = p.getRoot();
		assertEquals(2, root.getChildren().size());
		assertEquals(3, root.getChildren().get(0).getChildren().size());
		assertEquals(2, root.getChildren().get(1).getChildren().size());
		assertEquals("SECTION<1,2,3>,SECTION<4,5>", root.toString());

		List<String> output = p.evaluate();
		assertEquals(2, output.size());
		assertEquals("1 2 3", output.get(0));
		assertEquals("4 5", output.get(1));
	}


	public void testSimpleRepeat() {
		Parser p = parse("(", "1", "2", "3", ")", "*", "5");
		Node root = p.getRoot();
		assertEquals(1, root.getChildren().size());
		assertEquals(1, root.getChildren().get(0).getChildren().size());
		assertEquals(3, root.getChildren().get(0).getChildren().get(0).getChildren().size());
		assertEquals("SECTION<REPEAT(1,2,3)*5>", root.toString());

		List<String> output = p.evaluate();
		assertEquals(1, output.size());
		assertEquals("1 2 3 1 2 3 1 2 3 1 2 3 1 2 3", output.get(0));
		// todo: check the output for the rest of these tests
	}


	public void testDegenerateRepeat() {
		Parser p = parse("(", "1", "2", "3", ")");
		Node root = p.getRoot();
		assertEquals(1, root.getChildren().size());
		assertEquals(1, root.getChildren().get(0).getChildren().size());
		assertEquals(3, root.getChildren().get(0).getChildren().get(0).getChildren().size());
		assertEquals("SECTION<REPEAT(1,2,3)*1>", root.toString());
	}


	public void testNestedRepeat() {
		Parser p = parse("(", "1", "(", "2", "3", ")", "*", "3", ")", "*", "2");
		Node root = p.getRoot();
		assertEquals(1, root.getChildren().size());
		assertEquals(1, root.getChildren().get(0).getChildren().size());
		assertEquals(2, root.getChildren().get(0).getChildren().get(0).getChildren().size());
		assertNull(root.getChildren().get(0).getChildren().get(0).getChildren().get(0).getChildren());
		assertEquals(2, root.getChildren().get(0).getChildren().get(0).getChildren().get(1).getChildren().size());
		assertEquals("SECTION<REPEAT(1,REPEAT(2,3)*3)*2>", root.toString());
	}


	public void testMultipleSectionsWithRepeats() {
		Parser p = parse("1", "(", "2", "3", ")", "*", "3", ">", "4", "5");
		Node root = p.getRoot();
		assertEquals(2, root.getChildren().size());
		assertEquals(2, root.getChildren().get(0).getChildren().size());
		assertEquals(2, root.getChildren().get(1).getChildren().size());
		assertEquals("SECTION<1,REPEAT(2,3)*3>,SECTION<4,5>", root.toString());
	}

	public void testMixedTokens() {
		Parser p = parse("(", "1", "2", "3", ")*", "2");
		Node root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());

		p = parse("(1", "2", "3", ")", "*", "2");
		root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());

		p = parse("(", "1", "2", "3", ")", "*2");
		root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());

		p = parse("(", "1", "2", "3", ")*2");
		root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());

		p = parse("(1", "2", "3", ")*2");
		root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());

		p = parse("(1", "2", "3)*2");
		root = p.getRoot();
		assertEquals("SECTION<REPEAT(1,2,3)*2>", root.toString());
	}

	public void testQuotedSymbols() {
		Parser p = parse("1 2", "3 4");
		Node root = p.getRoot();

		assertEquals(1, root.getChildren().size());
		assertEquals(2, root.getChildren().get(0).getChildren().size());
		assertEquals("SECTION<\"1 2\",\"3 4\">", root.toString());
	}

	public void testBracketedSymbols() {
		Parser p = parse("1", "[2", "3]");
		Node root = p.getRoot();

		assertEquals(1, root.getChildren().size());
		assertEquals(2, root.getChildren().get(0).getChildren().size());
		assertEquals("SECTION<1,\"2 3\">", root.toString());
	}

	public void testDegenerateBrackets() {
		Parser p = parse("[1]");
		Node root = p.getRoot();

		assertEquals(1, root.getChildren().size());
		assertEquals(1, root.getChildren().get(0).getChildren().size());
		assertEquals("SECTION<1>", root.toString());
	}

	public void testNoNextSectionInRepeat() {
		try {
			parse("(", ">", ")");
			fail("Invalid syntax parsed successfully");
		}
		catch (IllegalStateException e) {
			// should make it here
		}
	}
}
