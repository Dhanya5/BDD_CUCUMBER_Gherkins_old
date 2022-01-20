#Sample Feature Definition Template for GET METHOD
Feature: Check the Authorization
   To Check the Authorization
  url "https://lms-admin-rest-service.herokuapp.com/program

  Scenario: Check the Authorization as default
    Given User creates GET request for LMS API endpoint
    When User sends the request
    Then User receives 401 Unauthorized error

  Scenario: Check the Authorization as Basic Auth
    Given User sets the Authorization as Basic Auth with Valid User name and password
    When User sends the request
    Then User receives 200 OK Status

  Scenario: To Check getting all the records from LMS
    Given User sets the Authorization as Basic Auth with Valid User name and password
    When User sends the request
    Then User receives 200 OK Status with the complete list of programs including programId,programName,programDescription,online fields

  Scenario: Check using the incomplete/wrong URL
    Given User sets the Authorization as Basic Auth with Valid User name and password
    When User sends the request
    Then User receives 404 Not Found message
