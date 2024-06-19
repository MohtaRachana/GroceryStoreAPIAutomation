package com.api.automation.cart;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestCartRunner {
	@Test
	public Karate runTest()
	{
		return Karate.run("createcart","addItemsToCart","getCartItem","updateQuantity","replaceProduct","delete").relativeTo(getClass());
	}
}
