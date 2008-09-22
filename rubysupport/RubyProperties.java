package ajm.rubysupport;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.cycling74.max.MaxSystem;

public class RubyProperties {

	public static Properties properties;

	static {
		String jRubyHome = System.getProperty("jruby.home");
		String jRubyLib = System.getProperty("jruby.lib");

		if (jRubyHome == null) {
			String pathToJRuby = MaxSystem.locateFile("jruby.jar");
			if (pathToJRuby != null) {
				File jRubyLibDir = new File(pathToJRuby).getParentFile();
				// Set jruby.home to the Max installation's java directory, where it will look for lib/ruby
				jRubyHome = jRubyLibDir.getParent();
				jRubyLib = jRubyLibDir.getPath();
				System.setProperty("jruby.home", jRubyHome);
				System.setProperty("jruby.lib", jRubyLib);
				System.setProperty("jruby.script", "jruby"); // seems pointless but gems won't work without it
			}
			else {
				MaxSystem.error("jruby.jar not found! Maybe it was not installed correctly?");
			}
		}

		File rubyDir = new File(jRubyLib, "ruby");
		File propFile = new File(rubyDir, "ajm.ruby.properties");
		properties = new Properties();
		try {
			properties.load(new FileInputStream(propFile));
		}
		catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	public static String getRubyEngine() {
		return properties.getProperty("ruby.engine", "ajm.rubysupport.BSFRubyEvaluator");
	}

	public static String getIgnoredPaths() {
		return properties.getProperty("paths.ignore", ".*/\\.svn/.*").trim();
	}

}
