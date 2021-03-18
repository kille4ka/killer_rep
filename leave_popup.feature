Feature: External link pop up
  Scenario: External link up verification
     Given I am on "/"
     When I click the element "Download app" and switch to popup
 	 Then I see the text "You are now leaving ThisIsLivingWithCancer.com"
 	 And I wait for "5" seconds
 	 When I press the "Continue" button
	 And I wait for "5" seconds
	 And I switched to a new window


	 
   
   	 
   	 