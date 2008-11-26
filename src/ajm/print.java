package ajm;

import com.cycling74.max.Atom;

import ajm.maxsupport.AbstractMaxObject;
import ajm.util.Utils;

public class print extends AbstractMaxObject {

	private boolean onlyanything = false;
	private boolean detokenize = false;

	public print() {
		declareAttribute("onlyanything");
		declareAttribute("detokenize");
		declareIO(1, 0);
		createInfoOutlet(false);
	}

	public void inlet(float value) {
		if (onlyanything) {
			super.inlet(value);
		}
		else {
			System.out.println("Recieved a float: " + value);
		}
	}

	public void inlet(int value) {
		if (onlyanything) {
			super.inlet(value);
		}
		else {
			System.out.println("Recieved an int: " + value);
		}
	}

	public void list(Atom[] list) {
		if (onlyanything) {
			super.list(list);
		}
		else {
			System.out.println("Received a list of length " + list.length + (list.length > 0 ? ":" : "."));
			dumpList(list);
		}
	}

	public void anything(String msg, Atom[] args) {
		System.out.println("Received message '" + (detokenize ? Utils.detokenize(msg) : msg) + "' with " + args.length
				+ " arguments" + (args.length > 0 ? ":" : "."));
		dumpList(args);
	}

	private void dumpList(Atom[] list) {
		for (Atom atom : list) {
			if (atom == null) {
				System.out.println("  null (might have been a semicolon?)");
			}
			else if (atom.isInt()) {
				System.out.println("  int: " + atom.getInt());
			}
			else if (atom.isFloat()) {
				System.out.println("  float: " + atom.getFloat());
			}
			else {
				System.out.println("  string: '" + (detokenize ? Utils.detokenize(atom.getString()) : atom.getString())
						+ "'");
			}
		}
	}

}
