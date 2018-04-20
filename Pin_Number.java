package lesson1;

import java.util.Scanner;

public class Pin_Number {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
  int pin = 4444;
  Integer userInput = 0;
  Scanner reader = new Scanner(System.in);
  System.out.println("Welcome!! :");
  System.out.println("Enter your pin :");
 
  
  while(!userInput.equals(pin)) {
	  userInput = reader.nextInt();
	  if(userInput != pin) {
		  System.out.println("INCORRECT PIN. PLEASE TRY AGAIN");
		  continue;
		  
	  } 
	  break;
  }
  reader.close();
  System.out.println("PIN ACCEPTED. YOU HAVE $0.00 IN YOUR ACCOUNT. GOODBYE.");
	}

}
