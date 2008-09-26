package ajm.util;

/**
 * Builds text one line at a time.
 * 
 * @version 0.9
 * @author Adam Murray (adam@compusition.com)
 */
public class LineBuilder implements CharSequence {

	private StringBuilder lines = new StringBuilder();

	public void line(String s) {
		lines.append(s).append("\n");
	}

	public void append(String s) {
		lines.append(s);
	}

	public String toString() {
		return lines.toString();
	}

	public boolean isEmpty() {
		return lines.length() == 0;
	}

	public int length() {
		return lines.length();
	}

	public void clear() {
		lines.setLength(0);
	}

	public char charAt(int index) {
		return lines.charAt(index);
	}

	public CharSequence subSequence(int start, int end) {
		return lines.subSequence(start, end);
	}

}
