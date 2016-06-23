Feature: Login CP
As an user I want be able to make login in my account and checkout 

@wlcp
Scenario: Login My account 
	Given I want to login in my account cp 
  	When I go to click in login cp
  	And I enter user, pass and click in login cp
  	Then I should back to home page cp

@wlcp
Scenario: Login Checkout
	Given I want to login in checkout cp
  	When I do a search of a product cp
  	And I select the item cp
  	And I go to the cart cp
  	And I do Login in the checkout cp
  	Then I should see in the cart is logeado cp




