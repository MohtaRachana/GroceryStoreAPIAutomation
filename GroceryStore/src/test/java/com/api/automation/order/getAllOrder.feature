Feature: Get all order
Background:
Given url 'https://simple-grocery-store-api.glitch.me'
* def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/secure.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def access_token = scanner.useDelimiter('\\Z').next()
    * scanner.close()
Scenario: get all order
Given path '/orders'
And header Authorization = 'Bearer ' + access_token
    When method get
    Then status 200
    And print response
