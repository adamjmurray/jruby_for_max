package ajm;

import com.cycling74.max.Atom;

public class rhythmseq extends intseq {

	protected int count = 0;

	// protected boolean countChanged = false;

	public rhythmseq(Atom[] args) {
		super(args);
	}

	public void set(Atom[] list) {
		boolean allZeros = true;
		for (int i = 0; i < list.length; i++) {
			if (list[i].toInt() != 0) {
				allZeros = false;
				break;
			}
		}
		if (allZeros) {
			list[0] = Atom.newAtom(1); // prevent infinite loops
		}
		super.set(list);

	}

	@Override
	public void bang() {
		if (!values.isEmpty()) {
			if (!autoIncrement) {
				setIndex(index);
				autoIncrement = true;
			}

			/*
			 * if (countChanged) { output(); } else {
			 */

			count--;
			if (count <= 0) {
				setIndex(index + increment);
				output();
				if (count == 0) {
					bang(); // infinite loops prevented by setVals()
				}
			}
		}
	}

	protected void setIndex(int idx) {
		if (values.size() > 0) {
			super.setIndex(idx);
			count = Math.abs(values.get(index).toInt());
			// countChanged = true;
			// I'm not sure this count changed system is really approparite
			// how should it work with advance, etc? Should those bang right away
			// or on the next incoming bang?
			// The way I adjusted things with advance and index(), it won't even bang
			// at all until the next count is reached. I think this is good.
		}
	}
}