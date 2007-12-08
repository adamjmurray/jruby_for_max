package ajm.jit;

import ajm.util.Jitter2DInterpolatingMapper;

public class translatefloat extends Jitter2DInterpolatingMapper {

	private float x = 0;
	private float y = 0;

	public translatefloat() {
		declareAttribute("x");
		declareAttribute("y");
	}

	public void map(long step, int currX, int currY) {
		float nextX = currX + (step * x);
		while (nextX < 0) {
			nextX += width;
		}
		while (nextX >= width) {
			nextX -= width;
		}

		float nextY = currY + (step * y);
		while (nextY < 0) {
			nextY += height;
		}
		while (nextY >= height) {
			nextY -= height;
		}

		mappedXY[0] = nextX;
		mappedXY[1] = nextY;
	}
}
