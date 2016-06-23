Feature: Add new address
  As user registrered to Club Premier should be able to create addresses in my account, checkout and also delete my addresses

#@wlcp
Scenario: Add address in my account CP 
	Given I want to login in my account cp 
  	When I go to click in login cp
  	And I enter user, pass and click in login cp
  	And I go to my account cp
  	And I go to my address cp
  	And I go to add my address cp
    And I enter my address data cp
    And I save my address cp
    Then I go to see the save address cp

 #@wlcp
Scenario: Login Checkout
	Given I want to login in checkout cp
  	When I do a search of a product cp
  	And I select the item cp
  	And I go to the cart cp
  	And I do Login in the checkout cp
  	And I click to pay cp
  	And I go to add my address checkout cp
  	And I go to purchase cp
  	Then I go to see finish purchase cp