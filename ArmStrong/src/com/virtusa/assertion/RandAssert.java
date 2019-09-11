package com.virtusa.assertion;

import java.util.Random;

public class RandAssert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			Random r =new Random();
			int x=0;
			for(int i=0;i<10;i++)
			{
				x=r.nextInt(101);
				System.out.println(x);
				assert x>20:"Less than 20";
			}
	}

}
