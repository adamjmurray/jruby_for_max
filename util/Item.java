package ajm.util;

import java.util.Arrays;

import com.cycling74.max.Atom;

/**
 * Represents a single sequenced item, which can either be a single atom or a list of atoms (for example, a chord)
 * 
 * @author Adam Murray
 * 
 */
public class Item implements Comparable {

	private Atom atom;
	private Atom[] atoms;

	private Item() {}

	public Item(Atom atom) {
		this.atom = atom;
	}

	public Item(int i) {
		this.atom = Atom.newAtom(i);
	}

	public Item(float f) {
		this.atom = Atom.newAtom(f);
	}

	public Item(String s) {
		this.atom = Atom.newAtom(s);
	}

	public Item(Atom[] atoms) {
		this.atoms = atoms;
		// Each item needs to be representable as a single Atom, so the underlying single Atom is
		// a symbol wrapped in quotes, like "60 64 67" for a C Major chord.
		StringBuilder s = new StringBuilder();
		for (int i = 0; i < atoms.length; i++) {
			if (i > 0) {
				s.append(" ");
			}
			s.append(atoms[i].toString());
		}
		this.atom = Atom.newAtom(s.toString());
	}

	public boolean isAtomArray() {
		return atoms != null;
	}

	public Atom getAtom() {
		return atom;
	}

	public Atom[] getAtoms() {
		return atoms;
	}

	// these kinds of operation must return a new item. otherwise we overwrite the defaultSeq values
	// I think cloning for the defaultSeq and resetseq will be too slow, as resets are fairly common
	// in my 16 track sequencer app
	public Item add(Atom summand) {
		if (isAtomArray()) {
			Atom[] sumAtoms = new Atom[atoms.length];
			for (int i = 0; i < atoms.length; i++) {
				Atom atom = atoms[i];
				if (atom.isFloat() || atom.isInt()) {
					sumAtoms[i] = add(atom, summand);
				}
				else {
					sumAtoms[i] = atom;
				}
			}
			return new Item(sumAtoms);

		}
		else {
			if (atom.isFloat() || atom.isInt()) {
				return new Item(add(atom, summand));
			}
			else {
				return this;
			}
		}
	}

	private static Atom add(Atom a1, Atom a2) {
		if (a1.isFloat() || a2.isFloat()) {
			return Atom.newAtom(a1.toFloat() + a2.toFloat());
		}
		else {
			return Atom.newAtom(a1.toInt() + a2.toInt());
		}
	}

	public Item multiply(Atom multiplier) {
		if (isAtomArray()) {
			Atom[] sumAtoms = new Atom[atoms.length];
			for (int i = 0; i < atoms.length; i++) {
				Atom atom = atoms[i];
				if (atom.isFloat() || atom.isInt()) {
					sumAtoms[i] = multiply(atom, multiplier);
				}
				else {
					sumAtoms[i] = atom;
				}
			}
			return new Item(sumAtoms);

		}
		else {
			if (atom.isFloat() || atom.isInt()) {
				return new Item(multiply(atom, multiplier));
			}
			else {
				return this;
			}
		}
	}

	private static Atom multiply(Atom a1, Atom a2) {
		if (a1.isFloat() || a2.isFloat()) {
			return Atom.newAtom(a1.toFloat() * a2.toFloat());
		}
		else {
			return Atom.newAtom(a1.toInt() * a2.toInt());
		}
	}

	public int compareTo(Object other) {
		Atom a1 = getAtom();
		Atom a2 = ((Item) other).getAtom();
		if (a1.isString() || a2.isString()) {
			return a1.toString().compareTo(a2.toString());
		}
		else if (a1.isFloat() || a2.isFloat()) {
			// rely on Float.compare() because it handles infinity and NaN
			return Float.compare(a1.toFloat(), a2.toFloat());
		}
		else {
			return a1.toInt() - a2.toInt();
		}
	}

	public Item clone() {
		Item i = new Item();
		i.atom = atom;
		i.atoms = atoms;
		return i;
	}

	public boolean equals(Object obj) {
		if (obj instanceof Item) {
			return Arrays.equals(this.atoms, ((Item) obj).atoms);
		}
		else {
			return false;
		}
	}

	public String toString() {
		if (atoms != null) {
			return Arrays.toString(atoms) + " (\"" + atom + "\")";
		}
		else {
			return atom + "";
		}
	}
}
