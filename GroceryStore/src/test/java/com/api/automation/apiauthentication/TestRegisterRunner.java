package com.api.automation.apiauthentication;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRegisterRunner {
	@Test
	public Karate runTest()
	{
		return Karate.run("registernewclient").relativeTo(getClass());
	}
}
