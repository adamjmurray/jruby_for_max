package ajm.seqsupport;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

import org.junit.Test;

import ajm.rubysupport.MaxRubyAdapter;
import ajm.util.DummyMaxObject;

import com.cycling74.max.Atom;

public class ParserTest {

	static PrintStream out = System.out;

	static MaxRubyAdapter ruby = new MaxRubyAdapter(new DummyMaxObject(), null, null, null);

	static Parser p = new Parser();

	static {
		p.setRubyEvaluator(ruby);
		p.setDebugOut(out);
	}

	private List<Atom> toAtomList(Object... objs) {
		List<Atom> list = new ArrayList<Atom>();
		if (objs != null) {
			for (Object o : objs) {
				if (o instanceof String) {
					list.add(Atom.newAtom((String) o));
				}
				else if (o instanceof Integer) {
					list.add(Atom.newAtom((Integer) o));
				}
				else if (o instanceof Float) {
					list.add(Atom.newAtom((Float) o));
				}
				else if (o instanceof Double) {
					list.add(Atom.newAtom((Double) o));
				}
				else {
					throw new IllegalArgumentException("Objects must be String, Integer, or Float/Double");
				}
			}
		}
		return list;
	}

	/*
	private Atom[] toAtomArray(Object... objs) {
		return toAtomList(objs).toArray(new Atom[] {});
	}

	private Item toItem(Object... objs) {
		return new Item(toAtomArray(objs));
	}
	*/
	private List<Atom> toAtomList(List<Item> items) {
		List<Atom> atoms = new ArrayList<Atom>(items.size());
		for (Item item : items) {
			atoms.add(item.getAtom());
		}
		return atoms;
	}

	/*------------------------------------------------
	 *  The Tests
	 *------------------------------------------------*/

	@Test
	public void testEmpty() {
		List<Atom> eval = toAtomList(p.parse(""));
		assertEquals(eval.size(), 0);
		assertEquals(eval, toAtomList((Object[]) null));
	}

	@Test
	public void testSingleString() {
		List<Atom> eval = toAtomList(p.parse("hello"));
		assertEquals(1, eval.size());
		assertEquals(toAtomList("hello"), eval);
	}

	@Test
	public void testMultipleString() {
		List<Atom> eval = toAtomList(p.parse("hello world"));
		assertEquals(2, eval.size());
		assertEquals(toAtomList("hello", "world"), eval);
		eval = toAtomList(p.parse("   hello    world    "));
		assertEquals(toAtomList("hello", "world"), eval);
		eval = toAtomList(p.parse("a b c d e f ggggg"));
		assertEquals(7, eval.size());
		assertEquals(toAtomList("a", "b", "c", "d", "e", "f", "ggggg"), eval);
	}

	@Test
	public void testInt() {
		List<Atom> eval = toAtomList(p.parse("1"));
		assertFalse(eval.equals(toAtomList("1"))); // an int is not a string
		assertEquals(toAtomList(1), eval);
		eval = toAtomList(p.parse("1 0 -1"));
		assertEquals(toAtomList(1, 0, -1), eval);
	}

	@Test
	public void testFloat() {
		List<Atom> eval = toAtomList(p.parse("1.1"));
		assertFalse(eval.equals(toAtomList("1.1"))); // a float is not a string
		assertEquals(toAtomList(1.1), eval);
		eval = toAtomList(p.parse("1.1 0.9 -1.333"));
		assertEquals(toAtomList(1.1, 0.9, -1.333), eval);
	}

	@Test
	public void testMixed() {
		assertEquals(toAtomList("hello", 1, "world", 1.3, "pthb"), toAtomList(p.parse("hello 1 world 1.3 pthb")));
		assertEquals(toAtomList("hello", 1, "world", 1.3, "pthb"), toAtomList(p.parse("hello   1  world     1.3 pthb")));
	}

	@Test
	public void testBooleanIsString() {
		assertEquals(toAtomList("true"), toAtomList(p.parse("true")));
	}

	@Test
	public void testDegenerateRepetition() {
		assertEquals(toAtomList(1, 2, 3), toAtomList(p.parse("(1 2 3)")));
	}

