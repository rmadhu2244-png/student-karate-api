Feature: Student API Testing

  Background:
    * def apiURL = 'http://10.0.0.205:8080/jpa'

  Scenario: Create a new student
    Given url apiURL
    And path 'add-student'
    And header Content-Type = 'application/json'
    And request
      """
      {
        "id": 10,
        "firstName": "Ram",
        "lastName": "Karate"
      }
      """ghjgjhgjhgj
      ffghfhghg
      ljljl
    When method POST
    Then status 200
    Then "Success"

  Scenario: Get all students
    Given url apiURL
    And path 'students'
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
#    Then match response ==
#    """
#    {
#      id: 10,
#      firstName: "Ram",
#      lastName: "Karate"
#    }
#    """

  Scenario: Get a student by ID
    Given url apiURL
    And path 'student', 10
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And match response.firstName == "Ram"