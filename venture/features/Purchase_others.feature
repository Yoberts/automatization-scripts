Feature: Purchases
 - As I User should be able to purchase a product with variation.
 - As I user should be able to purchase with a coupon.

#@co @mx @pe @pa @cl @ar @ec @ve
Scenario: Purchase a product with variation         
	Given I want to purchase a product with variation 
	And I Login
	When I search this product with variation "Linio.QA.Var"    
	And I go to the product page    
	And I select to a variation avalaible                  
	And I go to the cart with the item                  
	And I select the shipping options
	And I choose the payment method avalaible
	And I purchase the item
	Then I should see a thank you message


@co @mx @pe @pa @cl @ar @ec @ve
Scenario: Purchase with coupon
	Given I want to purchase with my coupon 
	When I search a product
	And I select the item for purchase
	And I go to the cart with the item
	And I Login in the checkout
	And I select the shipping options
	And I choose the payment method avalaible
	And I put my coupon "testqa-basic"
	And I purchase the item
	Then I should see a thank you message