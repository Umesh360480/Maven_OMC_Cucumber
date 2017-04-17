Feature: OMC Login Functionality

Background: This is background step to navigate to OMC-PRN Website
 Given Navigate to OMC PRN Website

@PRN_User_Login_With_Valid_Credentials  
  Scenario: Should be login with valid credentials
    Given User is on Login Page
    When User enters UserName and Password
      | username         | password   |
      | rakesh.m@cts.com | password-1 |
    Then User should be Logged In Successfully
    And User should be logged out succesfully

@PRN_User_Login_With_Invalid_Credentials
  Scenario: Should not be login with invalid credentials
    Given User is on Login Page
    When User enters UserName and Password
      | username          | password   |
      | rakesh.m1@cts.com | password-1 |
    Then User should be alerted for valid credentials
    And User should be logged out succesfully
