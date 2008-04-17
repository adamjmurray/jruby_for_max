package ajm.rubysupport;

import java.util.HashMap;
import java.util.Map;

public class RubyEvaluatorFactory {

	private static Map<String, RubyEvaluator> contexts = new HashMap<String, RubyEvaluator>();
	private static Map<String, Integer> contextCounter = new HashMap<String, Integer>();

	private RubyEvaluatorFactory() {
	}

	public static RubyEvaluator getRubyEvaluator(String context) {
		RubyEvaluator evaluator = contexts.get(context);
		if (evaluator == null) {
			evaluator = new RubyEvaluator();
			contexts.put(context, evaluator);
			contextCounter.put(context, 1);
		}
		else {
			int count = contextCounter.get(context);
			count++;
			contextCounter.put(context, count);
		}
		return evaluator;
	}

	public static void removeRubyEvaluator(String context) {
		int count = contextCounter.get(context);
		count--;
		if (count > 0) {
			contextCounter.put(context, count++);
		}
		else {
			contextCounter.remove(context);
			contexts.remove(context); // let the garbage collector do its job
		}
	}
}
