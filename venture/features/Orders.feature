Feature: Check my registered orders
  As user registrered to Linio should be able check my order information

@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Check my last order
  Given I'm an user registered with purchases
  When I go to the home page
  And I Login
  And I go to my account
  And I go to my orders
  And I enter to my order details
  Then I should see the order detail
 