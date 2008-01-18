package ajm.util;

import com.cycling74.max.Atom;

public class MaxUtils {

	private MaxUtils() {}

	public static String toString(String msg, Atom[] args) {
		StringBuilder input = new StringBuilder();
		if (msg != null) {
			input.append(msg).append(" ");
		}
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				input.append(" ");
			}
			input.append(args[i]);
		}
		return input.toString();
	}
}
