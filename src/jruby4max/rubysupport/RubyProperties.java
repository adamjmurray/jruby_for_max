package jruby4max.rubysupport;

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

import org.jruby.CompatVersion;

import com.cycling74.max.MaxSystem;

/**
 * Manages all global settings for Ruby evaluation.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class RubyProperties {

	public static Properties properties;

	public static final String DEFAULT_INITIALIZER_FILES = "jruby_initialize.rb";

	private static String[] initializers;

	private static String[] loadpaths;

	static {
		// Initialize JRuby system properties and load the jruby_for_max.properties file
		try {
			String propsPath = MaxSystem.locateFile("jruby_for_max.properties");
			if (propsPath == null) {
				//MaxSystem.error("jruby4max.ruby.properties not found! Maybe jruby4max objects was not installed correctly?");
				properties = new Properties();				
			}
			else {
				File propFile = new File(propsPath);
				properties = new Properties();
				try {
					properties.load(new FileInputStream(propFile));
				}
				catch (IOException e) {
					throw new RuntimeException(e);
				}

				String jrubyHome = properties.getProperty("jruby.home");
				if(jrubyHome != null) {
					System.setProperty("jruby.home", jrubyHome);
				}
			}
		}
		catch (UnsatisfiedLinkError e) {
			// we're running outside of Max, probably for unit testing
			// can't call System.out here, Max stole it and it will just cause another UnsatisfiedLinkError
			// System.out.println("Using hard-coded defaults for RubyProperties.");
			properties = new Properties();
		}
	}
        
	public static String[] getInitializerFiles() {
		if (initializers == null) {
			initializers = properties.getProperty("ruby.initializers", DEFAULT_INITIALIZER_FILES).split(";");
			for (int i = 0; i < initializers.length; i++) {
				initializers[i] = initializers[i].trim();
			}
		}
		return initializers;
	}

	public static String[] getLoadPaths() {
		if (loadpaths == null) {
			String loadpathsProp = properties.getProperty("ruby.loadpaths");
			if (loadpathsProp == null || loadpathsProp.trim().equals("")) {
				loadpaths = new String[] {};
			}
			else {
				loadpaths = loadpathsProp.split(";");
				for (int i = 0; i < loadpaths.length; i++) {
					loadpaths[i] = loadpaths[i].trim();
				}
			}
		}
		return loadpaths;
	}
	
	public static CompatVersion getRubyVersion(String version) {
		if("1.9".equals(version)) {
  		return CompatVersion.RUBY1_9;
  	}
  	else if("1.8".equals(version)) {
  		return CompatVersion.RUBY1_8;
  	}
  	else return null;
	}
	
	public static String DEFAULT_RUBY_VERSION_STRING = "1.8";
	public static CompatVersion DEFAULT_RUBY_VERSION = CompatVersion.RUBY1_8;
}
