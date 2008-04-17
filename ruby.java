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
import ajm.rubysupport.RubyException;
import ajm.util.FileWatcher;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxQelem;
import com.cycling74.max.MaxSystem;

/**
 * The ajm.ruby MaxObject
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public class ruby extends AbstractMaxRubyObject {

	private int evaloutlet = 0;
	private boolean autoinit = false;
	private boolean autowatch = false;

	private String scriptFilePath;
	private File scriptFile;
	private FileWatcher fileWatcher;

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
		declareAttribute("autoinit");
		declareAttribute("scriptfile", "getscriptfile", "scriptfile");
		declareAttribute("autowatch", "getautowatch", "autowatch");

		int outlets = 1;
		if (args.length > 0 && args[0].isInt() && args[0].getInt() > 1) {
			outlets = args[0].getInt();
		}
		declareIO(1, outlets);
		createInfoOutlet(false);
	}

	/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
	   Thus autoinit is false by default.
	   The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
	   The hang delay got much shorter with JRuby 1.1. */
	@Override
	protected MaxQelem getInitializer() {
		return new MaxQelem(new Executable() {
			// see discussion at
			// http://www.cycling74.com/forums/index.php?t=msg&th=31680&rid=5266
			// we need to defer execution of ruby.init() so we can resolve the path to this patch properly
			public void execute() {
				contructRubyEvaluator();
				if (scriptFile != null) {
					loadFile(); // this initializes ruby so we can ignore autoinit
					initFileWatcher();
				}
				else if (autoinit) {
					ruby.init();
				}
				initialized = true;
			}
		});
	}

	@Override
	public void notifyDeleted() {
		if (fileWatcher != null) {
			fileWatcher.stopWatching();
		}
		super.notifyDeleted();
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

	public boolean getautowatch() {
		return autowatch;
	}

	public void autowatch(boolean autowatch) {
		this.autowatch = autowatch;
		if (initialized) {
			if (autowatch) {
				initFileWatcher();
			}
			else {
				stopFileWatcher();
			}
		}
	}

	private void initFileWatcher() {
		// TODO: I think this check won't work if the scriptfile changes
		// Need to let me set the file being watched without nulling out the file watcher!
		if (fileWatcher == null && scriptFile != null && autowatch) {
			fileWatcher = new FileWatcher(scriptFile, fileWatcherCallback);
			fileWatcher.start();
		}
	}

	private void stopFileWatcher() {
		if (fileWatcher != null) {
			fileWatcher.stopWatching();
			fileWatcher = null;
		}
	}

	private Executable fileWatcherCallback = new Executable() {
		public void execute() {
			loadFile();
		}
	};

	public String getscriptfile() {
		return scriptFilePath;
	}

	public void scriptfile(String path) {
		if (path == null || path.length() == 0) {
			path = MaxSystem.openDialog();
		}
		scriptFilePath = path;

		if (scriptFilePath != null) {
			scriptFile = getFile(path);
			if (scriptFile != null) {
				if (initialized) {
					loadFile();
					initFileWatcher();
				}
			}
			else err("File not found: " + path);
		}
		else {
			scriptFile = null;
		}

		if (scriptFile == null) {
			stopFileWatcher();
		}
	}

	private synchronized void loadFile() {
		String script = getFileAsString(scriptFile);
		if (script != null) {
			info("loading script '" + scriptFile + "' on " + new Date());
			try {
				ruby.init(script);
			}
			catch (RubyException e) {
				err("Error evaluating script file: " + scriptFilePath);
			}
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
		input.append(atomToString(msg));
		for (Atom arg : args) {
			input.append(" ").append(atomToString(arg.toString()));
		}
		eval(input);
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
		catch (RubyException e) {
			err("could not evaluate: " + input);
		}
	}
}
