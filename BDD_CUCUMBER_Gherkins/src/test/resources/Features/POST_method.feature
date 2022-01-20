#Sample Feature Definition Template for POST METHOD
Feature: Check if we able to add record
  Check if we able to add record

  Background: Authorization is set to Basic Auth

  Scenario: Check if we are able to add a record
    Given User creates POST request with ProgramId non existing
    When User sends the request
    Then User receives 200 OK status

