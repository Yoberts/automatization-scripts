Feature: Purchases 
As an user I should be able buy a product using the available payment methods

# Metodos de pago.

@hpmx @hpcl
Scenario: Cash on delivery Payment method
	  Given I want to purchase a product with payment method hp
  	When I do a search of a product hp
  	And I select the item hp
  	And I go to the cart hp
  	And I do Login in the checkout hp
  	And I select the shipping options COD hp
  	And I do purchase the item hp
    Then I should see finished purchase hp


#@hpmx @hpcl
Scenario: Bank Deposit Payment method
	  Given I want to purchase a product with payment method hp
  	When I do a search of a product hp
  	And I select the item hp
  	And I go to the cart hp
  	And I do Login in the checkout hp
  	And I select the shipping options Banck Dep hp
  	And I do purchase the item hp
    Then I should see finished purchase hp
    # solo CL
    #Then I should see finished is not hp

#@hpmx
Scenario: Credit Card Payment method
    Given I want to purchase a product with payment method hp
    When I do a search of a product hp
    And I select the item hp
    And I go to the cart hp
    And I do Login in the checkout hp
    And I select the shipping options TCoD hp
    And I enter my credit card data hp
    And I do purchase the item hp
    Then I should see not complete purchase hp

    ##################################################################

#@hpcl
Scenario: Mercado Pago Payment method
    Given I want to purchase a product with payment method hp
    When I do a search of a product hp
    And I select the item hp
    And I go to the cart hp
    And I do Login in the checkout hp
    And I select the shipping options MP hp
    And I do purchase the item hp
    #Then I should see not finished purchase mp


#@hpcl
Scenario: Webpay Redcompra Payment method
    Given I want to purchase a product with payment method hp
    When I do a search of a product hp
    And I select the item hp
    And I go to the cart hp
    And I do Login in the checkout hp
    And I select the shipping options WR hp
    And I do purchase the item hp
    Then I should see webpay page as success

@hpcl
Scenario: Khipu Payment method
    Given I want to purchase a product with payment method hp
    When I do a search of a product hp
    And I select the item hp
    And I go to the cart hp
    And I do Login in the checkout hp
    And I select the shipping options Khipu hp
    And I do purchase the item hp
    Then I should see khipu page as success