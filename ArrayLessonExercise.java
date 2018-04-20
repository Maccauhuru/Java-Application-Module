//package lesson1;
//
//public class ArrayLessonExercise {
//
//	public static void main(String[] args) {
//		Integer[] myArray = {5, 6, 7, 8, 10, 11 };
//		for (int i = 0; i < myArray.length; i++) {
//			if (myArray[i] % 2 == 0) {
//				System.out.println(myArray[i]);
//			}
//		}
//
//	}
//
//}

package lesson1;

public class ArrayLessonExercise {

	public static void main(String[] args) {
		Integer[] myArrayOfEven = new Integer[50];
		Integer index = 0;
		for (int i = 1; i <= 100; i++) {
			if(i % 2 == 0) {
			myArrayOfEven[index]=i;
			index++;
		}
	}
//		for(int x=0;x<myArrayOfEven.length;x++) {
//			System.out.println(myArrayOfEven[x]);
		
//		}
		//Using for each loop
		for(Integer value : myArrayOfEven) {
			System.out.println(value);
		}
		}
}


