Feature: Demo QA register feature

  Scenario: As a user I can access the register page
    Given I am on the demo QA home page
    When I click the registration button
    Then I see "Registration" page

  Scenario: As a user I can successfully register
    Given I am on the "Registration" page
    When I fill in the "first name" field with "Manu"
    And I fill in the "last name" field with "LastName"
    And I select the "single" Material Status
    And I select the "dance" Hobby
    And I fill in the phone number
    And I fill in the "username" field with "username"
    And I fill in the "email" field with "email"
    And I fill in the Password field
    And I fill in the Password confirmation field
    And I clik on the Submit button
    Then I see "Thank you for your registration" string
