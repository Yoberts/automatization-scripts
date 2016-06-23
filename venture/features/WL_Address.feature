Feature: Add new address
  As user registrered to Linio should be able to create addresses in my account, checkout and also delete my addresses



@hpmx @hpcl 
Scenario: Add address in my account HP
  Given I'm an user registered hp
  When I go to the home page hp
  And I Login hp
  And I go to my account hp
  And I go to my address hp
  And I enter my address data hp
  And I save the information hp
  And I should see a confirmation message hp


@hpmx @hpcl
Scenario: Add address in checkout HP
  Given I want to create a new addres from checkout hp
  When I search a product hp
  And I select the item for purchase hp
  And I go to the cart with the item hp
  And I Login in the checkout hp
  And I click to change Link address hp
  And I add my new address hp
  And I select the shipping options hp
  And I save the information checkout hp
  Then I confirm the message in checkout hp

@hpmx @hpcl
Scenario: Delete Address HP
  Given I want to delete my address hp
  When I go to the home page hp
  And I Login hp
  And I go to my account hp
  And I go to my address hp
  And I click to delete address link hp
  Then I should see a confirmation message hpwl



