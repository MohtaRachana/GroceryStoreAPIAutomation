Feature: API Client Registration

  Background: set up the base url
    Given url 'http://simple-grocery-store-api.online'

  Scenario Outline: Register a New API Client
    Given path '/api-clients'
    And request { clientName: <clientName>, clientEmail: <clientEmail> }
    When method post
    Then status 201
    And match response contains { accessToken: '#string' }
    * def access_token = response.accessToken
    And print access_token
    * karate.write(access_token,'secure.txt')

    Examples: 
      | clientName | clientEmail        |
      | Rutvimth     | Kaira1234@gmail.com |
