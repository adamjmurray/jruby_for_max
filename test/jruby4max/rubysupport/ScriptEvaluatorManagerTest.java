package jruby4max.rubysupport;

import org.junit.Assert;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

public class ScriptEvaluatorManagerTest {

	@Test
	public void ensureIdAvailable_should_do_nothing_when_the_id_is_available() {
		Map<String, Object> idMap = new HashMap<String, Object>();
		Object o = new Object();
		ScriptEvaluatorManager.ensureIdAvailable(idMap, o, "id");
	}

	@Test
	public void ensureIdAvailable_should_do_nothing_when_the_id_is_taken_by_the_current_object() {
		Map<String, Object> idMap = new HashMap<String, Object>();
		Object o = new Object();
		idMap.put("id", o);
		ScriptEvaluatorManager.ensureIdAvailable(idMap, o, "id");
	}

	@Test
	public void ensureIdAvailable_should_throw_an_exception_with_an_available_id_when_the_id_is_taken() {
		Map<String, Object> idMap = new HashMap<String, Object>();
		idMap.put("id", new Object());
		Object o = new Object();
		try {
			ScriptEvaluatorManager.ensureIdAvailable(idMap, o, "id");
		}
		catch(IdInUseException e) {
			Assert.assertEquals("id[1]", e.getMessage());
		}
	}

	@Test
	public void ensureIdAvailable_should_increment_suggested_id_index() {
		Map<String, Object> idMap = new HashMap<String, Object>();
		idMap.put("id[1]", new Object());
		Object o = new Object();
		try {
			ScriptEvaluatorManager.ensureIdAvailable(idMap, o, "id[1]");
		}
		catch(IdInUseException e) {
			Assert.assertEquals("id[2]", e.getMessage());
		}
	}
}
