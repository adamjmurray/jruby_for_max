package ajm.util;

import java.util.Arrays;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.MaxObject;

public abstract class Jitter2DInterpolatingMapper extends MaxObject {

	protected int width = -1;
	protected int height = -1;
	private int planes = -1;
	private float[] data;
	private float[] buf;
	private int[] newMatrix;
	private JitterMatrix jm = new JitterMatrix();
	private long step;

	protected float[] mappedXY = new float[2];

	public abstract void map(long step, int x, int y);

	// for bilinear interpolation
	private int[] nextOffset = new int[4];
	private double[] nextRatio = new double[4];

	public Jitter2DInterpolatingMapper() {
		declareAttribute("step");
	}

	public void jit_matrix(String matrixname) {
		jm.frommatrix(matrixname);
		int dim[] = jm.getDim();
		if (jm.getDim().length != 2) {
			error(getClass().getName() + "only supports 2-D matrix.");
		}

		int w = dim[0];
		int h = dim[1];
		int p = jm.getPlanecount();

		if (width != w || height != h || planes != p) {
			width = w;
			height = h;
			planes = p;
			data = new float[width * height * planes];
			buf = new float[width * height * planes];
			newMatrix = new int[width * height * planes];
		}

		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {
				int offset = width * y + x;
				int[] cell = jm.getcell2dInt(x, y);
				for (p = 0; p < planes; p++) {
					data[offset + p] = cell[p];
				}
			}
		}
	}

	public void bang() {


		Arrays.fill(buf, 0);

		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {

				map(step, x, y);

				double nextXFrac = mappedXY[0];
				int nextXLo = (int) Math.floor(nextXFrac);
				int nextXHi = (nextXLo + 1) % width;
				double ratioXHi = nextXFrac - nextXLo;
				double ratioXLo = 1.0 - ratioXHi;

				double nextYFrac = mappedXY[1];
				int nextYLo = (int) Math.floor(nextYFrac);
				int nextYHi = (nextYLo + 1) % height;
				double ratioYHi = nextYFrac - nextYLo;
				double ratioYLo = 1.0 - ratioYHi;


				nextOffset[0] = nextXLo + (width * nextYLo);
				nextOffset[1] = nextXLo + (width * nextYHi);
				nextOffset[2] = nextXHi + (width * nextYLo);
				nextOffset[3] = nextXHi + (width * nextYHi);

				nextRatio[0] = ratioXLo * ratioYLo;
				nextRatio[1] = ratioXLo * ratioYHi;
				nextRatio[2] = ratioXHi * ratioYLo;
				nextRatio[3] = ratioXHi * ratioYHi;

				/*
								post("(" + x + "," + y + ")==>(" + nextXLo + "," + nextYLo + ")*" + nextRatio[0] + ", (" + nextXLo
										+ "," + nextYHi + ")*" + nextRatio[1] + ", (" + nextXHi + "," + nextYLo + ")*" + nextRatio[2]
										+ ", (" + nextXHi + "," + nextYHi + ")*" + nextRatio[3]);
				*/


				int offset = width * y + x;
				for (int p = 0; p < planes; p++) {
					double val = data[offset + p];
					for (int i = 0; i < 4; i++) {
						double interpolatedVal = nextRatio[i] * val;
						buf[nextOffset[i]] += interpolatedVal;

					}
				}
			}
		}
		// post("\n");

		step++;
		/*
				post(Arrays.toString(data) + " ==> " + Arrays.toString(buf));
				post("\n");
		*/

		for (int i = 0; i < buf.length; i++) {
			newMatrix[i] = (int) Math.round(buf[i]);
		}
		jm.copyArrayToMatrix(newMatrix);
		outlet(0, "jit_matrix", jm.getName());
	}
}
