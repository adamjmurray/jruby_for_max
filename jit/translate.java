package ajm.jit;

import ajm.util.Jitter2DMatrixMapper;

public class translate extends Jitter2DMatrixMapper {

	private int x = 0;
	private int y = 0;

	public translate() {
		declareAttribute("x");
		declareAttribute("y");

	}

	public void map(int currX, int currY) {
		int nextX = currX + x;
		while (nextX < 0) {
			nextX += width;
		}
		while (nextX >= width) {
			nextX -= width;
		}

		int nextY = currY + y;
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
