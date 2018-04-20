package lesson1;

public class ArrayLessons {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Integer [] myArray = new Integer[7];
System.out.println(myArray.length);
System.out.println(myArray[0]);
myArray[0]=5;
myArray[1]=10;
System.out.println(myArray);
for(int i=0;i<myArray.length;i++) {
	System.out.println(myArray[i]);
}
}

}
