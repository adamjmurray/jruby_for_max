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
import java.util.Date;

import ajm.maxsupport.AbstractMaxRubyObject;
import ajm.maxsupport.TextBlock;
import ajm.rubysupport.RubyException;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

/**
 * The ajm.ruby MaxObject
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class ruby extends AbstractMaxRubyObject {

	private int evaloutlet = 0;

	private String scriptFilePath;
	private File scriptFile;
	private Atom[] scriptFileArgs;

	/**
	 * The Constructor
	 * 
	 * @param args
	 *            1 optional integer arg specifies the number of outlets
	 * 
	 */
	public ruby(Atom[] args) {
		super();

		declareAttribute("evaloutlet", "getevaloutlet", "evaloutlet");
		declareAttribute("scriptfile", "getscriptfile", "scriptfile");

		int outlets = 1;
		if (args.length > 0 && args[0].isInt() && args[0].getInt() > 1) {
			outlets = args[0].getInt();
		}
		declareIO(1, outlets);
		createInfoOutlet(false);
	}

	@Override
	protected Executable getInitializer() {
		return new RubyInitializer();
	}

	protected class RubyInitializer extends DefaultRubyInitializer {
		@Override
		public void execute() {
			super.execute();
			if (scriptFile != null) {
				loadFile();
			}
		}
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

	public String getscriptfile() {
		return scriptFilePath;
	}

	public void scriptfile(Atom[] args) {
		if (args != null && args.length > 0) {
			String path = args[0].toString();
			scriptFile = Utils.getFile(path);
			if (scriptFile != null) {
				scriptFileArgs = Atom.removeFirst(args);
				if (initialized) {
					loadFile();
				}
				// else it'll be handled by the Initializer
			}
		}
	}

	private synchronized void loadFile() {
		info("loading script '" + scriptFile + "' on " + new Date());
		try {
			ruby.init(scriptFile, scriptFileArgs);
		}
		catch (RubyException e) {
			err("Error evaluating script file: " + scriptFile.getPath());
		}
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
		StringBuilder input = new StringBuilder();
		input.append(Utils.detokenize(msg));
		for (Atom arg : args) {
			input.append(" ").append(Utils.detokenize(arg.toString()));
		}
		eval(input.toString().trim());
	}

	public void text(String script) {
		eval(script.trim());
	}

	public void textblock(String name) {
		String script = TextBlock.get(name);
		if (script != null) {
			eval(script);
		}
		else {
			error("No textblock named '" + name + "'");
		}
	}

	protected void eval(CharSequence input) {
		try {
			if (ruby == null) {
				err("not initialized yet. If you are loadbanging a script, try using a deferlow.");
				return;
			}
			Object val = ruby.eval(input, evaloutlet >= 0);
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
		catch (RubyException e) {
			err("could not evaluate: " + input);
		}
	}
}
