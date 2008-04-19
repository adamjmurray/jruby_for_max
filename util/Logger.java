package ajm.util;

/**
 * Simple logging interface.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public interface Logger {

	void debug(String message);

	void info(String message);

	void err(String message);
}
