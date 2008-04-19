package ajm;

import java.util.ArrayList;
import java.util.List;

import ajm.seqsupport.Item;

import com.cycling74.max.Atom;

public class preemptrseq extends rseq {

	List<Item> actualSeq = new ArrayList<Item>();

	public preemptrseq(Atom[] args) {
		super(args);
	}

	@Override
	public void set(Atom[] list) {
		try {
			List<Item> newSeq = parser.parse(list);

			actualSeq.clear();
			actualSeq.addAll(newSeq);
			setPreemptiveSeq();

			onSeqChange();
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + toString(list) + "\n" + e.getMessage());
		}
	}

	// The seq needs to look the same externally
	// but internally transform positive numbers n into -(n-1), -1
	// e.g. 16 4 3 -> -15 1 -3 1 -2 1
	private void setPreemptiveSeq() {
		seq.clear();
		for (Item item : actualSeq) {
			Atom atom = item.getAtom();
			if (isNumber(atom)) {
				int val = atom.toInt();
				if (val > 1) {
					seq.add(new Item(-(val - 1)));
					seq.add(new Item(1));
				}
				else {
					seq.add(item);
				}
			}
			else {
				seq.add(item);
			}
		}
	}

	@Override
	public Atom[] getseq() {
		Atom[] atoms = new Atom[actualSeq.size()];
		for (int i = 0; i < actualSeq.size(); i++) {
			atoms[i] = actualSeq.get(i).getAtom();
		}
		return atoms;
	}

}
