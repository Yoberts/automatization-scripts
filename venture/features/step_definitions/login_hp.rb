$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new


# Login hp mx, cl

Given(/^I want to login in HP$/) do
 true
end

Then(/^I go to home HP$/) do
  visit url_visit
end

Then(/^I go to login hp$/) do
  $login_page_wl.click_login_home_hp
end

Then(/^I type my user and password$/) do
  $login_page_wl.user_and_pass_data_hp
end

Then(/^I click in the button "([^"]*)"$/) do |arg1|
  $login_page_wl.click_button_login_hp
end 

Then(/^I should back to home page$/) do
  true 
end

#Login checkout

Given(/^I want to login in checkout hp$/) do
  visit url_visit
end

Then(/^I should see the apartad payment methods hp$/) do
  true
end

####################################################################
# Login hpcl en checkout 

When(/^I do a search of a product hpcl$/) do
  fill_in 'searchInput',:with => 'HP034EL48ALBLACL'
  click_button 'Buscar'
end

When(/^I select the item hpcl$/) do
	sleep 2
  page.find(:xpath, '/html/body/div[1]/section/div[2]/div[3]/ul/li[1]/a/ul/li[1]/span/span/img').click
end

When(/^I go to the cart hpcl$/) do
  click_button 'AddToCart'
  sleep 2
  select 'METROPOLITANA', :from => 'overlay-shipping-address-region'
  select 'SANTIAGO', :from => 'overlay-shipping-address-municipality'
  click_button 'Aceptar'
  sleep 3
  visit url_visit + '/checkout/finish/'
  sleep 3
end

