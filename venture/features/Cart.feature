Feature: Cart features
  As user I should be able to:
  - Change quantity items in the cart of the same item
  - Delete the items in the cart
  - Add a coupon of basic percent in the cart

@ve @mx @pa @co @pe @cl @ec @ar
Scenario: change quantity items
 Given I want to change the quantity of item
 When I search a product
 And I select the item for purchase
 And I go to the cart
 Then I change quantity item

@ve @mx @pa @co @pe @cl @ec @ar
Scenario: delete items
 Given I want to delete to items on cart
 When I search a product
 And I select the item for purchase
 And I go to the cart
 Then I delete item
 
 @ve @mx @pa @co @pe @cl @ec @ar
 Scenario: Add coupon in the cart
 Given I have a coupon 
 When I search a product
 And I select the item for purchase
 And I go to the cart
 Then I click to link "Aplicar cupón"
 And I enter my coupon "testqa-basic"
 And I click to button "Aplicar"
 Then I see a discount