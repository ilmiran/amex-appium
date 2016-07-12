Feature: Tests for login to Amex

  Scenario: User able to accept terms of service
    Given I land on terms of service screen
    Then I click agree button
    And I land on login screen
    
  Scenario: User gets an error with outdated appid
    Given I land on terms of service screen
    Then I click agree button
    Then I land on login screen
    Then I type "ilmiranugumanova" as userid
    Then I type "password" as password
    Then I click login button
    And I get error message
