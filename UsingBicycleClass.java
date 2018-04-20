package lesson1;

import java.util.Scanner;

public class UsingBicycleClass {

	public static void main(String[] args) {
		Scanner reader = new Scanner(System.in);
		Bicycle bike = new Bicycle();
		bike.printStates();
		bike.changeGear(4);
		System.out.println("Print Gear " + bike.getGear());
	}

}
