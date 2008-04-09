package ajm.util;

import java.io.File;

import com.cycling74.max.Executable;

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
		this.file = file;
		this.watchPeriod = watchPeriod;
		this.callback = callback;
		prevLastModified = file.lastModified();
		keepWatching = true;
	}

	public void run() {
		while (keepWatching) {
			long currLastMod = file.lastModified();
			if (currLastMod > prevLastModified) {
				callback.execute();
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

	public void stopWatching() {
		keepWatching = false;
	}
}
