package ajm.data;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;


public class MappedList<T> extends TreeMap<Integer, List<T>> {

	public void addValue(int pos, T value) {
		List<T> values = get(pos);
		if (values == null) {
			values = new ArrayList<T>();
			put(pos, values);
		}
		values.add(value);
	}

	@SuppressWarnings(value = "unchecked")
	public MappedList<T> clone() {
		return (MappedList<T>) super.clone();
	}

	private static final long serialVersionUID = 1;
}
