Feature: Registration HP
  As an user I should be able to create a new account
  in my account and checkout 

@hpmx @hpcl
Scenario: Registration new user in HP
  Given I want to create a new account in My account Hp
  When I go to the home page hp
  And I go to registration page in the hp
  And I write my personal data in the form hp
  And I click to button Completar registro hp
  Then I should see my account hp

@hpmx @hpcl
Scenario: Registration new user in checkout HP
  Given I want to create a new user in checkout hp
  When I go to the home page hp
  And I do a search of a product hp
  And I select the item hp
  And I go to the cart hp
  And I write my personal data in the form checkout hp
  And I select the shipping options COD hp
  And I do purchase the item hp
  Then I should see success hp