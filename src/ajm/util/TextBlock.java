package ajm.util;

import java.util.HashMap;
import java.util.Map;

/**
 * A singleton Map of Strings. Used to indirectly pass long messages in Max.
 * 
 * @version 0.9
 * @author Adam Murray (adam@compusition.com)
 */
public class TextBlock {

	private static Map<String, String> textMap = new HashMap<String, String>();

	private TextBlock() {
	}

	public synchronized static void set(String name, String text) {
		textMap.put(name, text);
	}

	public synchronized static String get(String name) {
		return textMap.get(name);
	}

	public synchronized static void remove(String name) {
		textMap.remove(name);
	}
}
