package ajm.rubysupport;

import java.util.HashMap;
import java.util.Map;

public class RubyEvaluatorFactory {

	private static Map<String, RubyEvaluator> contexts = new HashMap<String, RubyEvaluator>();

	private RubyEvaluatorFactory() {
	}

	public static RubyEvaluator getRubyEvaluator(String context) {
		RubyEvaluator evaluator = contexts.get(context);
		if (evaluator == null) {
			System.out.println("Creating context for " + context);
			evaluator = new RubyEvaluator();
			contexts.put(context, evaluator);
		}
		else {
			System.out.println("Found existing context for " + context);
		}
		return evaluator;
	}
}
