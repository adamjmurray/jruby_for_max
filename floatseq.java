package ajm;

import com.cycling74.max.Atom;

public class floatseq extends numericseq {

	public floatseq(Atom[] args) {
		super(args);
	}

	protected Atom[] coerceToNumber(Atom[] list) {
		for (int i = 0; i < list.length; i++) {
			list[i] = Atom.newAtom(list[i].toFloat());
		}
		return list;
	}

	protected Atom add(Atom n, Atom m) {
		return Atom.newAtom(n.toFloat() + m.toFloat());
	}

	protected Atom multiply(Atom n, Atom m) {
		return Atom.newAtom(n.toFloat() * m.toFloat());
	}
}
