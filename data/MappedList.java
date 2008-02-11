package ajm.data;

/*
 Copyright 2008 Adam Murray

 The files in this ajm package are part of ajm objects.

 This ajm package is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This ajm package is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with ajm objects.  If not, see <http://www.gnu.org/licenses/>.

 */

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

/**
 * A Map where all the values are Lists.
 * 
 * @version 0.7
 * @author Adam Murray (dev@compusition.com)
 */
@SuppressWarnings("serial")
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
}
