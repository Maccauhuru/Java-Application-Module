/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplicationmodule4;

/**
 *
 * @author Simbatronix
 */
public class JavaApplicationModule4 {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       int i = 10;
       if(i ==55){
           System.out.println("Condition  1 met");
       } else if (i < 0){
           System.out.println("Condition  2 met");
       } else {
          System.out.println("Default Condition met");
       }
       while(true){
    System.out.println("You are on number " + i);
    i++;
    if (i > 20) break;  
}
       do {
 System.out.println("You are using a DO WHILE Loop on number " + i);
 i++;
} while (i > 15);
}
}
    
