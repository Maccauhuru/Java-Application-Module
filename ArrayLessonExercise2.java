package lesson1;

public class ArrayLessonExercise2 {

	public static void main(String[] args) {
		Integer[] arr1 = { 2, 4, 6, 7, 9, 12 };
		Integer[] arr2 = { 1, 4, 7, 8, 9, 10 };
		Integer[] arr3 = new Integer[6];
		Integer Index = 0;
		for (int i = 0; i < arr1.length; i++) {
			for (int j = 0; j < arr2.length; j++) {
				if (arr1[i] == arr2[j]) {
					arr3[Index] = arr1[i];
					Index++;
				}
			}
		}
		for(Integer show : arr3) {
			System.out.println(show);
		}

	}
}
