package lesson1;

import java.util.Scanner;

public class GameAddTotals {

	public static void main(String[] args) {
		Scanner reader = new Scanner(System.in);
        Integer userInput = 0;
        Integer addNumbers = 0;
     
        while(addNumbers != 0) {
        	System.out.println("Enter numbers to add");
        	addNumbers = reader.nextInt();
        	
        }
        reader.close();
	}

}
