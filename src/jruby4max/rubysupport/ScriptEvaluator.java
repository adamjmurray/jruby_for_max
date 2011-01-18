package jruby4max.rubysupport;

/*
Copyright (c) 2008-2011, Adam Murray (adam@compusition.com). All rights reserved.

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

import org.jruby.CompatVersion;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.LocalVariableBehavior;
import org.jruby.embed.ScriptingContainer;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class ScriptEvaluator implements IScriptEvaluator {

	private ScriptingContainer container;

	private CompatVersion compatVersion;

	private boolean initialized = false;
	private Map<String, Object> persitentGlobals = new HashMap<String, Object>();

	public ScriptEvaluator( CompatVersion rubyVersion ) {
		// if compatVersion isn't set right away, it won't work (maybe because of the global var setup?)
		compatVersion = rubyVersion;
		resetEngineContext();
	}

	public void resetContext() {
		resetEngineContext();
		try {
			for( Map.Entry<String, Object> global : persitentGlobals.entrySet() ) {
				String name = global.getKey();
				undeclareGlobalInternal( name );
				declareGlobalInternal( name, global.getValue() );
			}
		} catch(Exception e) {
			throw new RubyException( e );
		}
	}

	public boolean isInitialized() {
		return initialized;
	}

	public void setInitialized( boolean initialized ) {
		this.initialized = initialized;
	}

	public void declareGlobal( String variableName, Object obj ) {
		try {
			declareGlobalInternal( variableName, obj );
		} catch(Exception e) {
			throw new RubyException( e );
		}
		persitentGlobals.put( variableName, obj );
	}

	public void undeclareGlobal( String variableName ) {
		try {
			undeclareGlobalInternal( variableName );
		} catch(Exception e) {
			throw new RubyException( e );
		}
		persitentGlobals.remove( variableName );
	}

	protected void resetEngineContext() {
		container = new ScriptingContainer( LocalContextScope.SINGLETHREAD, LocalVariableBehavior.TRANSIENT );
		container.setCompatVersion( compatVersion );
		container.setCurrentDirectory( System.getProperty( "user.home" ) );
	}

	protected void declareGlobalInternal( String variableName, Object obj ) {
		container.put( "$" + variableName, obj );
	}

	protected void undeclareGlobalInternal( String variableName ) {
		container.removeAttribute( "$" + variableName );
	}

	public void setScriptFile( File file ) {
		if( file == null ) {
			container.setScriptFilename( "" );
		}
		else {
			container.setScriptFilename( file.getAbsolutePath() );
		}
	}

	public Object eval( CharSequence rubyCode ) {
		return container.runScriptlet( rubyCode.toString() );
	}

	public void exit() {
		container.terminate();
		container = null;

	}
}
