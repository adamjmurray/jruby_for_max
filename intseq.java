package ajm;

import com.cycling74.max.Atom;

public class intseq extends seq {

	public intseq(Atom[] args) {
		super(args);
	}

	public Atom[] getvals() {
		return vals.toArray(new Atom[vals.size()]);
	}

	// TODO: coerce to int when setting/inserting/etc

	/*
	 * public void set(Atom[] list) { for(int i=0; i<list.lengtAtom atom : list) { /atom = atom.toInt(atom)[0]; } vals =
	 * Arrays.asList(list); }
	 * 
	 */
	public void vals(Atom[] list) {
		set(list);
	}

	public void add(int n) {
		add(n, 0, vals.size() - 1);
	}

	public void add(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.size())
			right = vals.size() - 1;

		for (int i = left; i <= right; i++) {
			vals.set(i, Atom.newAtom(vals.get(i).toInt() + n));
		}
		outputVals();
	}

	public void multiply(int n) {
		multiply(n, 0, vals.size() - 1);
	}

	public void multiply(int n, int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0)
			left = 0;
		if (right >= vals.size())
			right = vals.size() - 1;

		for (int i = left; i <= right; i++) {
			vals.set(i, Atom.newAtom(vals.get(i).toInt() * n));
		}
		outputVals();
	}

	// todo: arbitrary expression? can I eval javascript?
}
