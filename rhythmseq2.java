package ajm;

import java.util.ArrayList;
import java.util.List;

import ajm.data.MappedList;
import ajm.util.Item;
import ajm.util.Parser;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

public class rhythmseq2 extends MaxObject {

	public rhythmseq2(Atom[] args) {
		declareIO(1, 4);
		setInletAssist(new String[] { "list / commands" });
		setOutletAssist(new String[] { "value", "tick", "iteration", "list" });

		declareAttribute("values", "getvalues", "values");
		declareAttribute("tick", "gettick", "tick");
		declareAttribute("iteration");
		declareAttribute("increment");

		// TODO: document these, and finish implementing!
		// declareAttribute("wrapmode");
		// declareAttribute("wraplimit");

		if (initializer != null) {
			initializer.set();
		}
	}

	private MaxQelem initializer = getInitializer();

	protected MaxQelem getInitializer() {
		// This is done this round about way so we can override this method and avoid an UnsatisfiedLinkError
		// in the jUnit tests.
		return new MaxQelem(new Executable() {
			// see discussion at http://www.cycling74.com/forums/index.php?t=rview&goto=114649
			// May need a Thread.sleep() or MaxClock if patches get too big and this doesn't initialize correctly
			// but note using too long of a Thread.sleep() will make Max temporarily hang when opening a patch where
			// many instances of this class are instantiated.
			public void execute() {
				// handle attributes used to construct the object
				defaultTick = tick;
				defaultIteration = iteration;
				defaultIncrement = increment;
				if (!tmap.isEmpty()) {
					defaultTmap = (MappedList<Atom>) tmap.clone();
					outputVals();
				}
			}
		});
	}

	@Override
	protected void notifyDeleted() {
		initializer.release();
	}

	protected int iteration = 0;
	protected int increment = 1;
	protected int chordIndex = 0;

	protected int count = 0;
	protected int duration = 0;
	protected boolean countChanged = false;
	protected int tick = 0;
	protected int sum;

	protected int maxTick;

	boolean initialOutput = true;
	protected int initialIdx = 0;

	protected MappedList<Atom> tmap = new MappedList<Atom>();
	protected List<Item> values = new ArrayList<Item>(); // this could be a list of Atoms, but we need to
	// parameterize the Parser...

	// Other internal state:
	protected boolean wrap = true;

	protected int defaultTick = tick;
	protected int defaultIteration = iteration;
	protected int defaultIncrement = increment;
	protected MappedList<Atom> defaultTmap = new MappedList<Atom>();

	protected Parser parser = new Parser(false);

	protected enum OUTLET {
		CURRENT_VAL(0), TICK(1), ITERATION(2), VALUES(3);

		private final int outletNumber;

		OUTLET(int outletNumber) {
			this.outletNumber = outletNumber;
		}
	}


	// TODO: new offset attribute (tick offset separate attr?), to replace the rhythmrot method
	// actual tick will be tick + offset

	// todo: default tick (attribute), set tick

	public Atom[] getvalues() {
		// TODO? caching or something? could rely on handleListChange
		Atom[] atoms = new Atom[values.size()];
		for (int i = 0; i < values.size(); i++) {
			atoms[i] = values.get(i).getAtom();
		}
		return atoms;
	}


	public void values(Atom[] list) {
		list(list);
	}

	public void list(Atom[] list) {
		set(list);
		outputVals();
	}


	// Max doesn't treat lists starting with a symbol as lists (they're just messages)
	// so we need to handle them here:
	public void anything(String msg, Atom[] args) {
		Atom[] list = new Atom[args.length + 1];
		list[0] = Atom.newAtom(msg);
		for (int i = 0; i < args.length; i++) {
			list[i + 1] = args[i];
		}
		list(list);
	}


