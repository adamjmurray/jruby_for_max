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
 * @version 0.9
 * @author Adam Murray (adam@compusition.com)
 */
public class MaxRubyAdapter {

	public static final String NIL = "nil";

	private ScriptEvaluator ruby;

	private LineBuilder code = new LineBuilder();

	private LineBuilder scriptFileInit = new LineBuilder();

	private final MaxObject maxObj;

	private final String maxObjVar;

	private Logger logger;

	private String context;

	private static String IGNORED_PATHS = RubyProperties.getIgnoredPaths();

	public MaxRubyAdapter(MaxObject maxObj) {
		this(maxObj, null);
	}

	public MaxRubyAdapter(MaxObject maxObj, String context) {
		if (context == null) {
			context = "__" + Integer.toHexString(maxObj.hashCode());
		}
		this.maxObj = maxObj;
		this.maxObjVar = "MaxObject_" + maxObj.hashCode();
		if (maxObj instanceof Logger) {
			this.logger = (Logger) maxObj;
		}
		this.context = context;
		ruby = ScriptEvaluatorFactory.getRubyEvaluator(context, maxObjVar, maxObj, "MaxObjects");

		// ruby.declarePersistentGlobal(maxObjVar, maxObj);
		// TODO: can check to see if this was already created in current context
		ruby.declareGlobal("Utils", new RubyUtils());
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
			// cleanup old context
			ScriptEvaluatorFactory.removeRubyEvaluator(this.context, maxObjVar);

			// init new context
			ruby = ScriptEvaluatorFactory.getRubyEvaluator(context, maxObjVar, maxObj, "MaxObjects");
			this.context = context;
		}
	}

	public void notifyDeleted() {
		ScriptEvaluatorFactory.removeRubyEvaluator(this.context, maxObjVar);
	}

	public void eval(CharSequence rubyCode) {
		eval(rubyCode, false);
	}

	/**
	 * @return an Atom or Atom[], it's up to the calling code to check the type
	 */
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

	public void init() {
		init(null, Atom.emptyArray);
	}

	public void init(File scriptFile, Atom[] args) {
		if (ruby.isInitialized()) {
			ScriptEvaluatorFactory.notifyContextDestroyedListener(context);
		}
		else {

		}
		ruby.resetContext();

		if (code.isEmpty()) {
			for (String path : MaxSystem.getSearchPath()) {
				if (!path.matches(IGNORED_PATHS)) addPath(path);
			}
			code.line(Utils.getFileAsString("ajm_ruby_initialize.rb"));
		}
		ruby.setInitialized(true);
		eval(code);

		if (scriptFile != null) {
			String script = Utils.getFileAsString(scriptFile);
			scriptFileInit.clear();
			scriptFileInit.line("$0 = " + quote(scriptFile));
			for (Atom arg : args) {
				scriptFileInit.line("$* << " + Utils.detokenize(arg));
			}
			eval(scriptFileInit, false);
			if (script != null) {
				eval(script);
			}
		}
	}

	private void addPath(String path) {
		code.line("$: << " + quote(path));
	}

	private String quote(Object o) {
		if (o == null) return NIL;
		String s = o.toString();
		if (s == null) return NIL;
		return "'" + s.replace("\\", "\\\\").replace("'", "\\'") + "'";
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
			// Not sure if there's a situation where we should coerce to a String,
			// because Max can only handle floats and JRuby always outputs Doubles.
			// Floating point accuracy is very different from the Long wrap-around problem,
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

		public void puts(RubyArray args) {
			for (Object o : args.toArray()) {
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
		}

		public void print(RubyArray args) {
			for (Object o : args.toArray()) {
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
		}

		public void error(RubyArray args) {
			for (Object o : args.toArray()) {
				Object atom = toAtoms(o);
				if (atom instanceof Atom[]) {
					for (Atom a : (Atom[]) atom) {
						System.err.println(a);
					}
				}
				else {
					System.err.println(atom);
				}
			}
		}

		public void flush() {
			System.out.println();
		}

		public void outlet(int outletIdx, RubyArray args) {
			if (outletIdx >= maxObj.getNumOutlets()) {
				MaxSystem.error("Invalid outlet index " + outletIdx);
			}
			else {
				Object atoms;
				if (args.size() == 1) {
					// avoid unnecessary nested arrays for things like "outlet 0, [1,2]"
					atoms = toAtoms(args.get(0));
				}
				else {
					atoms = toAtoms(args);
				}

				if (atoms instanceof Atom[]) {
					maxObj.outlet(outletIdx, (Atom[]) atoms);
				}
				else {
					maxObj.outlet(outletIdx, (Atom) atoms);
				}
			}
		}

		public void on_context_destroyed(String callback) {
			ScriptEvaluatorFactory.registerContextDestroyedListener(context, callback);
		}
	}
}
