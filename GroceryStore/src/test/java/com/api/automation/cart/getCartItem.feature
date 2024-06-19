Feature: Get all the items which is present in the cart

Background:
 Given url 'https://simple-grocery-store-api.glitch.me'
 * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/cartId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def cartId = scanner.useDelimiter('\\Z').next()
    * scanner.close()
    
 Scenario:
 Given path '/carts/' + cartId + '/items'
 When method get
 Then status 200
 And print response