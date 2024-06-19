Feature: Replace the product

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
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/itemId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def itemId = scanner.useDelimiter('\\Z').next()
    * scanner.close()

  Scenario: 
    Given path '/carts/' + cartId + '/items/' + itemId
    
    When method delete
    Then status 204
    And print response
    * def result = call read("classpath:com/api/automation/cart/getCartItem.feature")
    And print result

   