package ajm.util;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.MaxObject;

public abstract class Jitter2DMatrixMapper extends MaxObject {

	protected int width = -1;
	protected int height = -1;
	private int planes = -1;
	private int[][][] buf;
	private JitterMatrix jm = new JitterMatrix();

	protected int[] mappedXY = new int[2];

	public abstract void map(int x, int y);

	public void jit_matrix(String matrixname) {
		jm.setName(matrixname);
		if (!"char".equals(jm.getType()) && !"long".equals(jm.getType())) {
			error(getClass().getName() + " only works with a char or long matrix. You sent a " + jm.getType());
			return;
		}
		initBuf(jm);
		process(jm);
		outlet(0, "jit_matrix", jm.getName());
	}

	private void initBuf(JitterMatrix jm) {
		int[] dim = jm.getDim();
		int w = dim[0];
		int h = dim[1];
		int p = jm.getPlanecount();

		if (width != w || height != h || planes != p) {
			width = w;
			height = h;
			planes = p;
			buf = new int[width][height][planes];
		}
	}

	public void process(JitterMatrix jm) {
		// post("BEFORE: " + getString(jm));
		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {

				map(x, y);
				buf[mappedXY[0]][mappedXY[1]] = jm.getcell2dInt(x, y);
			}
		}

		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {
				for (int p = 0; p < planes; p++) {
					jm.setcell2d(x, y, buf[x][y]);
				}
			}
		}

		// post("AFTER: " + getString(jm));
	}

	private String getString(JitterMatrix jm) {
		StringBuilder s = new StringBuilder();
		s.append("[\n");
		for (int y = 0; y < height; y++) {

			s.append("\t[");
			for (int x = 0; x < width; x++) {


				int sum = 0;
				int[] ps = jm.getcell2dInt(x, y);
				for (int p = 0; p < planes; p++) {
					sum += ps[p];
				}

				s.append(sum).append(" ");
			}
			s.append("]\n");
		}
		s.append("]");
		return s.toString();
	}
}
