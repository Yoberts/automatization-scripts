Feature: Subscribe and Unsubcribe to Linio Newsletter
  As a registered user in Linio, I want to subscribe/unsubscribe to newsletter from account and subscribe as a unregistered user from home page

@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Subscribe to newsletter from my account
  Given I want to login in my account
  When I go to the home page
  And I Login
  And I go to my account
  And I go to notifications option
  And I subscribe
  And I save my preferences
  Then A subscription confirmation message is shown

#@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Unsubscribe to newsletter from my account
  Given I want to login in my account
  When I go to the home page
  And I Login
  And I go to my account
  And I go to notifications option
  And I unsubscribe
  Then An unsubscription confirmation message is shown

#@mx @co @pe @ve @ar @ec @cl @pa
Scenario: Subscribe from home page
  Given I go to the home page
  And I click on subscribe link
  And I enter an email
  #And I click on subscribe
  Then A cupon is generated