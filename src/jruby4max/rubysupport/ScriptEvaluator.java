package jruby4max.rubysupport;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.jruby.embed.LocalContextScope;
import org.jruby.embed.LocalVariableBehavior;
import org.jruby.embed.ScriptingContainer;

public class ScriptEvaluator implements IScriptEvaluator {

	private ScriptingContainer container;

	private boolean initialized = false;
	private Map<String, Object> persitentGlobals = new HashMap<String, Object>();

	public ScriptEvaluator() {
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
		container.setCurrentDirectory( System.getProperty( "user.home" ) );

        // It seems we can't directly modify the current environment, so we need to make a copy first.
        @SuppressWarnings("unchecked")
        Map<Object, Object> env = new HashMap<Object, Object>(container.getEnvironment());
        env.put("GEM_HOME", RubyProperties.getGemHome());
        env.put("GEM_PATH", RubyProperties.getGemPath());
        container.setEnvironment(env);
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
	
	public String version() {
		return container.getSupportedRubyVersion();
	}
}
