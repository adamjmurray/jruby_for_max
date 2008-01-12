package ajm.util;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.MaxObject;

public abstract class Jitter2DInterpolatingMapper extends MaxObject {

	private int width = -1;
	private int height = -1;
	private int planes = -1;
	private float[] data;
	private float[] buf;
	private int[] newMatrix;
	private JitterMatrix jm = new JitterMatrix();
	private long step;
	private boolean interp = false;
	private boolean wrap = false;

	private float[] mappedXY = new float[2];
	private int[] mappedXYInt = new int[2];

	// public abstract void map(long step, int x, int y, float[] mappedXY);

	// for this version, mappedXY is where the points come from
	public abstract void inverseMap(long step, int x, int y, float[] mappedXY);

	// for bilinear interpolation
	private int[] nextOffset = new int[4];
	private double[] nextRatio = new double[4];

	public Jitter2DInterpolatingMapper() {
		declareAttribute("step");
		declareAttribute("interp");
		declareAttribute("wrap");
	}

	protected int getWidth() {
		return width;
	}

	protected int getHeight() {
		return height;
	}

	protected int getPlaneCount() {
		return planes;
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


		// Arrays.fill(buf, 0);

		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {

				int offset = width * y + x;
				inverseMap(step, x, y, mappedXY);
				boolean neededWrap = fixRange();

				if (wrap || !neededWrap) {

					if (interp) {
						int nextXLo = (int) mappedXY[0];
						int nextXHi = (nextXLo + 1) % width;
						float ratioXHi = mappedXY[0] - nextXLo;
						float ratioXLo = 1.f - ratioXHi;

						int nextYLo = (int) mappedXY[1];
						int nextYHi = (nextYLo + 1) % height;
						float ratioYHi = mappedXY[1] - nextYLo;
						float ratioYLo = 1.f - ratioYHi;

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


						for (int p = 0; p < planes; p++) {
							float interpolatedVal = 0;
							for (int i = 0; i < 4; i++) {
								interpolatedVal += data[nextOffset[i] + p] * nextRatio[i];
							}
							buf[offset + p] = interpolatedVal;
						}
					}
					else {
						// post("coercing (" + mappedXY[0] + "," + mappedXY[1] + ")");
						// post("(" + x + "," + y + ") <== (" + ((int) mappedXY[0]) + "," + ((int) mappedXY[1]) + ")");
						int mappedOffset = width * (int) mappedXY[1] + (int) mappedXY[0];
						// TODO: when not interpolating, we can put this in an int buffer!! make it even faster!
						for (int p = 0; p < planes; p++) {
							buf[offset + p] = data[mappedOffset + p];
						}
					}
				}
				else {
					// wrapping is disabled and we needed to wrap, so just 0 out the cell
					for (int p = 0; p < planes; p++) {
						buf[offset + p] = 0;
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

	protected boolean fixRange() {
		boolean neededWrap = (mappedXY[0] < 0 || mappedXY[0] >= width || mappedXY[1] < 0 || mappedXY[1] >= width);
		if (wrap) {
			while (mappedXY[0] < 0) {
				mappedXY[0] += width;
			}
			while (mappedXY[0] >= width) {
				mappedXY[0] -= width;
			}
			while (mappedXY[1] < 0) {
				mappedXY[1] += height;
			}
			while (mappedXY[1] >= height) {
				mappedXY[1] -= height;
			}
		}
		return neededWrap;
	}
}
