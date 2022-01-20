#Sample Feature Definition Template for GET METHOD
Feature: Check the Authorization
  Check the Authorization
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

  Scenario: To Check if we are getting record of a particular programID
    Given User creates GET request with existing programId
    When User sends the request
    Then User receives 200 OK with required {{programId}}, programName,programDescription,online fields was displayed

  Scenario: Check if we are getting record of a programId which is not existing
    Given User creates GET request with non existing {{ProgramID}}
    When User sends the request
    Then User receives 200 OK with response body as null

  Scenario: Check if we are getting record of a programId=0
    Given User creates GET request with programId as 0
    When User sends the request
    Then User receives 200 OK with response body as null

  Scenario: Check if we are getting record if programId is alphanumeric
    Given User creates GET request with programId as alphanumeric
    When User sends the request
    Then User receives 400 Bad request

  Scenario: Check if we are able to add a record
    Given User creates POST request with ProgramId non existing
    When User sends the request
    Then User receives 200 OK status
