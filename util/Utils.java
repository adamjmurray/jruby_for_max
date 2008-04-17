package ajm.util;

public class Utils {

	private Utils() {
	}

	public static boolean equals(Object o1, Object o2) {
		if (o1 == null) {
			return o2 == null;
		}
		else {
			return o1.equals(o2);
		}
	}
}
