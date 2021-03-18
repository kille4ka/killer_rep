Feature: 404 page
  Scenario: 404 page verification
     Given I am on "/nghhgj"
	 And I should see "404  PAGE NOT FOUND"
	 When I click the element "Back to the homepage"
	 Then I am redirected to "/"


	 
   
   	 
   	 