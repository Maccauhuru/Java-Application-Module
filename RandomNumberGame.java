package lesson1;

import java.util.Scanner;

public class RandomNumberGame {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
   Scanner reader = new Scanner(System.in);
   Integer secret =9;
   Integer userInput = 0;
   
   while(!userInput.equals(secret)) {
   System.out.println("Guess a number:");
   userInput = reader.nextInt();
   if(!userInput.equals(secret)) {
	   System.out.println("Incorrect try again!");
   }
   
	}
System.out.println("You win!");
reader.close();
}
}
