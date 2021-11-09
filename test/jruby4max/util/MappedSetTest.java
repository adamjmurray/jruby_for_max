package jruby4max.util;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class MappedSetTest {

	private MappedSet<String,Integer> subject;

	@Before
	public void before() {
		subject = new MappedSet<String,Integer>();
	}

	@Test
	public void addValue_should_prevent_duplicates() {
		subject.addValue("key", 5);
		subject.addValue("key", 5);
		Object[] value = subject.get("key").toArray();
		Assert.assertEquals(1, value.length);
		Assert.assertEquals(5, value[0]);
	}

	@Test
	public void addValue_should_maintain_insertion_order() {
		subject.addValue("key", 1);
		subject.addValue("key", 2);
		long counter = 1;
		for(Integer value : subject.get("key")) {
			Assert.assertEquals(counter, (long)value);
			counter++;
		}
	}
}
