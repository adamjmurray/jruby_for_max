package ajm.rubysupport;

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

import org.jruby.RubyArray;
import org.jruby.RubyHash;

import ajm.maxsupport.Atomizer;
import ajm.util.LineBuilder;
import ajm.util.Logger;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

/**
 * The bridge between Max and Ruby.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class MaxRubyEvaluator {

	public static final String NIL = "nil";

	public static final String PROP_JRUBY_HOME = "jruby.home";

	private RubyEvaluator ruby;

	private LineBuilder code = new LineBuilder();

	private LineBuilder scriptFileInit = new LineBuilder();

	private final MaxObject maxObj;

	private final String maxObjVar;

	private Logger logger;

	private String context;

	private String OMIT_PATHS = ".*/\\.svn/.*";

	public MaxRubyEvaluator(MaxObject maxObj) {
		this(maxObj, null);
	}

	public MaxRubyEvaluator(MaxObject maxObj, String context) {
		if (context == null) {
			context = "__" + Integer.toHexString(maxObj.hashCode());
		}
		this.maxObj = maxObj;
		this.maxObjVar = "MaxObject_" + maxObj.hashCode();
		if (maxObj instanceof Logger) {
			this.logger = (Logger) maxObj;
		}
		this.context = context;
		ruby = RubyEvaluatorFactory.getRubyEvaluator(context);

		// System.out.println("Got ruby evaluator " + ruby);

		ruby.declarePersistentGlobal(maxObjVar, maxObj);
	}

	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		if (!Utils.equals(this.context, context)) {
			RubyEvaluatorFactory.removeRubyEvaluator(this.context);
			ruby.undeclareGlobal(maxObjVar);
			ruby = RubyEvaluatorFactory.getRubyEvaluator(context);
			ruby.declarePersistentGlobal(maxObjVar, maxObj);
			this.context = context;
		}
	}

	public void notifyDeleted() {
		RubyEvaluatorFactory.removeRubyEvaluator(this.context);
	}

	/**
	 * @return an Atom or Atom[], it's up to the calling code to check the type
	 */
	public Object eval(CharSequence rubyCode) {
		return eval(rubyCode, true);
	}

	public Object eval(CharSequence rubyCode, boolean returnResult) {
		if (!ruby.isInitialized()) {
			init();
		}
		Object result;
		synchronized (ruby) {
			// Set the $MaxObject global correctly.
			// This eval() needed when using shared contexts:
			ruby.eval("$MaxObject = $" + maxObjVar);
			result = ruby.eval(rubyCode);
		}
		if (returnResult) {
			return toAtoms(result);
		}
		else {
			return null;
		}
	}

	/**
	 * Less efficient version of eval will always return an Atom[]
	 */
	public Atom[] evalToAtoms(CharSequence rubyCode) {
		Object o = eval(rubyCode);
		if (o instanceof Atom[]) {
			return (Atom[]) o;
		}
		else {
			return new Atom[] { (Atom) o };
		}
	}

	private void addPath(String path) {
		code.line("$: << '" + path.replace("\\", "\\\\").replace("'", "\\'") + "'");
	}

	public void init() {
		init(null);
	}

	public void init(File scriptFile) {
		init(scriptFile, Atom.emptyArray);
	}

	public void init(File scriptFile, Atom[] args) {
		if (ruby.isInitialized()) {
			RubyEvaluatorFactory.notifyContextDestroyedListener(context);
		}
		ruby.resetContext();

		if (System.getProperty(PROP_JRUBY_HOME) == null) {
			String pathToJRuby = MaxSystem.locateFile("jruby.jar");
			if (pathToJRuby != null) {
				File jRubyLibDir = new File(pathToJRuby).getParentFile();
				// Set jruby.home to the Max installation's java directory, where it will look for lib/ruby
				System.setProperty(PROP_JRUBY_HOME, jRubyLibDir.getParent());
				System.setProperty("jruby.lib", jRubyLibDir.getPath());
				System.setProperty("jruby.script", "jruby"); // seems pointless but gems won't work without it
			}
			else {
				MaxSystem.error("jruby.jar not found! Maybe it was not installed correctly?");
			}
		}

		if (code.isEmpty()) {
			buildInitializationCode();
		}

		ruby.declareGlobal("Utils", new RubyUtils());
		ruby.setInitialized(true);
		eval(code);

		if (scriptFile != null) {
			String script = Utils.getFileAsString(scriptFile);
			scriptFileInit.clear();
			scriptFileInit.line("$0 = %q{" + scriptFile + "}");
			for (Atom arg : args) {
				scriptFileInit.line("$* << " + Utils.detokenize(arg));
			}
			eval(scriptFileInit);
			if (script != null) {
				eval(script);
			}
		}
	}

	private void buildInitializationCode() {
		// Setup the path:
		for (String path : MaxSystem.getSearchPath()) {
			if (!path.matches(OMIT_PATHS)) {
				// if (!OMIT_PATHS.matcher(path).matches()) {
				addPath(path);
			}
		}

		// Setup the default functions:
		code.line("def puts(*params)");
		code.line("  $Utils.puts(*params)");
		code.line("end");

		code.line("def print(*params)");
		code.line("  $Utils.print(*params)");
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
		code.line("  $Utils.error(*params)");
		code.line("end");

		code.line("def outlet(n, *params)");
		code.line("  $Utils.outlet(n, *params)");
		code.line("end");

		for (int i = 0; i < 10; i++) {
			code.line("def out" + i + "(*params)");
			code.line("  $Utils.outlet(" + i + ", *params)");
			code.line("end");
		}

		code.line("def on_context_destroyed(callback)");
		code.line("  $Utils.on_context_destroyed(callback.to_s)");
		code.line("end");

		// Placeholders for Max hooks:
		code.line("def bang");
		code.line("  'bang'");
		code.line("end");

		code.line("def list(array)");
		code.line("  array");
		code.line("end");

		// for use with shared contexts:
		code.line("$LocalStorage = {}");
		code.line("def setLocal(name,obj)");
		code.line("  storage = $LocalStorage[$MaxObject.hashCode]");
		code.line("  if(!storage)");
		code.line("    storage = {}");
		code.line("    $LocalStorage[$MaxObject.hashCode] = storage");
		code.line("  end");
		code.line("  storage[name] = obj");
		code.line("end");
		code.line("def getLocal(name)");
		code.line("  storage = $LocalStorage[$MaxObject.hashCode]");
		code.line("  storage[name] if storage");
		code.line("end");
	}

	/**
	 * Converts the result of a Ruby evaluation into Max data types (Atoms)
	 * 
	 * @param obj -
	 *            A Ruby value
	 * @return an Atom or an Atom[]. The calling code needs to figure out what type this is and handle it appropriately
	 */
	public Object toAtoms(Object obj) {
		return toAtoms(obj, false);
	}

	private Object toAtoms(Object obj, boolean nested) {

		/*
		if (obj != null) {
			System.out.println("Class: " + obj.getClass().getName());
		}*/

		if (obj == null) {
			return Atom.newAtom("nil");
		}
		else if (obj instanceof Atom || obj instanceof Atom[]) {
			return obj;
		}
		else if (obj instanceof Atomizer) {
			return ((Atomizer) obj).toAtom();
		}
		else if (obj instanceof Double || obj instanceof Float) {
			// Not sure if there's a situation where we should coerce to a String instead
			// (Max can only handle floats, JRuby seems to always output Doubles).
			// Floating point accuracy is very different the Long wrap-around problem,
			// so letting it downcast seems ok:
			return Atom.newAtom(((Number) obj).doubleValue());
		}
		else if (obj instanceof Long || obj instanceof Integer || obj instanceof Short) {
			long val = ((Number) obj).longValue();
			if (val > Integer.MAX_VALUE || val < Integer.MIN_VALUE) {
				if (logger != null) {
					logger.info("coerced type " + obj.getClass().getName() + " to String");
				}
				return Atom.newAtom(obj.toString());
			}
			else return Atom.newAtom(val);
		}

		else if (obj instanceof CharSequence) {
			return Atom.newAtom(obj.toString());
		}

		else if (obj instanceof Boolean) {
			return Atom.newAtom(((Boolean) obj).booleanValue());
		}

		else if (obj instanceof RubyArray) {
			RubyArray array = (RubyArray) obj;

			Object[] atomsArray = new Object[array.size()];
			boolean isFlatArray = true;
			for (int i = 0; i < array.size(); i++) {
				Object val = toAtoms(array.get(i), true);
				if (!(val instanceof Atom)) {
					isFlatArray = false;
				}
				atomsArray[i] = val;
			}

			if (nested == true || isFlatArray) {
				Atom[] atoms = new Atom[array.size()];
				for (int i = 0; i < atomsArray.length; i++) {
					atoms[i] = (Atom) atomsArray[i];
				}
				return atoms;
			}
			else {
				if (logger != null) {
					logger.info("coerced a nested Array to String");
				}
				return Atom.newAtom(toArrayString(atomsArray));
			}
		}

		else if (obj instanceof RubyHash) {
			if (logger != null) {
				logger.info("coerced a Hash to String");
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
			if (logger != null) {
				logger.info("coerced type " + obj.getClass().getName() + " to String");
			}
			return Atom.newAtom(obj.toString());
		}

	}

	private String toArrayString(Object o) {
		StringBuilder s = new StringBuilder();
		buildArrayString(o, s);
		return s.toString();
	}

	private void buildArrayString(Object o, StringBuilder s) {
		if (o instanceof Object[]) {
			s.append("[");
			Object[] objs = (Object[]) o;
			for (int i = 0; i < objs.length; i++) {
				if (i > 0) {
					s.append(",");
				}
				buildArrayString(objs[i], s);
			}
			s.append("]");
		}
		else {
			s.append(o.toString());
		}
	}

	private class RubyUtils {
		// JRuby has problems calling some Max Java methods, so I go back into Java-land to do it
		// not sure if all of these are necessary anymore, but it works!

		public Object atom(Object o) {
			return toAtoms(o);
		}

		public Atom[] emptyAtomArray() {
			return Atom.emptyArray;
		}

		public void puts(Object o) {
			Object atom = toAtoms(o);
			if (atom instanceof Atom[]) {
				for (Atom a : (Atom[]) atom) {
					System.out.println(a);
				}
			}
			else {
				System.out.println(atom);
			}
		}

		public void print(Object o) {
			Object atom = toAtoms(o);
			if (atom instanceof Atom[]) {
				for (Atom a : (Atom[]) atom) {
					System.out.print(a);
				}
			}
			else {
				System.out.print(atom);
			}
		}

		public void error(Object o) {
			Object atom = toAtoms(o);
			if (atom instanceof Atom[]) {
				for (Atom a : (Atom[]) atom) {
					MaxSystem.error(a.toString());
				}
			}
			else {
				MaxSystem.error(atom.toString());
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
				Object atoms = toAtoms(output);
				if (atoms instanceof Atom[]) {
					maxObj.outlet(outletIdx, (Atom[]) atoms);
				}
				else {
					maxObj.outlet(outletIdx, (Atom) atoms);
				}
			}
		}

		public void on_context_destroyed(String callback) {
			RubyEvaluatorFactory.registerContextDestroyedListener(context, callback);
		}
	}
}
