package ajm;

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

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;
import com.cycling74.max.MaxSystem;

/**
 * Common behavior for ajm objects.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
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

	/**
	 * Locate a file. If no path is passed in a file dialog will open. If the path is just a filename, the Max search
	 * path will be searched to locate the file.
	 * 
	 * @param path -
	 *            a filename of a file on the max path, or an absolute path, or null (null opens file dialog)
	 * @return a File object referencing an existing file, otherwise null
	 */
	public static File getFile(String path) {
		if (path == null || path.length() == 0) {
			path = MaxSystem.openDialog();
		}

		if (path != null) {
			String location = null;
			if (path.contains(File.separator)) {
				location = MaxSystem.maxPathToNativePath(path);
			}
			else {
				location = MaxSystem.locateFile(path);
			}

			if (location != null) {
				File file = new File(location);
				if (file != null && file.isFile()) {
					return file;
				}
			}
		}

		return null;
	}

	public static String getFileAsString(String path) {
		return getFileAsString(getFile(path));
	}

	public static String getFileAsString(File file) {
		if (file == null || !file.exists()) {
			return null;
		}

		StringBuilder text = new StringBuilder(5000);
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(file));
			char[] buf = new char[1024];
			int charsRead = 0;
			while ((charsRead = reader.read(buf)) != -1) {
				text.append(buf, 0, charsRead);
			}
			return text.toString();
		}
		catch (IOException e) {
			MaxSystem.error(e.getMessage());
			return null;
		}
		finally {
			if (reader != null) {
				try {
					reader.close();
				}
				catch (IOException e) {
					MaxSystem.error(e.getMessage());
				}
			}
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
	protected void info(String message) {
		post(this.getClass().getName() + ": " + message);
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