	@Test
	public void testSingleValueRepetition() {
		assertEquals(toAtomList(1, 1), toAtomList(p.parse("1*2")));
		assertEquals(toAtomList(2, 2, 2), toAtomList(p.parse("2 * 3")));
		assertEquals(toAtomList(3, 3, 3, 3), toAtomList(p.parse("(3)*4")));
		assertEquals(toAtomList(3, 3, 3, 3), toAtomList(p.parse("(3)* 4")));
		assertEquals(toAtomList(3, 3, 3, 3), toAtomList(p.parse("(3) *4")));
		assertEquals(toAtomList(3, 3, 3, 3), toAtomList(p.parse("(3) * 4")));
	}

	@Test
	public void testMultiValueRepetition() {
		assertEquals(toAtomList(1, 2, 3, 1, 2, 3), toAtomList(p.parse("(1 2 3)*2")));
		assertEquals(toAtomList(1, 2, 1, 2, 1, 2), toAtomList(p.parse("(1 2)*3")));
		assertEquals(toAtomList(1, 2, 1, 2, 1, 2), toAtomList(p.parse("(1 2) * 3")));
	}

	@Test
	public void testMultipleRepetition() {
		assertEquals(toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3), toAtomList(p.parse("1*2 2*3 (3)*4")));
		assertEquals(toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3), toAtomList(p.parse("1 *2 2* 3 (3) * 4")));
		assertEquals(toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3), toAtomList(p.parse("1*2 2   *    3 (3)*4")));
	}

	@Test
	public void testNonRepeats() {
		assertEquals(toAtomList(), toAtomList(p.parse("1*0")));
		assertEquals(toAtomList(), toAtomList(p.parse("(1 2 3)*0")));
		assertEquals(toAtomList(), toAtomList(p.parse("[1 2 3]*0")));
	}

	@Test
	public void testNestedRepetition() {
		assertEquals(toAtomList(1, 2, 2, 3, 1, 2, 2, 3), toAtomList(p.parse("(1 2*2 3)*2")));
		assertEquals(toAtomList(1, 2, 3, 2, 3, 2, 3, 1, 2, 3, 2, 3, 2, 3), toAtomList(p.parse("(1 (2 3)*3)*2")));
		assertEquals(toAtomList(1, 2, 2, 3, 2, 2, 3, 1, 2, 2, 3, 2, 2, 3), toAtomList(p.parse("(1 (2*2 3)*2)*2")));
	}

	@Test
	public void testNextPrev() {
		assertEquals(toAtomList("next", "prev", "next", "next"), toAtomList(p.parse("> < >>")));
	}

	@Test
	public void testNote() {
		assertEquals(toAtomList(0), toAtomList(p.parse("C-1")));
		assertEquals(toAtomList(12), toAtomList(p.parse("C0")));
		assertEquals(toAtomList(24), toAtomList(p.parse("C1")));
		assertEquals(toAtomList(60), toAtomList(p.parse("C4")));
		assertEquals(toAtomList(62), toAtomList(p.parse("D4")));
		assertEquals(toAtomList(64), toAtomList(p.parse("E4")));
		assertEquals(toAtomList(65), toAtomList(p.parse("F4")));
		assertEquals(toAtomList(67), toAtomList(p.parse("G4")));
		assertEquals(toAtomList(69), toAtomList(p.parse("A4")));
		assertEquals(toAtomList(71), toAtomList(p.parse("B4")));
		assertEquals(toAtomList(0), toAtomList(p.parse("c-1")));
		assertEquals(toAtomList(12), toAtomList(p.parse("c0")));
		assertEquals(toAtomList(24), toAtomList(p.parse("c1")));
		assertEquals(toAtomList(60), toAtomList(p.parse("c4")));
		assertEquals(toAtomList(62), toAtomList(p.parse("d4")));
		assertEquals(toAtomList(64), toAtomList(p.parse("e4")));
		assertEquals(toAtomList(65), toAtomList(p.parse("f4")));
		assertEquals(toAtomList(67), toAtomList(p.parse("g4")));
		assertEquals(toAtomList(69), toAtomList(p.parse("a4")));
		assertEquals(toAtomList(71), toAtomList(p.parse("b4")));
	}

	@Test
	public void testNoteAccidental() {
		assertEquals(toAtomList(61), toAtomList(p.parse("C#4")));
		assertEquals(toAtomList(61), toAtomList(p.parse("Db4")));
		assertEquals(toAtomList(62), toAtomList(p.parse("C##4")));
		assertEquals(toAtomList(60), toAtomList(p.parse("Dbb4")));
		assertEquals(toAtomList(65), toAtomList(p.parse("e#4")));
		assertEquals(toAtomList(64), toAtomList(p.parse("fb4")));
		assertEquals(toAtomList(66), toAtomList(p.parse("e##4")));
		assertEquals(toAtomList(63), toAtomList(p.parse("fbb4")));
	}

	@Test
	public void testNoteSequence() {
		assertEquals(toAtomList(60, 64, 67, 72), toAtomList(p.parse("C4 e4 G4 b#4")));
		assertEquals(toAtomList(60, 67, 64, 72), toAtomList(p.parse("C4 G4 e4 b#4")));
	}

	@Test
	public void testNoteRepeat() {
		assertEquals(toAtomList(60, 64, 67, 72, 60, 64, 67, 72), toAtomList(p.parse("(C4 e4 G4 b#4)*2")));
		assertEquals(toAtomList(60, 64, 67, 64, 67, 72), toAtomList(p.parse("C4 (e4 G4)*2 b#4")));
		assertEquals(toAtomList(60, 64, 67, 67, 72), toAtomList(p.parse("C4 e4 G4*2 b#4")));
	}

	@Test
	public void testChord() {
		assertEquals(toAtomList("1 2 3"), toAtomList(p.parse("[1 2 3]")));
		assertEquals(toAtomList("1 2 3"), toAtomList(p.parse(" [ 1 2 3   ]")));
	}

	@Test
	public void testMixedChord() {
		assertEquals(toAtomList("1 2 3", "a b"), toAtomList(p.parse("[1 2 3] [a b]")));
		assertEquals(toAtomList("1 1.1 a next"), toAtomList(p.parse("[1 1.1 a >]")));
	}

	@Test
	public void testChordRepetition() {
		assertEquals(toAtomList("1 2 3", "1 2 3"), toAtomList(p.parse("[1 2 3]*2")));
		assertEquals(toAtomList("1 2 2", "3 4", "3 4"), toAtomList(p.parse("[1 2*2] [3 4]*2")));
		assertEquals(toAtomList(1, "2 3", "2 3", 1, "2 3", "2 3"), toAtomList(p.parse("(1 [2 3]*2)*2")));
		assertEquals(toAtomList(1, "2 3", "2 3", 1, "2 3", "2 3"), toAtomList(p.parse("(1 ([2 3])*2)*2")));
		assertEquals(toAtomList(1, "2 3", "2 3", 1, "2 3", "2 3"), toAtomList(p.parse("(1 [  2  3  ]* 2) *  2")));
		assertEquals(toAtomList(1, "2 3", "2 3", 1, "2 3", "2 3"), toAtomList(p.parse("(1 (  [  2  3  ])* 2) *  2")));
		assertEquals(toAtomList(1, "2 2 3", "2 2 3", 1, "2 2 3", "2 2 3"), toAtomList(p.parse("(1 [2*2 3]*2)*2")));
		assertEquals(toAtomList(1, 2, 3, 1, 2, 3, 1, 1, "1 2 3", "1 2 3"), toAtomList(p
				.parse("(1 2 3)*2 1*2 [1 2 3]*2")));
	}

	@Test
	public void testNoteChords() {
		assertEquals(toAtomList("60 67 64 72"), toAtomList(p.parse("[C4 G4 e4 b#4]")));
		assertEquals(toAtomList(60, "67 64", 72), toAtomList(p.parse("C4 [G4 e4] b#4")));
	}

	@Test
	public void testNoNestedChords() {
		try {
			p.parse("[1 [2 3]]");
			fail("Invalid syntax parsed successfully");
		}
		catch (IllegalStateException e) {
			// should make it here
		}
	}

	@Test
	public void testRubySupport() {
		p.parse("{1+2}");
	}

	// TODO: other bad syntax
}
