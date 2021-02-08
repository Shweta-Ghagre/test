Feature: Test Employee API
  Background:
    * url 'http://dummy.restapiexample.com'
    * def jsonpayload = read('../payload/EmployeePOST.json')
    * def jsonpayload1 = read('../payload/EmployeePUT.json')
    


  Scenario: Get all employee data
    Given path '/api/v1/employees'
    When method GET
    Then status 200
  Scenario: Create New employee data
    Given path '/api/v1/create'
    And request jsonpayload
    When method POST
    Then status 200    
  Scenario: Get Employee number 
    Given path '/api/v1/employee/10'
    When method GET
    Then status 200
  Scenario: Update employee data
    Given path '/api/v1/update/10'
    And request jsonpayload1
    When method PUT
    Then status 200 
  Scenario: Delete employee data
    Given path '/api/v1/delete/10'
    And request jsonpayload1
    When method GET
    Then status 200 