package ajm.rubysupport;

import org.jruby.embed.ScriptingContainer;

public class JRubyEmbedEvaluator extends AbstractScriptEvaluator {

  private ScriptingContainer container;

  public JRubyEmbedEvaluator() {
    resetEngineContext();
  }

  protected void resetEngineContext() {
    container = new ScriptingContainer();
  }

  // Var names in next two methods might need a "$" prepended?
  protected void declareGlobalInternal(String variableName, Object obj) {
    container.put(variableName, obj);
  }

  protected void undeclareGlobalInternal(String variableName) {
    container.removeAttribute(variableName);
  }

  public Object eval(CharSequence rubyCode) {
    try {
      return container.runScriptlet(rubyCode.toString());
    } catch (Exception e) {
      throw new RubyException((Throwable) null);
      // JRuby Embed takes care of printing out the cause, so set the cause to null to avoid duplicate error messages
    }
  }

  public void exit() {
    // TODO
    container = null;
  }
}
