Feature: Test Employee API
  Background:
    * url 'http://dummy.restapiexample.com'
    * def jsonpayload = read('../payload/EmployeePOST.json')
 

  Scenario: Create New employee data
    Given path '/api/v1/create'
    And request jsonpayload
    When method POST
    Then status 200    