Feature: Watir Example

    Scenario: Fill the form
        Given I am on WatirExamplePage
        When I fill the form
        And I click on submit
        Then I should see the message "Thanks!"
