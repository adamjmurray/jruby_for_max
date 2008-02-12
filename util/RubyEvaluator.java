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

import java.io.PrintStream;
import java.util.Arrays;

import org.apache.bsf.BSFException;
import org.apache.bsf.BSFManager;
import org.jruby.RubyArray;
import org.jruby.RubyHash;

import com.cycling74.max.Atom;

/**
 * JRuby/BSF wrapper.
 * 
 * @version 0.7
 * @author Adam Murray (adam@compusition.com)
 */
public class RubyEvaluator {

	private BSFManager manager;
	private PrintStream verboseOut;

	public RubyEvaluator() {
		BSFManager.registerScriptingEngine("ruby", "org.jruby.javasupport.bsf.JRubyEngine", new String[] { "rb" });
		manager = new BSFManager();
	}

	public PrintStream getVerboseOut() {
		return verboseOut;
	}

	public void setVerboseOut(PrintStream verboseOut) {
		this.verboseOut = verboseOut;
	}

	public void declareBean(String variableName, Object obj, Class clazz) throws BSFException {
		manager.declareBean(variableName, obj, clazz);
	}

	public Object eval(String rubyCode) throws BSFException {
		return manager.eval("ruby", getClass().getName(), 1, 1, rubyCode);
	}

	public Atom[] evalToAtoms(String rubyCode) throws BSFException {
		return toAtoms(eval(rubyCode));
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
}
