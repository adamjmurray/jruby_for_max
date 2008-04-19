package ajm.maxsupport;

import com.cycling74.max.Atom;

/**
 * Interface for objects that can convert themselves to a Max Atom.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public interface Atomizer {

	Atom toAtom();

}
