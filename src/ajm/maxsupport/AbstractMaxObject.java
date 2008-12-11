package ajm.maxsupport;

/*
 Copyright (c) 2008, Adam Murray (adam@compusition.com). All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, 
 this list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import java.io.PrintStream;

import ajm.util.Logger;

import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

/**
 * Common behavior for ajm objects.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class AbstractMaxObject extends MaxObject implements Logger {

	protected boolean verbose = false;

	protected boolean initialized = false;
	protected MaxQelem initializer = getInitializerQelem();

	// The initializer should never be null inside Max, but needs to be null in unit tests

	public AbstractMaxObject() {
		declareAttribute("verbose");
		if (initializer == null) {
			initialized = true;
		}
		else {
			initializer.set();
		}
	}

	private final MaxQelem getInitializerQelem() {
		Executable initializer = getInitializer();
		return initializer == null ? null : new MaxQelem(initializer);
	}

	/**
	 * A subclass can override this method to return a MaxQelem that can do operations not normally available in the
	 * constructor, such as outputting messages. See discussion at
	 * http://www.cycling74.com/forums/index.php?t=rview&goto=114649 Note that if this method is overriden, it is the
	 * responsibility of the initializer code to set initialized = true.
	 * 
	 * @return an Executable that executes initialization code. Must not be null.
	 */
	protected Executable getInitializer() {
		return new DefaultInitializer();
	}

	protected class DefaultInitializer implements Executable {
		public void execute() {
			initialized = true;
		}
	}

	@Override
	protected void notifyDeleted() {
		if (initializer != null) {
			initializer.release();
		}
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	private PrintStream debugOut;

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

	public void debug(String message) {
		if (debugOut != null) {
			debugOut.println(message);
		}
	}

	/**
	 * Automatically prepends the object name to the beginning of error messages.
	 * 
	 * @param message
	 *            the error message
	 */
	public void info(String message) {
		if (verbose) {
			post(this.getClass().getName() + ": " + message);
		}
	}

	/**
	 * Automatically prepends the object name to the beginning of error messages.
	 * 
	 * @param message
	 *            the error message
	 */
	public void err(String message) {
		error(this.getClass().getName() + ": " + message);
	}

	public String toString() {
		return getClass().getName() + "#<" + Integer.toHexString(hashCode()) + ">";
	}
}
