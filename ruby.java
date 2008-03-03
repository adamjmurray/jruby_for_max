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

import java.io.File;

import org.apache.bsf.BSFException;

import ajm.util.RubyEvaluator;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

/**
 * The ajm.ruby MaxObject
 * 
 * @version 0.75
 * @author Adam Murray (adam@compusition.com)
 */
public class ruby extends AbstractMaxObject {

	boolean verbose = false;
	int evaloutlet = 0;

	protected RubyEvaluator ruby = new RubyEvaluator();
	private AbstractMaxObject thisObj = this;

	/**
	 * The Constructor
	 * 
	 * @param args
	 *            1 optional integer arg specifies the number of outlets
	 * 
	 * @throws BSFException
	 *             if a problem occurs evaluating the Ruby initialization code
	 */
	public ruby(Atom[] args) {
		int outlets = 1;
		if (args.length > 0 && args[0].isInt() && args[0].getInt() > 1) {
			outlets = args[0].getInt();
		}
		declareIO(1, outlets);
		createInfoOutlet(false);

		declareAttribute("verbose", "getverbose", "verbose");
		declareAttribute("evaloutlet", "getevaloutlet", "evaloutlet");

		if (getAttrBool("verbose")) {
			ruby.setVerboseOut(System.out);
		}
		initRuby();
	}

	protected ruby() {
	}

	private static CodeBuilder code = new CodeBuilder();

	public static final String PROP_JRUBY_HOME = "jruby.home";

	protected void initRuby() {
		if (System.getProperty(PROP_JRUBY_HOME) == null) {
			String pathToJRuby = MaxSystem.locateFile("jruby.jar");
			if (pathToJRuby != null) {
				File jRubyDir = new File(pathToJRuby).getParentFile();
				// Set jruby.home to the Max installation's java directory, where it will look for lib/ruby
				System.setProperty(PROP_JRUBY_HOME, jRubyDir.getParent());
			}
		}

		if (/*code.isEmpty()*/true) {
			// now we need to zap the object before testing changes here!

			for (String path : MaxSystem.getSearchPath()) {
				// did timing tests with this commented out, saves us a bout 12 ms (of ~215 ms eval time)
				code.line("$LOAD_PATH << '" + path.replace("'", "\\'") + "'");
			}

			code.line("def puts *params");
			code.line("  $Utils.puts params");
			code.line("end");

			code.line("def print *params");
			code.line("  $Utils.print params");
			code.line("end");

			code.line("def flush");
			code.line("  $Utils.flush");
			code.line("end");

			code.line("def atom obj");
			code.line("  if obj==nil");
			code.line("    $Utils.emptyAtomArray");
			code.line("  else");
			code.line("    $Utils.atom obj");
			code.line("  end");
			code.line("end");

			code.line("def error *params");
			code.line("  $Utils.error params");
			code.line("end");

			code.line("def outlet n, *params");
			code.line("  $Utils.outlet n, params");
			code.line("end");

			// Placeholders for Max hooks:
			code.line("def bang");
			code.line("  puts '" + this.getClass().getName()
					+ " received bang\nRedefine bang() to do something useful.'");
			code.line("end");

			code.line("def list(array)");
			code.line("  puts '" + this.getClass().getName()
					+ " received: list ' + array.inspect + '\nRedefine list(array) to do something useful.'");
			code.line("end");
		}

		try {
			ruby.declareBean("MaxObject", this, this.getClass());
			ruby.declareBean("Utils", new Utils(), Utils.class);

			long time = System.nanoTime();
			ruby.eval(code);
			post("evaling ruby took " + (System.nanoTime() - time));

		}
		catch (BSFException e) {
			throw new RuntimeException(e);
		}
	}

	public void bang() {
		eval("bang");
	}

	public int getevaloutlet() {
		return evaloutlet;
	}

	public void evaloutlet(int evaloutlet) {
		if (evaloutlet >= getNumOutlets()) {
			err("Invalid evaloutlet " + evaloutlet);
		}
		else {
			this.evaloutlet = evaloutlet;
		}
	}

	public boolean getverbose() {
		return verbose;
	}

	public void verbose(boolean verbose) {
		this.verbose = verbose;
		ruby.setVerboseOut(verbose ? System.out : null);
	}

	public void list(Atom[] args) {
		StringBuilder s = new StringBuilder("list [");
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				s.append(",");
			}
			s.append(args[i]);
		}
		s.append("]");

		eval(s);
	}

	public void anything(String msg, Atom[] args) {
		if (msg.startsWith("call:")) {
			StringBuilder s = new StringBuilder(msg.substring(5));
			int i = 0;
			if (s.length() == 0 && args.length > 0) {
				s.append(args[0]);
				i++;
			}
			s.append("(");
			boolean first = true;
			for (; i < args.length; i++) {
				if (first) {
					first = false;
				}
				else {
					s.append(",");
				}
				s.append(args[i]);
			}
			s.append(")");
			eval(s);
		}
		else {
			eval(toString(msg, args));
		}
	}

	protected void eval(CharSequence input) {
		try {
			Atom[] value = ruby.evalToAtoms(input);
			if (evaloutlet >= 0) {
				outlet(evaloutlet, value);
			}
		}
		catch (BSFException e) {
			err("could not evaluate: " + input);
		}
	}

	private static class CodeBuilder implements CharSequence {
		private StringBuilder code = new StringBuilder();

		public void line(String s) {
			code.append(s).append("\n");
		}

		public String toString() {
			return code.toString();
		}

		public boolean isEmpty() {
			return code.length() == 0;
		}

		public int length() {
			return code.length();
		}

		public char charAt(int index) {
			return code.charAt(index);
		}

		public CharSequence subSequence(int start, int end) {
			return code.subSequence(start, end);
		}
	}

	private class Utils {
		// JRuby has problems calling some Max Java methods, so I go back into Java-land to do it

		public Object atom(Object o) {
			Atom[] atoms = ruby.toAtoms(o);
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
			Atom[] atoms = ruby.toAtoms(o);
			for (Atom a : atoms) {
				System.out.println(a);
			}
		}

		public void print(Object o) {
			Atom[] atoms = ruby.toAtoms(o);
			for (Atom a : atoms) {
				System.out.print(a);
			}
			flush();
		}

		public void error(Object o) {
			Atom[] atoms = ruby.toAtoms(o);
			for (Atom a : atoms) {
				thisObj.err(a.toString());
			}
		}

		public void flush() {
			System.out.println();
		}

		public void outlet(int outletIdx, Object output) {
			if (outletIdx >= thisObj.getNumOutlets()) {
				err("Invalid outlet index " + outletIdx);
			}
			else {
				thisObj.outlet(outletIdx, ruby.toAtoms(output));
			}
		}
	}
}
