package jruby4max.rubysupport;

import org.jruby.CompatVersion;
import org.jruby.embed.ScriptingContainer;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.LocalVariableBehavior;

public class JRubyEmbedEvaluator extends AbstractScriptEvaluator {

  private ScriptingContainer container;
  
  private CompatVersion compatVersion;

  public JRubyEmbedEvaluator(CompatVersion rubyVersion) {
  	// if compatVersion isn't set right away, it won't work (maybe because of the global var setup?)
  	compatVersion = rubyVersion;
  	resetEngineContext();
  }

  protected void resetEngineContext() {
  	container = new ScriptingContainer(LocalContextScope.SINGLETHREAD, LocalVariableBehavior.TRANSIENT);
  	container.setCompatVersion(compatVersion);
  }

  protected void declareGlobalInternal(String variableName, Object obj) {
    container.put("$" + variableName, obj);
  }

  protected void undeclareGlobalInternal(String variableName) {
    container.removeAttribute("$" + variableName);
  }

  public void setScriptFilename(String scriptFilename) {
  	if(scriptFilename == null) {
  		scriptFilename = "";
  	}
  	container.setScriptFilename(scriptFilename);
  }
  
  public Object eval(CharSequence rubyCode) {  	
  	return container.runScriptlet(rubyCode.toString());    
  }

  public void exit() {
  	container.terminate();
    container = null;
    
  }
}
