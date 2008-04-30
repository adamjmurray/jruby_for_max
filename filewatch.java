package ajm;

import java.io.File;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

import ajm.maxsupport.AbstractMaxObject;
import ajm.util.FileWatcher;
import ajm.util.Utils;

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
