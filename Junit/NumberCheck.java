package com.virtusa.service;

public class NumberCheck {
	
	public boolean determineWhetherArmstrongNumber(int n){
		   int c=0,a,temp;  
		    temp=n;
		    
		    String numberCheck=String.valueOf(n);
		    if(numberCheck.length()>4)
		    	throw new RuntimeException("Number has more than 4 digits");
		    while(n>0)  
		    {  
		    a=n%10;  
		    n=n/10;  
		    c=c+(a*a*a);  
		    }  
		    if(temp==c)  
            return true;
            else  
		    return false;  
		   }  
			
}
