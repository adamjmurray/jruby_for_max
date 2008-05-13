package ajm.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Collection;

import ajm.maxsupport.Atomizer;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxSystem;

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

/**
 * Miscellaneous utility methods.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public class Utils {

	private Utils() {
	}

	public static boolean equals(Object o1, Object o2) {
		if (o1 == null) {
			return o2 == null;
		}
		else {
			return o1.equals(o2);
		}
	}

	public static Atom[] toAtoms(Collection<? extends Atomizer> objs) {
		Atom[] atoms = new Atom[objs.size()];
		int i = 0;
		for (Atomizer obj : objs) {
			atoms[i] = obj.toAtom();
			i++;
		}
		return atoms;
	}

	public static boolean isNumber(Atom atom) {
		return atom.isInt() || atom.isFloat();
	}

	public static String detokenize(Atom[] args) {
		return detokenize(null, args);
	}

	public static String detokenize(String msg, Atom[] args) {
		StringBuilder input = new StringBuilder();
		if (msg != null) {
			input.append(detokenize(msg)).append(" ");
		}
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				input.append(" ");
			}
			input.append(detokenize(args[i]));
		}
		return input.toString();
	}

	public static String detokenize(Atom atom) {
		if (atom == null) {
			return "";
		}
		return detokenize(atom.toString());
	}

	public static String detokenize(String str) {
		if (str.contains(" ")) {
			return '"' + str + '"';
		}
		else {
			return str;
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
				else {
					System.err.println("File not found: " + path);
				}
			}
			else {
				System.err.println("File not found: " + path);
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
			System.err.println(e.getMessage());
			return null;
		}
		finally {
			if (reader != null) {
				try {
					reader.close();
				}
				catch (IOException e) {
					System.err.println(e.getMessage());
				}
			}
		}
	}
}
