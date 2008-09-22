package ajm.rubysupport;

import java.util.HashMap;
import java.util.Map;

import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import javax.script.ScriptException;

import com.sun.script.jruby.JRubyScriptEngineManager;

public class SunRubyEvaluator implements ScriptEvaluator {

	private JRubyScriptEngineManager manager;
	private ScriptEngine rubyEngine;
	private ScriptContext context;

	private boolean initialized = false;
	private Map<String, Object> persitentGlobals = new HashMap<String, Object>();

	public SunRubyEvaluator() {
		resetContext();
	}

	public void resetContext() {
		manager = new JRubyScriptEngineManager();
		rubyEngine = manager.getEngineByName("jruby");
		context = rubyEngine.getContext();

		for (Map.Entry<String, Object> global : persitentGlobals.entrySet()) {
			declareGlobal(global.getKey(), global.getValue());
		}
	}

	public boolean isInitialized() {
		return initialized;
	}

	public void setInitialized(boolean initialized) {
		this.initialized = initialized;
	}

	public void declareGlobal(String variableName, Object obj) {
		context.setAttribute(variableName, obj, ScriptContext.ENGINE_SCOPE);
	}

	public void declarePersistentGlobal(String variableName, Object obj) {
		declareGlobal(variableName, obj);
		persitentGlobals.put(variableName, obj);
	}

	public void undeclareGlobal(String variableName) {
		context.removeAttribute(variableName, ScriptContext.ENGINE_SCOPE);
		persitentGlobals.remove(variableName);
	}

	public Object eval(CharSequence rubyCode) {
		try {
			return rubyEngine.eval(rubyCode.toString(), context);
		}
		catch (ScriptException e) {
			// convert to unchecked and hide the details of the implementation
			throw new RubyException(e);
		}
	}

}
