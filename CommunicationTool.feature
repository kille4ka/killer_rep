Feature: Communication tool
  Scenario: Communication tool verification
     Given I am on "/how-change-your-conversation"
     When I click the element "Get started"
     And I wait for "5" seconds
     Then I see the text "Make It More Than Just Small Talk"
     When I click the element "Replies item"
     Then I click the element "Continue"
     And I wait for "5" seconds
     When I click the element "Replies item"
     Then I click the element "Continue"
     And I wait for "5" seconds
     When I click the element "Replies item"
     Then I click the element "Continue"
     And I wait for "5" seconds
     And I see "Outcome"
     Then I click "Complete"
     And I see "This is your conversation"
     When I click the element "Download"
     Then I switch to "/sites/default/files/2021-01/communication_tool/this-is-your-conversation_0_0.pdf"
     Then I switch back to "/how-change-your-conversation"
     And I see "You Did It!"
     Then I switch to popup by clicking link "Email"
     And I fill in the following:
        |First name    |   Ann              |
        |Email address |   test@test.com   |
     Then I click the element "Submit"
     And I see "On the way"
     
     
