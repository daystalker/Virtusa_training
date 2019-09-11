package com.virtusa.service;

public class Calculator {

	public int add(int no1, int no2) {
		if(no1>999 || no2>999)
			throw new RuntimeException("Either no1 or no2 is greater than 999");
		
		return no1+no2;
	}
	
	
	public int div(int no1,int no2) {
		return no1/no2;
	}

}
