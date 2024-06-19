Feature: Add Items to Cart

  Background: 
    Given url 'https://simple-grocery-store-api.glitch.me'
    
    
  Scenario: create cart
    # create cart
    Given path '/carts'
    When method post
    Then status 201
    * def cartId = response.cartId
    And print 'Cart ID:', cartId
    * karate.write(cartId,'cartId.txt')
    
    
  
  
 		