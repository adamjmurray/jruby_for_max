package ajm.util;

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

import java.io.File;
import java.io.PrintStream;
import java.util.Arrays;

import org.apache.bsf.BSFException;
import org.jruby.RubyArray;
import org.jruby.RubyHash;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class MaxRubyEvaluator extends RubyEvaluator {

	public static final String PROP_JRUBY_HOME = "jruby.home";

	private LineBuilder code = new LineBuilder();

	private PrintStream verboseOut;

	private final MaxObject maxObj;

	private boolean initialized = false;

	public MaxRubyEvaluator(MaxObject maxObj) {
		this.maxObj = maxObj;
	}

	public PrintStream getVerboseOut() {
		return verboseOut;
	}

	public void setVerboseOut(PrintStream verboseOut) {
		this.verboseOut = verboseOut;
	}

	public Atom[] eval(CharSequence rubyCode) throws BSFException {
		if (!initialized) {
			init();
		}
		return toAtoms(super.eval(rubyCode));
	}

	private void addPath(String path) {
		code.line("$: << '" + path.replace("'", "\\'") + "'");
	}

	public void init() {

		if (System.getProperty(PROP_JRUBY_HOME) == null) {
			String pathToJRuby = MaxSystem.locateFile("jruby.jar");
			if (pathToJRuby != null) {
				File jRubyDir = new File(pathToJRuby).getParentFile();
				// Set jruby.home to the Max installation's java directory, where it will look for lib/ruby
				System.setProperty(PROP_JRUBY_HOME, jRubyDir.getParent());
			}
		}

		if (true) {
			// now we need to zap the object before testing changes here!
			// did timing tests with this commented out, saves us a bout 12 ms (of ~215 ms eval time)

			String patcherPath = maxObj.getParentPatcher().getPath();
			if (patcherPath != null) {
				// Add the patch's folder and subfolders
				addPath(patcherPath);
				File ppath = new File(patcherPath);
				for (File file : ppath.listFiles()) {
					if (file.isDirectory()) {
						addPath(file.getAbsolutePath());
					}
				}
			}

			for (String path : MaxSystem.getSearchPath()) {
				addPath(path);
			}

			code.line("def puts(*params)");
			code.line("  $Utils.puts(params)");
			code.line("end");

			code.line("def print(*params)");
			code.line("  $Utils.print(params)");
			code.line("end");

			code.line("def flush");
			code.line("  $Utils.flush");
			code.line("end");

			code.line("def atom(obj)");
			code.line("  if obj");
			code.line("    $Utils.atom(obj)");
			code.line("  else");
			code.line("    $Utils.emptyAtomArray");
			code.line("  end");
			code.line("end");

			code.line("def error(*params)");
			code.line("  $Utils.error(params)");
			code.line("end");

			code.line("def outlet(n, *params)");
			code.line("  $Utils.outlet(n, params)");
			code.line("end");

			// Placeholders for Max hooks:
			code.line("def bang");
			code.line("  'bang'");
			code.line("end");

			code.line("def list(array)");
			code.line("  array");
			code.line("end");
		}

		try {
			declareBean("MaxObject", maxObj, maxObj.getClass());
			declareBean("Utils", new Utils(), Utils.class);
			initialized = true;
			eval(code);

		}
		catch (BSFException e) {
			throw new RuntimeException(e);
		}

	}

	/**
	 * Converts the result of a Ruby evaluation into Max data types (Atoms)
	 * 
	 * @param obj -
	 *            A Ruby value
	 * @return an Atom[]. The calling code should check if this is really just a single Atom and handle that case
	 *         appropriately.
	 */
	public Atom[] toAtoms(Object obj) {
		/*
		 * if (obj != null) { System.out.println(obj.getClass().getName()); }
		 */
		if (obj == null) {
			return new Atom[] { Atom.newAtom("nil") };
		}

		else if (obj instanceof Atom[]) {
			return (Atom[]) obj;
		}

		else if (obj instanceof Atom) {
			return new Atom[] { (Atom) obj };
		}

		else if (obj instanceof Double || obj instanceof Float) {
			return new Atom[] { Atom.newAtom(((Number) obj).doubleValue()) };
		}

		else if (obj instanceof Long || obj instanceof Integer) {
			return new Atom[] { Atom.newAtom(((Number) obj).longValue()) };
		}

		else if (obj instanceof Boolean) {
			return new Atom[] { Atom.newAtom(((Boolean) obj).booleanValue()) };
		}

		else if (obj instanceof RubyArray) {
			RubyArray array = (RubyArray) obj;
			if (array.size() == 1) {
				return toAtoms(array.get(0));
			}
			else {
				Atom[] out = new Atom[array.size()];
				for (int i = 0; i < array.size(); i++) {
					Atom[] val = toAtoms(array.get(i));
					if (val.length == 1) {
						out[i] = val[0];
					}
					else {
						if (verboseOut != null) {
							verboseOut.println("Ruby: coerced a nested Array to String");
						}
						out[i] = Atom.newAtom(Arrays.toString(val));
					}
				}
				return out;
			}
		}

		else if (obj instanceof RubyHash) {
			if (verboseOut != null) {
				verboseOut.println("Ruby: coerced a Hash to String");
			}
			RubyHash hash = (RubyHash) obj;
			StringBuilder s = new StringBuilder();
			for (Object key : hash.keySet()) {
				if (s.length() > 0) {
					s.append(", ");
				}
				s.append(toArrayString(toAtoms(key)));
				s.append("=>");
				s.append(toArrayString(toAtoms(hash.get(key))));
			}
			s.insert(0, "{");
			s.append("}");
			return new Atom[] { Atom.newAtom(s.toString()) };
		}

		else {
			if (verboseOut != null && !(obj instanceof String)) {
				verboseOut.println("Ruby: coerced type " + obj.getClass().getName() + " to String");
			}
			return new Atom[] { Atom.newAtom(obj.toString()) };
		}

	}

	private String toArrayString(Atom[] atoms) {
		if (atoms.length == 1) {
			return atoms[0].toString();
		}
		else {
			return Arrays.toString(atoms);
		}
	}

	private class Utils {
		// JRuby has problems calling some Max Java methods, so I go back into Java-land to do it

		public Object atom(Object o) {
			Atom[] atoms = toAtoms(o);
			if (atoms.length == 1) {
				return atoms[0];
			}
			else {
				return atoms;
			}
		}

		public Atom[] emptyAtomArray() {
			return Atom.emptyArray;
		}

		public void puts(Object o) {
			Atom[] atoms = toAtoms(o);
			for (Atom a : atoms) {
				System.out.println(a);
			}
		}

		public void print(Object o) {
			Atom[] atoms = toAtoms(o);
			for (Atom a : atoms) {
				System.out.print(a);
			}
			flush();
		}

		public void error(Object o) {
			Atom[] atoms = toAtoms(o);
			for (Atom a : atoms) {
				MaxSystem.error(a.toString());
			}
		}

		public void flush() {
			System.out.println();
		}

		public void outlet(int outletIdx, Object output) {
			if (outletIdx >= maxObj.getNumOutlets()) {
				MaxSystem.error("Invalid outlet index " + outletIdx);
			}
			else {
				maxObj.outlet(outletIdx, toAtoms(output));
			}
		}
	}
}
