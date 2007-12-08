package ajm.jit;

import ajm.util.Jitter2DMatrixMapper;

public class mobius extends Jitter2DMatrixMapper {

	private int a = 0;
	private int b = 0;
	private int c = 0;
	private int d = 0;

	public mobius() {
		declareAttribute("a");
		declareAttribute("b");
		declareAttribute("c");
		declareAttribute("d");
	}

	public void map(int x, int y) {
		int nextX = x + a;
		while (nextX < 0) {
			nextX += width;
		}
		while (nextX >= width) {
			nextX -= width;
		}

		int nextY = y + b;
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
