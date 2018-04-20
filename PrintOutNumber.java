package lesson1;

import java.util.Scanner;

public class PrintOutNumber {

	public static void main(String[] args) {
		Integer printUpTo = 0;
		Scanner reader = new Scanner(System.in);
		System.out.println("Enter a number");
		printUpTo = reader.nextInt();
		for(int i=1;i<=printUpTo;i++) {
			System.out.println(i);
		}
reader.close();
	}

}
