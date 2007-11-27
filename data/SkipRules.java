package ajm.data;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class SkipRules {

	private Map<Integer, Set<Integer>> rules = new HashMap<Integer, Set<Integer>>();
	private Set<Integer> wildcardRules = new HashSet<Integer>();

	public void addRule(int iteration, int index) {
		Set<Integer> indexes = rules.get(iteration);
		if (indexes == null) {
			indexes = new HashSet<Integer>();
			rules.put(iteration, indexes);
		}
		indexes.add(index);
	}

	public void addWildcardRule(int index) {
		wildcardRules.add(index);
	}

	public void clearAll() {
		rules.clear();
		wildcardRules.clear();
	}

	public void clearNormalRules() {
		rules.clear();
	}

	public void clearWildcardRules() {
		wildcardRules.clear();
	}


	public void clearRules(int iteration) {
		rules.remove(iteration);
	}

	public void clearRule(int iteration, int index) {
		Set<Integer> indexes = rules.get(iteration);
		if (indexes != null) {
			indexes.remove(index);
		}
	}


	public void clearWildcardRule(int index) {
		wildcardRules.remove(index);
	}


	public boolean skip(int iteration, int index) {
		if (wildcardRules.contains(index)) {
			return true;
		}
		else {
			Set<Integer> indexes = rules.get(iteration);
			return (indexes != null && indexes.contains(index));
		}
	}
}
