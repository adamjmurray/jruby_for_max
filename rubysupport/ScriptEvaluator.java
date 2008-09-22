package ajm.rubysupport;

public interface ScriptEvaluator {

	void resetContext();

	boolean isInitialized();

	void setInitialized(boolean initialized);

	void declareGlobal(String variableName, Object obj);

	void declarePersistentGlobal(String variableName, Object obj);

	void undeclareGlobal(String variableName);

	Object eval(CharSequence rubyCode);
}
