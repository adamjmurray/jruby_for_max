package ajm.util;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

import junit.framework.TestCase;

import ajm.data.Item;

import com.cycling74.max.Atom;

public class ParserTest extends TestCase {

	private PrintStream out = System.out;
	Parser p = new Parser();

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

	private Atom[] toAtomArray(Object... objs) {
		return toAtomList(objs).toArray(new Atom[] {});
	}

	private Item toItem(Object... objs) {
		return new Item(toAtomArray(objs));
	}

	private List<Atom> toAtomList(List<Item> items) {
		List<Atom> atoms = new ArrayList<Atom>(items.size());
		for (Item item : items) {
			atoms.add(item.getAtom());
		}
		return atoms;
	}

	public void testEmpty() {
		List<Atom> eval = toAtomList(p.parse(""));
		assertEquals(eval.size(), 0);
		assertEquals(eval, toAtomList((Object[]) null));
	}

	public void testSingleString() {
		List<Atom> eval = toAtomList(p.parse("hello"));
		assertEquals(eval.size(), 1);
		assertEquals(eval, toAtomList("hello"));
	}

	public void testMultipleString() {
		List<Atom> eval = toAtomList(p.parse("hello world"));
		assertEquals(eval.size(), 2);
		assertEquals(eval, toAtomList("hello", "world"));
		eval = toAtomList(p.parse("   hello    world    "));
		assertEquals(eval, toAtomList("hello", "world"));
		eval = toAtomList(p.parse("a b c d e f ggggg"));
		assertEquals(eval.size(), 7);
		assertEquals(eval, toAtomList("a", "b", "c", "d", "e", "f", "ggggg"));
	}

	public void testInt() {
		List<Atom> eval = toAtomList(p.parse("1"));
		assertFalse(eval.equals(toAtomList("1")));
		assertEquals(eval, toAtomList(1));
		eval = toAtomList(p.parse("1 0 -1"));
		assertEquals(eval, toAtomList(1, 0, -1));
	}

	public void testFloat() {
		List<Atom> eval = toAtomList(p.parse("1.1"));
		assertFalse(eval.equals(toAtomList("1.1")));
		assertEquals(eval, toAtomList(1.1));
		eval = toAtomList(p.parse("1.1 0.9 -1.333"));
		assertEquals(eval, toAtomList(1.1, 0.9, -1.333));
	}

	public void testMixed() {
		assertEquals(toAtomList(p.parse("hello 1 world 1.3 pthb")), toAtomList("hello", 1, "world", 1.3, "pthb"));
		assertEquals(toAtomList(p.parse("hello   1  world     1.3 pthb")), toAtomList("hello", 1, "world", 1.3, "pthb"));
	}

	public void testBooleanIsString() {
		assertEquals(toAtomList(p.parse("true")), toAtomList("true"));
	}

	public void testSingleRepetition() {
		assertEquals(toAtomList(p.parse("1*2")), toAtomList(1, 1));
		assertEquals(toAtomList(p.parse("2 * 3")), toAtomList(2, 2, 2));
		assertEquals(toAtomList(p.parse("(3)*4")), toAtomList(3, 3, 3, 3));
		assertEquals(toAtomList(p.parse("(3)* 4")), toAtomList(3, 3, 3, 3));
		assertEquals(toAtomList(p.parse("(3) *4")), toAtomList(3, 3, 3, 3));
		assertEquals(toAtomList(p.parse("(3) * 4")), toAtomList(3, 3, 3, 3));
	}

	public void testMultipleRepetition() {
		assertEquals(toAtomList(p.parse("1*2 2*3 (3)*4")), toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3));
		assertEquals(toAtomList(p.parse("1 *2 2* 3 (3) * 4")), toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3));
		assertEquals(toAtomList(p.parse("1*2 2   *    3 (3)*4")), toAtomList(1, 1, 2, 2, 2, 3, 3, 3, 3));
	}

	public void testRepetitionGroup() {
		assertEquals(toAtomList(p.parse("(1 2)*3")), toAtomList(1, 2, 1, 2, 1, 2));
		assertEquals(toAtomList(p.parse("(1 2) * 3")), toAtomList(1, 2, 1, 2, 1, 2));
	}

	public void testNestedRepetition() {
		assertEquals(toAtomList(p.parse("(1 2*2 3)*2")), toAtomList(1, 2, 2, 3, 1, 2, 2, 3));
	}

	public void testChord() {
		assertEquals(toAtomList(p.parse("[1 2 3]")), toAtomList("1 2 3"));
		assertEquals(toAtomList(p.parse(" [ 1 2 3   ]")), toAtomList("1 2 3"));
	}

	public void testMixedChord() {
		assertEquals(toAtomList(p.parse("[1 1.1 a >]")), toAtomList("1 1.1 a next"));

	}

	// TODO: all the note name parsing

	public void testNextPrev() {
		assertEquals(toAtomList(p.parse("> < >>")), toAtomList("next", "prev", "next", "next"));
	}

	public void testGetChordMapSingle() {
		assertEquals(toAtomList(p.parse("[1 2 3]")), toAtomList("1 2 3"));

		/* TODO: get the original Item list and make sure things look good!
		Map<Integer, Item> chords = p.getChords();
		assertEquals(chords.size(), 1);
		assertEquals(chords.get(0), toItem(1, 2, 3));
		*/
	}

	public void testGetChordMapMultiple() {
		assertEquals(toAtomList(p.parse("[1 2 3] [a b]")), toAtomList("1 2 3", "a b"));
		/*
		Map<Integer, Item> chords = p.getChords();
		assertEquals(chords.size(), 2);
		assertEquals(chords.get(0), toItem(1, 2, 3));
		assertEquals(chords.get(1), toItem("a", "b"));
		*/
	}

	// TODO: all the above methods got expected/actual backwards
	public void testGetChordMapRepetition() {
		assertEquals(toAtomList("1 2 2", "3 4", "3 4"), toAtomList(p.parse("[1 2*2] [3 4]*2")));
		/*
		Map<Integer, Item> chords = p.getChords();
		assertEquals(3, chords.size());
		assertEquals(toItem(1, 2, 2), chords.get(0));
		assertEquals(toItem(3, 4), chords.get(1));
		assertEquals(toItem(3, 4), chords.get(2));
		*/
	}
}
