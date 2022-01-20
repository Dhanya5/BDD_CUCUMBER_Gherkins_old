#Sample Feature Definition Template for GET ProgramId METHOD
#GET{{programId}} Method
Feature: Getting record for a particular programId GET{{programId}} Method
  
  url "https://lms-admin-rest-service.herokuapp.com/Programs/{{ProgramId}}"

  Background: Authorization is set to Basic Auth with Valid Username and Password

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
