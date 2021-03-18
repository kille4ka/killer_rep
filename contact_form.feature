@javascript
Feature: Contact us form
  Scenario: Form verification
     Given I am on "/contact-us"
     Then I should see "Contact"
 	 Then I fill in the following:
     |First and last name |Name Surname  |
     |Company             |Test company  |
     |E-Mail              |test@test.com |
     |Add text            |Lorem ipsum   |
     And I attach the file "test.txt" to "Chose document (max 50 MB)"
     Then I wait for 3 seconds
     And I click the element "Copy to me"
     Then I click the element "I have read and accept the terms of the privacy policy"
     Then I click the element "Send"
     And I wait for "3" seconds
     Then I should see "Thank you for your message"
     When I click the element "Go back to homepage"
     Then I am redirected to "/"
  