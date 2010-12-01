package jruby4max.maxsupport;

import com.cycling74.max.Atom;

/**
 * Interface for objects that can convert themselves to a Max Atom.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public interface Atomizer {

	Atom toAtom();

}
