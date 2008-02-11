package ajm;

/*
 Copyright 2008 Adam Murray

 The files in this ajm package are part of ajm objects.

 This ajm package is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This ajm package is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with ajm objects.  If not, see <http://www.gnu.org/licenses/>.

 */

import java.util.List;

import ajm.data.Item;
import ajm.util.Parser;

import com.cycling74.max.Atom;

/**
 * The ajm.eval MaxObject
 * 
 * @version 0.7
 * @author Adam Murray (dev@compusition.com)
 */
public class eval extends AbstractMaxObject {

	Parser parser = new Parser();

	public eval(Atom[] args) {
		declareIO(1, 1);
		setInletAssist(new String[] { "message" });
		setOutletAssist(new String[] { "evaluated message" });
		// TODO parsing options
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
			err("Could not evaluate: " + toString(msg, args) + "\n" + e.getMessage());
		}
	}
}
