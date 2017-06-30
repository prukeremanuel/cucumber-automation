Feature: Testing Background functionality

  Background: As a user i can reach the selectable page
    Given I am on the demo QA home page
    When I click the "Selectable" button
    Then I see the "Selectable" page title

  Scenario: As a user I can select any item under default functionality tab
    Given I click on the Default functionality button
    When I select "Item 2"
    Then I see the "Item 2" is selected

  Scenario: As a user I can select any item under display as grid tab
    Given I click on the display as grid button
    When I select "6"
    Then I see the "6" is selected