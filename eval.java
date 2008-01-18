package ajm;

import java.util.List;

import ajm.util.Item;
import ajm.util.MaxUtils;
import ajm.util.Parser;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class eval extends MaxObject {

	Parser parser = new Parser();

	public eval(Atom[] args) {
		declareIO(1, 1);
		setInletAssist(new String[] { "message" });
		setOutletAssist(new String[] { "evaluated message" });

		// TODO parsing options:
		// declareAttribute("increment");
	}

	public void list(Atom[] list) {
		anything(null, list);
	}

	public void anything(String msg, Atom[] args) {
		try {
			List<Item> parsed = parser.parse(msg, args);
			Atom[] atoms = new Atom[parsed.size()];
			for (int i = 0; i < atoms.length; i++) {
				atoms[i] = parsed.get(i).getAtom();
			}
			outlet(0, atoms);
		}
		catch (IllegalStateException e) {
			error("could not evaluate: " + MaxUtils.toString(msg, args) + "\n" + e.getMessage());
		}
	}
}
