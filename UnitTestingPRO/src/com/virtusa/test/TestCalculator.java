package com.virtusa.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.virtusa.service.Calculator;

public class TestCalculator {

	private Calculator calculator=null;
	
	@Before
	public void setUp() throws Exception {
		calculator=new Calculator();
	}

	@After
	public void tearDown() throws Exception {
		calculator=null;
	}
	
	@Test
	public void test_add_positive() {
		try 
		{
				//test data no1=10 no2=5
		int actual=calculator.add(10,5);
				//expected is actual=15
		int expected=15;
			assertEquals(expected, actual);
			}
		catch(Exception e) {
		fail("should never go into the catch");
	}
	}
	
	@Test
	public void test_add_negative_no1invalid() {
		try
		{
			//test data no1=999,no2=5;
			int actual=calculator.add(1000, 5);
			assertTrue(false);
		}	
		catch(RuntimeException re){
			assertTrue(true);
			assertEquals(re.getMessage(),"Either no1 or no2 is greater than 999");	;
		}

	}
	
	@Test
	public void test_divide_exception() {
		try {
		calculator.div(1,0);
		}
		
		catch(ArithmeticException e) {
			assertTrue(true);
		}
	}
	
}