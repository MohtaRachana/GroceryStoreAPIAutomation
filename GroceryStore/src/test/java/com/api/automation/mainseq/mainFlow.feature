Feature: To automate the tests
 
Background: Setup the base path
Given url 'https://simple-grocery-store-api.glitch.me'
 
Scenario: To automate
#	Status
Given call read("classpath:com/api/automation/status/statusCode.feature")
# Product
And call read("classpath:com/api/automation/products/getProduct.feature")
# cart
And call read("classpath:com/api/automation/cart/createcart.feature")
And call read("classpath:com/api/automation/cart/addItemsToCart.feature")
And call read("classpath:com/api/automation/cart/getCartItem.feature")
And call read("classpath:com/api/automation/cart/updateQuantity.feature")
And call read("classpath:com/api/automation/cart/replaceProduct.feature")
And call read("classpath:com/api/automation/cart/delete.feature")
# order
And call read("classpath:com/api/automation/order/createOrder.feature")
And call read("classpath:com/api/automation/order/getOrder.feature")
And call read("classpath:com/api/automation/order/updateOrder.feature")
And call read("classpath:com/api/automation/order/deleteOrder.feature")