package ajm.util;

public class LineBuilder implements CharSequence {

	private StringBuilder lines = new StringBuilder();

	public void line(String s) {
		lines.append(s).append("\n");
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

	public char charAt(int index) {
		return lines.charAt(index);
	}

	public CharSequence subSequence(int start, int end) {
		return lines.subSequence(start, end);
	}
}
