package com.virtusa.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.virtusa.service.NumberCheck;

public class TestNumberCheck {
	
	private NumberCheck numberCheck=null;

	@Before
	public void setUp() throws Exception {
		numberCheck=new NumberCheck();
	}

	@After
	public void tearDown() throws Exception {
		numberCheck=null;
	}

	@Test
	public void testDetermineWhetherArmstrongNumber_positive_1() {
	try{
		//test data-when armstrong number
		int no=153;
		boolean actual=numberCheck.determineWhetherArmstrongNumber(no);
		boolean expected=true;
		assertEquals(actual,expected);
	
	}catch(RuntimeException e){
		assertTrue(false);
	}
	}
	
	@Test
	public void testDetermineWhetherArmstrongNumber_positive_2() {
	try{
		//test data-when armstrong number
		int no=1531;
		boolean actual=numberCheck.determineWhetherArmstrongNumber(no);
		boolean expected=false;
		assertEquals(actual,expected);
	}catch(RuntimeException e){
		assertTrue(false);
	}
	}

	@Test
	public void testDetermineWhetherArmstrongNumber_negative() {
	
		try{
		//test data
		int no=15333;
		boolean actual=numberCheck.determineWhetherArmstrongNumber(no);
		assertTrue(false);
		}catch(RuntimeException e){
			
			assertTrue(true);
		}
	}
}
