package ajm.jit;

import com.cycling74.max.Atom;

import ajm.util.ComplexMath;
import ajm.util.Jitter2DInterpolatingMapper;

public class mobius extends Jitter2DInterpolatingMapper {

	private float[] a = { 0, 0 };
	private float[] b = { 0, 0 };
	private float[] c = { 0, 0 };
	private float[] negc = { 0, 0 };
	private float[] d = { 0, 0 };

	// Avoid constructing anything on the fly:
	private float[] z = new float[2];
	private float[] dz = new float[2];
	private float[] numerator = new float[2];
	private float[] negcz = new float[2];
	private float[] denominator = new float[2];

	public mobius() {
		declareAttribute("a");
		declareAttribute("b");
		declareAttribute("c", "getc", "c");
		declareAttribute("d");
	}

	public Atom[] getc() {
		return Atom.newAtom(c);
	}

	// negate c because we use this in the inverse transformation
	public void c(Atom[] complex) {
		if (complex.length > 0) {
			c[0] = -complex[0].toFloat();
			if (complex.length > 1) {
				c[1] = -complex[1].toFloat();
			}
			else {
				c[1] = 0;
			}
			negc[0] = -c[0];
			negc[1] = -c[1];
		}
	}

	/*
	public void map(long step, int x, int y, float[] mappedXY) {
		// TODO: use step to adjust the params
		z[0] = x;
		z[1] = y;

		// the mobius transform is (az + b)/(cz + d)
		ComplexMath.multiply(a, z, az);
		ComplexMath.add(az, b, numerator);
		ComplexMath.multiply(c, z, cz);
		ComplexMath.add(cz, d, denominator);

		ComplexMath.divide(numerator, denominator, mappedXY);
	
		//post("z=" + Arrays.toString(z));
		//post("a=" + Arrays.toString(a));
		//post("b=" + Arrays.toString(b));
		//post("c=" + Arrays.toString(c));
		//post("d=" + Arrays.toString(d));
		//post("az=" + Arrays.toString(az));
		//post("num=" + Arrays.toString(numerator));
		//post("cz=" + Arrays.toString(cz));
		//post("denom=" + Arrays.toString(denominator));
		//post("res=" + Arrays.toString(mappedXY));
		
	}
	*/


	public void inverseMap(long step, int x, int y, float[] mappedXY) {
		// TODO: use step to adjust the params
		z[0] = x;
		z[1] = y;

		// the mobius transform is (dz - b)/(-cz + d)
		ComplexMath.multiply(d, z, dz);
		ComplexMath.add(dz, b, numerator);
		ComplexMath.multiply(negc, z, negcz);
		ComplexMath.add(negcz, d, denominator);

		ComplexMath.divide(numerator, denominator, mappedXY);
		/*
		post("z=" + Arrays.toString(z));
		post("a=" + Arrays.toString(a));
		post("b=" + Arrays.toString(b));
		post("c=" + Arrays.toString(c));
		post("d=" + Arrays.toString(d));
		post("az=" + Arrays.toString(az));
		post("num=" + Arrays.toString(numerator));
		post("cz=" + Arrays.toString(cz));
		post("denom=" + Arrays.toString(denominator));
		post("res=" + Arrays.toString(mappedXY));
		*/
	}

}
