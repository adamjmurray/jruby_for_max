package ajm.maxsupport;

import com.cycling74.max.Executable;
import com.cycling74.max.MaxQelem;

import ajm.rubysupport.MaxRubyEvaluator;

public abstract class AbstractMaxRubyObject extends AbstractMaxObject {

	protected String context = null;

	protected MaxRubyEvaluator ruby;

	public AbstractMaxRubyObject() {
		super();
		declareAttribute("context", "getcontext", "context");
	}

	// TODO: make a class? see seq vs. rseq. I think it's cleaner to just call initializer.super()
	@Override
	protected MaxQelem getInitializer() {
		return new MaxQelem(new Executable() {
			// see discussion at
			// http://www.cycling74.com/forums/index.php?t=msg&th=31680&rid=5266
			// we need to defer execution of ruby.init() so we can resolve the path to this patch properly
			public void execute() {
				contructRubyEvaluator();
				initialized = true;
			}
		});
	}

	protected void contructRubyEvaluator() {
		ruby = new MaxRubyEvaluator(this, context);
	}

	public String getcontext() {
		return context;
	}

	public void context(String context) {
		this.context = context;
		if (ruby != null) {
			ruby.setContext(context);
		} // else we're still initializing and the initalizer should handle this
	}

	@Override
	public void notifyDeleted() {
		ruby.notifyDeleted();
		super.notifyDeleted();
	}
}
