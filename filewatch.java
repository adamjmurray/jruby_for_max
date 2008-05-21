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

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

import ajm.maxsupport.AbstractMaxObject;
import ajm.util.FileWatcher;
import ajm.util.Utils;

@Deprecated
public class filewatch extends AbstractMaxObject {

	private String filePath;
	private File file;
	private FileWatcher fileWatcher;

	/**
	 * The Constructor
	 * 
	 * @param args
	 *            1 optional integer arg specifies the number of outlets
	 * 
	 */
	public filewatch(Atom[] args) {
		super();

		declareAttribute("file", "getfile", "file");

		declareIO(1, 1);
		createInfoOutlet(false);
	}

	/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
	   Thus autoinit is false by default.
	   The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
	   The hang delay got much shorter with JRuby 1.1. */
	@Override
	protected Executable getInitializer() {
		return new FilewatchInitializer();
	}

	protected class FilewatchInitializer extends DefaultInitializer {
		@Override
		public void execute() {
			System.out.println("FOO");
			fileWatcher = new FileWatcher(null, fileWatcherCallback);
			if (file != null) {
				watch(file);
			}
			initialized = true;
		}
	}

	@Override
	public void notifyDeleted() {
		if (fileWatcher != null) {
			fileWatcher.stopWatching();
		}
		super.notifyDeleted();
	}

	private Executable fileWatcherCallback = new Executable() {
		public void execute() {
			outlet(0, filePath);
		}
	};

	private void watch(File file) {
		fileWatcher.setFile(file);
		// fileWatcher.run();
	}

	public void stop() {
		fileWatcher.stopWatching();
	}

	public String getfile() {
		return filePath;
	}

	public void file(String path) {
		System.out.println("HERE");
		file = Utils.getFile(path);
		if (file != null) {
			System.out.println("Found file: " + file);
			watch(file);
		}
		else {
			stop();
		}
	}

}
