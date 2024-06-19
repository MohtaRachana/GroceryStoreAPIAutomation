Feature: Update order

  Background: 
    Given url 'https://simple-grocery-store-api.glitch.me'
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/orderId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def orderId = scanner.useDelimiter('\\Z').next()
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/secure.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def access_token = scanner.useDelimiter('\\Z').next()
    * scanner.close()

  Scenario Outline: 
    Given path '/orders/' + orderId
    And request {"customerName":<customerName>,"comment": <comment>}
    And header Authorization = 'Bearer ' + access_token
    When method patch
    Then status 204
    And print response
     * def result = call read("classpath:com/api/automation/order/getOrder.feature")
    And print result

    Examples: 
      | customerName | comment        |
      | Rutvi        | Pick at 4:00pm |
