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

import java.io.File;

import org.apache.bsf.BSFException;

import ajm.util.RubyEvaluator;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

/**
 * The ajm.ruby MaxObject
 * 
 * @version 0.7
 * @author Adam Murray (dev@compusition.com)
 */
public class ruby extends AbstractMaxObject {

	boolean verbose = false;
	int evaloutlet = 0;

	private RubyEvaluator ruby;
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
	public ruby(Atom[] args) throws BSFException {
		int outlets = 1;
		if (args.length > 0 && args[0].isInt() && args[0].getInt() > 1) {
			outlets = args[0].getInt();
		}
		declareIO(1, outlets);
		createInfoOutlet(false);

		declareAttribute("verbose", "getverbose", "verbose");
		declareAttribute("evaloutlet", "getevaloutlet", "evaloutlet");

		String pathToJRuby = MaxSystem.locateFile("jruby.jar");
		String pathToCustomRubyScripts = null;
		if (pathToJRuby != null) {
			File jRubyDir = new File(pathToJRuby).getParentFile();
			// Set jruby.home to the Max installation's java directory, where it will look for lib/ruby
			System.setProperty("jruby.home", jRubyDir.getParent());
			pathToCustomRubyScripts = new File(jRubyDir, "ruby").toString();
		}

		ruby = new RubyEvaluator();
		if (getAttrBool("verbose")) {
			ruby.setVerboseOut(System.out);
		}
		ruby.declareBean("MaxObject", this, MaxObject.class);
		ruby.declareBean("Utils", new Utils(), Utils.class);

		CodeBuilder code = new CodeBuilder();

		if (pathToCustomRubyScripts != null) {
			code.line("$LOAD_PATH << '" + pathToCustomRubyScripts.replace("'", "\\'") + "'");
		}

		code.line("def puts str");
		code.line("  $Utils.puts str");
		code.line("end");

		code.line("def print str");
		code.line("  $Utils.print str");
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

		code.line("def flush");
		code.line("  $Utils.flush");
		code.line("end");

		code.line("def error str");
		code.line("  $Utils.error str");
		code.line("end");

		code.line("def outlet n, *params");
		code.line("  $Utils.outlet n, params");
		code.line("end");

		ruby.eval(code.toString());
	}

	/*
	 * protected MaxQelem getInitializer() { return new MaxQelem(new Executable() { public void execute() { } }); }
	 */

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
		eval(toString(args));
	}

	public void anything(String msg, Atom[] args) {
		eval(toString(msg, args));
	}

	private void eval(String input) {
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

	private class CodeBuilder {
		private StringBuilder code = new StringBuilder();

		public void line(String s) {
			code.append(s).append("\n");
		}

		public String toString() {
			return code.toString();
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
			System.out.println(o.toString());
		}

		public void print(Object o) {
			System.out.print(o.toString());
		}

		public void error(Object o) {
			thisObj.err(o.toString());
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
