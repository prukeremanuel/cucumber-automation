Feature: Testifng outline

  Scenario Outline: As a user I can switch tabs
    Given I am on the demo QA home page
    When I click on the <menu> menu
    Then I see the <title>

  Scenarios:
  | menu     | title     |
  | About us | About us  |
  | Services | Services  |
  | Contact  | Contact   |