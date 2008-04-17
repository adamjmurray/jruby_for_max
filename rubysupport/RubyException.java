package ajm.rubysupport;

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
