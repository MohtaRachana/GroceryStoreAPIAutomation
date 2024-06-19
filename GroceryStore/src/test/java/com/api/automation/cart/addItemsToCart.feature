Feature: Add items to cart

  Background: 
    Given url 'https://simple-grocery-store-api.glitch.me'
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/cartId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def cartId = scanner.useDelimiter('\\Z').next()
    * scanner.close()

  Scenario Outline: Add items in the cart
    Given path '/carts/' + cartId + '/items'
    And request {"productId": <productId> , "category": <category>, "quantity": <quantity>}
    When method post
    Then status 201
    And print response
    And match response.created == true
    And def itemId = response.itemId
    And karate.write(itemId, 'itemId.txt')

    Examples: 
      | read("classpath:com/api/automation/cart/items.csv") |
