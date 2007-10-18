package ajm;


public class ArrayUtils {

	protected static int[] fixBounds(int arr[], int left, int right) {
		if (left > right) {
			int tmp = left;
			left = right;
			right = tmp;
		}
		if (left < 0) {
			left = 0;
		}
		if (right >= arr.length) {
			right = arr.length - 1;
		}
		return new int[] { left, right };
	}


	public static void reverseRange(int arr[], int left, int right) {
		int[] lr = fixBounds(arr, left, right);
		left = lr[0];
		right = lr[1];
		while (left < right) {
			int temp = arr[left];
			arr[left] = arr[right];
			arr[right] = temp;
			left++;
			right--;
		}
	}


	public static void rotate(int arr[], int n) {
		rotaterange(arr, n, 0, arr.length - 1);
	}


	public static void rotaterange(int arr[], int n, int left, int right) {
		if (arr.length == 0) {
			return;
		}
		int[] lr = fixBounds(arr, left, right);
		left = lr[0];
		right = lr[1];

		int segmentLen = right - left + 1;
		n = left + n;
		while (n < left)
			n += segmentLen;
		while (n > right)
			n -= segmentLen;

		if (n != left) {
			reverseRange(arr, left, n - 1);
			reverseRange(arr, n, right);
			reverseRange(arr, left, right);
		}
	}
}
