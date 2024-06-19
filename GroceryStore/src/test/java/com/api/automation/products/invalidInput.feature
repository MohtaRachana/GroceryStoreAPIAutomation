Feature: Verify behavior for invalid category names

Background:
 * url 'https://simple-grocery-store-api.glitch.me'
  

Scenario: Get products by invalid category
    Given path '/products'
    # Specify the invalid category name
    And params { category: 'invalidCategoryName' }  
    When method GET
    Then status 400
    # Verify the error message
     And match response == { error: "Invalid value for query parameter 'category'. Must be one of: meat-seafood, fresh-produce, candy, bread-bakery, dairy, eggs, coffee" }
     
     
   Scenario: Verify handling of invalid input
    Given path '/products'
    And param results = 25
    And param category = 'coffee'
    When method get
    Then status 400
    And match response contains {error: '#string'}
    And match response.error == "Invalid value for query parameter 'results'. Cannot be greater than 20."