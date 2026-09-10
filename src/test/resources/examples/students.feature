Feature: Student API Testing

  Background:
    * def apiURL = 'http://10.0.0.205:8080/jpa'

  Scenario: Create a new student
    Given url apiURL
    And path 'add-student'
    And request
      """
      {
        "id": 10,
        "firstName": "Ram",
        "lastName": "Karate"
      }
      """
    When method POST
    Then status 200

  Scenario: Get all students
    Given url apiURL
    And path 'students'
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
    When method GET
    Then status 200
    And match response.firstName == "Ram"