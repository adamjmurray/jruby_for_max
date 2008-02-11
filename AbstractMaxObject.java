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

import java.io.PrintStream;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

/**
 * Common behavior for ajm objects.
 * 
 * @version 0.7
 * @author Adam Murray (dev@compusition.com)
 */
public abstract class AbstractMaxObject extends MaxObject {

	protected boolean initialized = false;
	protected MaxQelem initializer = getInitializer();

	public AbstractMaxObject() {
		if (initializer == null) {
			initialized = true;
		}
		else {
			initializer.set();
		}
	}

	/**
	 * A subclass can override this method to return a MaxQelem that can do operations not normally available in the
	 * constructor, such as outputting messages. See discussion at
	 * http://www.cycling74.com/forums/index.php?t=rview&goto=114649 Note that if this method is overriden, it is the
	 * responsibility of the initializer code to set initialized = true.
	 * 
	 * @return a MaxQelem that executes initialization code
	 */
	protected MaxQelem getInitializer() {
		// Override in a subclass to output something just after object construction.
		return null;
	}

	@Override
	protected void notifyDeleted() {
		if (initializer != null) {
			initializer.release();
		}
	}

	public static String toString(Atom[] args) {
		return toString(null, args);
	}

	public static String toString(String msg, Atom[] args) {
		StringBuilder input = new StringBuilder();
		if (msg != null) {
			input.append(msg).append(" ");
		}
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				input.append(" ");
			}
			input.append(args[i]);
		}
		return input.toString();
	}

	public static boolean isNumber(Atom atom) {
		return atom.isInt() || atom.isFloat();
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	private PrintStream debugOut;

	protected void debug(String msg) {
		if (debugOut != null) {
			debugOut.println(msg);
		}
	}

	/**
	 * Unit tests can set this output stream back to system.out (or a log file) for testing purposes outside of the Max
	 * environment. Normally any MaxObject will "steal" System.out and set it to the Max output stream (which is not
	 * actually available outside of Max).
	 * 
	 * @param debugOut
	 */
	protected void setDebugOut(PrintStream debugOut) {
		this.debugOut = debugOut;
	}

	/**
	 * Automatically prepends the object name to the beginning of error messages.
	 * 
	 * @param message
	 *            the error message
	 */
	protected void err(String message) {
		error(this.getClass().getName() + ": " + message);
	}

}
