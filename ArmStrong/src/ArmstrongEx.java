import java.math.*;
import java.util.Scanner;
public class ArmstrongEx {

	public static void main(String[] args) {
		 int n, temp, remainder, digits = 0;
		double sum = 0;
		 
	      Scanner in = new Scanner(System.in);
	      System.out.println("Input:");      
	      n = in.nextInt();
	      temp = n;
	         
//	      while (temp != 0) {
	//         digits++;
	  //       temp = temp/10;
	   //   }
	 
	     // temp = n;
	 
	      while (temp != 0) {
	    	  temp = temp/10;
	    	  remainder = temp%10;
	         sum = sum + Math.pow(remainder,digits);
	      					}
	      
	 
	      if (n == sum)
	         System.out.println(n+" is Armstrong number.");
	      else
	         System.out.println(n+" is not an Armstrong number.");        
	   }
	  

}
