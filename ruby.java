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

import ajm.util.MaxRubyEvaluator;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxQelem;

/**
 * The ajm.ruby MaxObject
 * 
 * @version 0.75
 * @author Adam Murray (adam@compusition.com)
 */
public class ruby extends AbstractMaxObject {

	boolean verbose = false;
	int evaloutlet = 0;
	boolean autoinit = false;

	protected MaxRubyEvaluator ruby = new MaxRubyEvaluator(this);

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
		declareAttribute("autoinit");

		if (getAttrBool("verbose")) {
			ruby.setVerboseOut(System.out);
		}
	}

	/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
	   Thus autoinit is false by default.
	   The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
	   The hang delay got much better with JRuby 1.1. */
	@Override
	protected MaxQelem getInitializer() {
		return new MaxQelem(new Executable() {
			// see discussion at
			// http://www.cycling74.com/forums/index.php?t=msg&th=31680&rid=5266
			// we need to defer execution of ruby.init() so we can resolve the path to this patch properly
			public void execute() {
				if (autoinit) {
					post("initing");
					ruby.init();
				}
			}
		});
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

	public void call(Atom[] args) {
		if (args.length > 0) {
			StringBuilder s = new StringBuilder();
			s.append(args[0]).append("(");
			for (int i = 1; i < args.length; i++) {
				if (i > 1) {
					s.append(",");
				}
				s.append(args[i]);
			}
			s.append(")");
			eval(s);
		}
	}

	public void scriptfile(String path) {
		File script = new File(path);
		post(script + ": " + script.exists());
	}

	public void bang() {
		eval("bang()");
	}

	public void list(Atom[] args) {
		StringBuilder s = new StringBuilder("list([");
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				s.append(",");
			}
			s.append(args[i]);
		}
		s.append("])");
		eval(s);
	}

	public void anything(String msg, Atom[] args) {
		eval(toString(msg, args));
	}

	protected void eval(CharSequence input) {
		try {
			Object val = ruby.eval(input);
			if (evaloutlet >= 0) {
				// this check occurs here instead of evaloutlet() because we want
				// to allow negative numbers to suppress eval output

				if (val instanceof Atom[]) {
					outlet(evaloutlet, (Atom[]) val);
				}
				else {
					outlet(evaloutlet, (Atom) val);
				}
			}
		}
		catch (BSFException e) {
			err("could not evaluate: " + input);
		}
	}
}
