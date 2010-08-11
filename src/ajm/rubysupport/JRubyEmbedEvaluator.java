package ajm.rubysupport;

import org.jruby.embed.ScriptingContainer;
import org.jruby.embed.LocalContextScope;
import org.jruby.embed.LocalVariableBehavior;

public class JRubyEmbedEvaluator extends AbstractScriptEvaluator {

  private ScriptingContainer container;

  public JRubyEmbedEvaluator() {
    resetEngineContext();
  }

  protected void resetEngineContext() {
    container = new ScriptingContainer(LocalContextScope.SINGLETHREAD, LocalVariableBehavior.TRANSIENT);
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
    // TODO
    container = null;
  }
}
