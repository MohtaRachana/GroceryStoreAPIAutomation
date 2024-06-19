package com.api.automation.products;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestProductRunner {
	@Test
	public Karate runTest()
	{
		return Karate.run("invalidInput").relativeTo(getClass());
		//return Karate.run("getProduct").relativeTo(getClass());
	}
}
