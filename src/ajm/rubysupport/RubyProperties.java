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
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.cycling74.max.MaxSystem;

/**
 * Manages all global settings for Ruby evaluation.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class RubyProperties {

	public static Properties properties;

	public static final String DEFAULT_RUBY_ENGINE = "ajm.rubysupport.BSFRubyEvaluator";

	public static final String DEFAULT_INITIALIZER_FILES = "ajm_ruby_initialize.rb";

	public static final String DEFAULT_LOAD_PATHS = "";

	public static String getRubyEngine() {
		return properties.getProperty("ruby.engine", DEFAULT_RUBY_ENGINE).trim();
	}

	public static String[] getInitializerFiles() {
		String[] initializers = properties.getProperty("ruby.initializers", DEFAULT_INITIALIZER_FILES).split(";");
		for (int i = 0; i < initializers.length; i++) {
			initializers[i] = initializers[i].trim();
		}
		return initializers;
	}

	public static String[] getLoadPaths() {
		String[] loadpaths = properties.getProperty("ruby.loadpaths", DEFAULT_LOAD_PATHS).split(";");
		for (int i = 0; i < loadpaths.length; i++) {
			loadpaths[i] = loadpaths[i].trim();
		}
		return loadpaths;
	}

	static {
		// Initialize JRuby system properties and load the ajm.ruby.properties file
		try {
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

			File propFile = new File(jRubyLib, "ajm.ruby.properties");
			properties = new Properties();
			try {
				properties.load(new FileInputStream(propFile));
			}
			catch (IOException e) {
				throw new RuntimeException(e);
			}
		}
		catch (UnsatisfiedLinkError e) {
			// we're running outside of Max, probably for unit testing
			// can't call System.out here, Max stole it and it will just cause another UnsatisfiedLinkError
			// System.out.println("Using hard-coded defaults for RubyProperties.");
			properties = new Properties();
		}
	}
}
