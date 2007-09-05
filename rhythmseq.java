package ajm;

import com.cycling74.max.Atom;

public class rhythmseq extends intseq {

	// TODO: figure out how to unit test this stuff

	protected int count = 0;
	protected int duration = 0;
	protected int tick = 0;
	protected boolean countChanged = false;

	public rhythmseq(Atom[] args) {
		super(args);
		declareIO(1, 5);
		setOutletAssist(new String[] { "value", "index", "iteration", "list", "tick" });
	}

	@Override
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

			output(OUTLET.TICK, tick);
			tick++;

			if (count == 0) {
				output();
			}
			count++;
			if (count >= duration) {
				setIndex(index + increment);
				if (duration == 0) {
					bang(); // infinite loops prevented by setVals()
				}
			}
		}
	}

	@Override
	protected void setIndex(int idx) {
		if (values.size() > 0) {
			super.setIndex(idx);
			duration = Math.abs(values.get(index).toInt());
			count = 0;
			if (wrap) {
				tick = 0;
			}
		}
	}

	@Override
	public void reset() {
		count = 0;
		tick = 0;
		super.reset();
	}


}