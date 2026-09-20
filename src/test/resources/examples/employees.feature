Feature: Employee API Testing

  Background:
    * def apiURL = 'https://dummy.restapiexample.com/api/v1/'

  Scenario: Get all employee data
    Given url apiURL
    And path 'employees'
    When method GET
    Then status 200

  Scenario: Create new record in database
    * def name = 'MadhuTest'
    Given url apiURL
    And path 'create'
    And request { name: '#(name)', salary: '123', age: '24' }
    When method POST
    Then status 200

  Scenario: Get a single employee data
    Given url apiURL
    And path 'employee/8386'
    When method GET
    Then status 200