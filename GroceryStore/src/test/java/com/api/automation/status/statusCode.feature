Feature: check status

  Background: 
    Given url 'https://simple-grocery-store-api.glitch.me'
    
    
  Scenario: check status
    # create cart
    Given path '/status'
    When method get
    Then status 200
    And print response
    And match response.status == "UP"
    