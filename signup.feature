@javascript
Feature: SignUp
  Scenario: "SignUp verification"
     Given I am on "/"
     Then I switch to popup by clicking link "Sign up"
 	 Then I see the text "Discover Support Designed for You"
 	 When I press the element "Subscriber type patient"
     And I fill in "First Name" with "John"
     And I fill in "Email address" with "test@qa.com"
     Then click the element "Edit consent"
     And I click the element "Checkbox recaptcha"
     Then I click the element "Sign up"
     And I wait for "5" seconds
     Then I see the text "Thank You!"
     And I do not see the text "Sign up"
  