package ajm;

import com.cycling74.max.Atom;

public class rhythm extends numseq {

	protected int count = 0;

	protected boolean countChanged = false;

	public rhythm(Atom[] args) {
		super(args);
	}

	protected void setVals(int[] list) {
		boolean allZeros = true;
		for (int i = 0; i < list.length; i++) {
			if (list[i] != 0) {
				allZeros = false;
				break;
			}
		}
		if (allZeros) {
			list[0] = 1; // prevent infinite loops
		}
		vals = list;
	}

	public void bang() {

		if (!initialized) {
			// maybe there is a better/more general way, like immediately reset
			// count when a list is input (not queued)
			setIndex(0);
			initialized = true;
		}

		if (countChanged) {
			output();
		} else {
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

	protected void output() {
		countChanged = false;
		super.output();
	}

	protected void setIndex(int idx) {
		super.setIndex(idx);
		count = Math.abs(vals[this.index]);
		countChanged = true;
	}
}
