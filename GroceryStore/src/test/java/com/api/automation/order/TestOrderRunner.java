package com.api.automation.order;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestOrderRunner {
	@Test
	public Karate runTest()
	{
		return Karate.run("createOrder","getAllOrder","getOrder","updateOrder","deleteOrder").relativeTo(getClass());
	}
}
