Feature: Simple Grocery Store API Tests for all product available.

  Background: 
    * url 'https://simple-grocery-store-api.glitch.me'

  Scenario: Retrieve all products
    Given path '/products'
    And header Accept = 'application/json'
    When method GET
    Then status 200
    #create a variable to store data from external file
    * def actualResponse = read("../productJson.json")
    And print "Response in json format...",actualResponse
    #match with the response
    And match response == actualResponse

  Scenario: Retrieve a specific product
    * def productData = read("../productJson.json")
    * def firstProduct = karate.jsonPath(productData, '$[0]')
    Given path '/products/' + firstProduct.id
    And header Accept = 'application/json'
    When method GET
    Then status 200
    And match response contains firstProduct
