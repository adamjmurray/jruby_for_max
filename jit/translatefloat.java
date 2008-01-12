package ajm.jit;

import ajm.util.Jitter2DInterpolatingMapper;

public class translatefloat extends Jitter2DInterpolatingMapper {

	private float x = 0;
	private float y = 0;

	public translatefloat() {
		declareAttribute("x");
		declareAttribute("y");
	}


	public void inverseMap(long step, int currX, int currY, float[] mappedXY) {
		mappedXY[0] = currX - (step * x);
		mappedXY[1] = currY - (step * y);
	}

	public void map(long step, int currX, int currY, float[] mappedXY) {
		mappedXY[0] = currX + (step * x);
		mappedXY[1] = currY + (step * y);
	}
}
