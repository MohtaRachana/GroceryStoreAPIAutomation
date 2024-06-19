Feature: Create an order

  Background: 
    Given url 'https://simple-grocery-store-api.glitch.me'
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/cartId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def cartId = scanner.useDelimiter('\\Z').next()
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/secure.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def access_token = scanner.useDelimiter('\\Z').next()
    * scanner.close()

  Scenario Outline: 
    Given path '/orders'
    And request {"cartId": '#(cartId)',"customerName": <customerName>}
    And header Authorization = 'Bearer ' + access_token
    When method post
    Then status 201
    And print response
    And response.created == true
    * def orderId = response.orderId
    And karate.write(orderId,'orderId.txt')

    Examples: 
      | customerName |
      | Kaira        |
