Feature: Login feature

  Scenario: As a valid user I can log into outlook
    Given I am on the outlook login page
    When I enter "Reporter.Testing1@phishme.com" in the username field
    And I enter "Umbr3blec2154ryst!" in the password field
    And I press Sign In
    And I click on the first email
    And I click the report button
    Then I see the report phishing button