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

import com.cycling74.max.Executable;

/**
 * File watch mechanism for Max objects. Executes a callback when the file modified date changes.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class FileWatcher extends Thread {

	public final static long DEFAULT_WATCH_PERIOD = 2500; // 2.5 seconds, for no particular reason

	private File file;
	private long prevLastModified;
	private long watchPeriod;
	private Executable callback;

	private volatile boolean keepWatching;

	public FileWatcher(File file, Executable callback) {
		this(file, callback, DEFAULT_WATCH_PERIOD);
	}

	public FileWatcher(File file, Executable callback, long watchPeriod) {
		setFile(file);
		setWatchPeriod(watchPeriod);
		setCallback(callback);
	}

	public void setFile(File file) {
		this.file = file;
		if (file == null) {
			prevLastModified = -1;
		}
		else {
			prevLastModified = file.lastModified();
		}
	}

	public File getFile() {
		return file;
	}

	public long getWatchPeriod() {
		return watchPeriod;
	}

	public void setWatchPeriod(long watchPeriod) {
		this.watchPeriod = watchPeriod;
	}

	public Executable getCallback() {
		return callback;
	}

	public void setCallback(Executable callback) {
		this.callback = callback;
	}

	public void run() {
		keepWatching = true;
		while (keepWatching) {
			if (file != null) {
				long currLastMod = file.lastModified();
				System.out.println("Last modified = " + currLastMod);
				if (currLastMod > prevLastModified) {
					try {
						callback.execute();
					}
					catch (Exception e) {
						System.err.println(e.getMessage());
					}
					prevLastModified = currLastMod;
				}
				try {
					Thread.sleep(watchPeriod);
				}
				catch (InterruptedException e) {
					System.err.println("FileWatcher interrupted (harmless, but probably shouldn't have happened)");
					e.printStackTrace();
				}
			}
		}
	}

	public void stopWatching() {
		keepWatching = false;
	}
}