	public void set(Atom[] list) {

		values = parser.parse(list);

		if (values.size() > 0) {
			boolean allZeros = true;
			for (int i = 0; i < values.size(); i++) {
				Item item = values.get(i);
				if (!item.isAtomArray()) {
					Atom a = item.getAtom();
					if ((a.isInt() || a.isFloat()) && a.toInt() != 0) {
						allZeros = false;
						break;
					}
				}
			}
			if (allZeros) {
				values.add(new Item(1)); // prevent infinite loops
			}
		}

		tmap.clear();
		maxTick = getTotalTicks();
		int pos = 0;
		for (int i = 0; i < values.size(); i++) {
			/*	
				if (pos == maxTick && tickWrapIdx == 0) {
					tickWrapIdx = i;
				}*/
			Item item = values.get(i);
			Atom a = item.getAtom();
			if (pos == maxTick) {
				tmap.addValue(-1, a);
			}
			else {
				tmap.addValue(pos, a);
			}

			if (a.isInt() || a.isFloat()) {
				int delay = a.toInt();
				delay = (delay < 0) ? -delay : delay;
				pos += delay;
			}
		}
		initialOutput = true;
	}

	// index is synonymous with tick in a rhythmseq. this needs to be here for compatability
	// TODO: maybe we should just call it index?
	public void index(int tick) {
		this.tick = tick;
	}

	/*
	 * Sets the length of the sequence in terms of the total number of ticks represented by the rhythm. If the new
	 * length is longer then the current, the last value will be increased as needed. Otherwise, values will be removed
	 * from the end of the sequence, and the last remaining value decreased as needed in order to set the new rhythm
	 * length.
	 *
	 */
	public void length(int length) {
		this.maxTick = length;
	}

	/* try just setting a tick offset
	public void rhythmrot(int ticks) {
		outputVals();
	}*/

	public void bang() {
		if (maxTick > 0) {
			// TODO: we introduced the problem with leading vs. trailing 0s
			output();
			tick += increment;
		}
	}

	protected int getTotalTicks() {
		int total = 0;
		for (Item i : values) {
			if (!i.isAtomArray()) {
				Atom a = i.getAtom();
				if (a.isInt() || a.isFloat()) {
					int val = a.toInt();
					total += (val < 0) ? -val : val;
				}
			}
		}
		return total;
	}

	public void output() {
		if (maxTick > 0) {
			fixTickBounds();
			if (wrap) {
				wrap = false;
				output(OUTLET.ITERATION, iteration);
			}
			output(OUTLET.TICK, tick);
			if (initialOutput) {
				initialOutput = false;
			}
			else if (tick == 0) {
				outputValuesAtTick(-1);
			}
			outputValuesAtTick(tick);
		}
	}

	/*
	public void get(int index) {
		if (index < 0 || index >= values.size()) {
			error(getClass() + ": invalid index " + index + " (valid indexes for current list are 0 - "
					+ (values.size() - 1) + ")");
		}
		else {
			output(OUTLET.CURRENT_VAL, values.get(index));
		}
	}
	*/

	protected void fixTickBounds() {
		while (tick >= maxTick) {
			wrap = true;
			iteration++;
			tick -= maxTick;
		}
		while (tick < 0) {
			wrap = true;
			iteration--;
			tick += maxTick;
		}
	}

	protected void outputVals() {
		output(OUTLET.VALUES, getvalues());
	}


	protected void output(OUTLET outlet, int data) {
		outlet(outlet.outletNumber, data);
	}


	protected void outputValuesAtTick(int tick) {
		List<Atom> values = tmap.get(tick);
		if (values != null) {
			for (Atom atom : values) {
				outlet(OUTLET.CURRENT_VAL.outletNumber, atom);
			}
		}
	}

	/*
	protected void output(OUTLET outlet, Atom data) {
		outlet(outlet.outletNumber, data);
	}
	*/

	protected void output(OUTLET outlet, Atom[] data) {
		outlet(outlet.outletNumber, data);
	}

	public void reset() {
		count = 0;
		duration = 0;
		sum = 0;
		tick = defaultTick;
		increment = defaultIncrement;
		iteration = defaultIteration;
		resetseq();
	}


	public void resettick() {
		tick = defaultTick;
	}

	public void resetindex() {
		tick = defaultTick;
		initialOutput = true; // This needs to be here for syncing to work right in 16 track seq
		// I think this needs to be in other resets too...
	}

	public void resetiteration() {
		iteration = defaultIteration;
		wrap = true;
	}

	public void resetincrement() {
		increment = defaultIncrement;
	}

	public void resetseq() {
		tmap = (MappedList<Atom>) defaultTmap.clone();
		initialOutput = true;
		outputVals();
	}
}
