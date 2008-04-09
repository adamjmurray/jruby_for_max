package ajm.rubysupport;

import java.util.HashMap;
import java.util.Map;

public class MaxRubyEvaluatorFactory {

	private static RubyEvaluatorFactory instance = new RubyEvaluatorFactory();
	private static Map<String, MaxRubyEvaluator> contexts = new HashMap<String, MaxRubyEvaluator>();

	private MaxRubyEvaluatorFactory() {
	}

	// this won't work!

	public static MaxRubyEvaluator getMaxRubyEvaluator(String context) {
		MaxRubyEvaluator evaluator = contexts.get(context);
		if (evaluator == null) {
			evaluator = new MaxRubyEvaluator(null);
			contexts.put(context, evaluator);
		}
		return evaluator;
	}
}
