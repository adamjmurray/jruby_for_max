package jruby4max.rubysupport;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

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

import com.cycling74.max.MaxSystem;

import jruby4max.util.Utils;

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
			String propsPath = MaxSystem.locateFile( "jruby_for_max.properties" );
			if( propsPath == null ) {
				MaxSystem.error("jruby_for_max.properties not found! Maybe jruby4max objects was not installed correctly? Created a default instance.");
				properties = new Properties();
			}
			else {
				File propFile = new File( propsPath );
				properties = new Properties();
				try {
					properties.load( new FileInputStream( propFile ) );
				} catch(IOException e) {
					throw new RuntimeException( e );
				}

				String jrubyHome = properties.getProperty( "jruby.home" );
				if( jrubyHome != null ) {
					System.setProperty( "jruby.home", jrubyHome );
				}
			}
		} catch(UnsatisfiedLinkError e) {
			// we're running outside of Max, probably for unit testing
			// can't call System.out here, Max stole it and it will just cause another UnsatisfiedLinkError
			// System.out.println("Using hard-coded defaults for RubyProperties.");
			properties = new Properties();
		}

        String gemHome = properties.getProperty("gem.home");
        if (gemHome == null) {
            properties.setProperty("gem.home", defaultGemHome());
        }
        String gemPath = properties.getProperty("gem.path");
        if (gemPath == null) {
            properties.setProperty("gem.path", defaultGemHome());
        }
	}

	public static String[] getInitializerFiles() {
		if( initializers == null ) {
			initializers = properties.getProperty( "ruby.initializers", DEFAULT_INITIALIZER_FILES ).split( ";" );
			for( int i = 0; i < initializers.length; i++ ) {
				initializers[i] = initializers[i].trim();
			}
		}
		return initializers;
	}

	public static String[] getLoadPaths() {
		if( loadpaths == null ) {
			String loadpathsProp = properties.getProperty( "ruby.loadpaths" );
			if( loadpathsProp == null || loadpathsProp.trim().equals( "" ) ) {
				loadpaths = new String[]{ };
			}
			else {
				loadpaths = loadpathsProp.split( ";" );
				for( int i = 0; i < loadpaths.length; i++ ) {
					loadpaths[i] = loadpaths[i].trim();
				}
			}
		}
		return loadpaths;
	}

    public static String defaultGemHome() {
        return Utils.pathToContainingFolder(MaxSystem.locateFile("jruby.jar")) + File.separatorChar + "jruby_gems";
    }

    public static String getGemHome() {
        return properties.getProperty("gem.home");
    }

    public static String getGemPath() {
        return properties.getProperty("gem.path");
    }
}
