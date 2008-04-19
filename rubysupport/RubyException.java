package ajm.rubysupport;

/**
 * Wrapper for any Ruby exceptions. Helps encapsulate the underlying Ruby implementation.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
@SuppressWarnings("serial")
public class RubyException extends RuntimeException {

	public RubyException() {
		super();
	}

	public RubyException(String message, Throwable cause) {
		super(message, cause);
	}

	public RubyException(String message) {
		super(message);
	}

	public RubyException(Throwable cause) {
		super(cause);
	}
}
