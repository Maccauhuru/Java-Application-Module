package lesson1;

import java.util.Scanner;

public class GuessNumberBetween1And100 {

	public static void main(String[] args) {
		Scanner reader = new Scanner(System.in);
		Integer userInput = 0;
		Integer wrongGuessCount = 0;
		Integer secretNum = 77;

		while (!userInput.equals(secretNum)) {
			System.out.println("Enter a number between 1 and 100 :");
			userInput = reader.nextInt();
			if (userInput < 0 || userInput > 100) {
				System.out.println("Enter only numbers between 1 and 100");
			} else if (userInput > secretNum) {
				System.out.println("Number too high, try again!");
			} else if (userInput < secretNum) {
				System.out.println("Number too low , try again!");
			}
			wrongGuessCount++;
		}
		System.out.println("Congratulations..You guessed correctly!");
		reader.close();
	}

}
