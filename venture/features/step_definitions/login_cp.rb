$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new
$myprofile_page_wl = MyProfilePageWL.new


#Login in My account all

Given(/^I want to login in my account cp$/) do
  visit url_visit
end

When(/^I go to click in login cp$/) do
  $login_page_wl.click_link_login_cp
end

When(/^I enter user, pass and click in login cp$/) do
  $login_page_wl.user_and_pass_data_cp
end

Then(/^I should back to home page cp$/) do
  $myprofile_page_wl.my_personal_option
end


#Login in checkout 

Given(/^I want to login in checkout cp$/) do
  visit url_visit
end

When(/^I do a search of a product cp$/) do
  $product_page_wl.search_product_cp
end

When(/^I select the item cp$/) do
  $product_page_wl.click_the_item_cp
end

When(/^I go to the cart cp$/) do
  $cart_page_wl.go_to_cart_wl
  #click_button 'AddToCart'
end

When(/^I do Login in the checkout cp$/) do
  $login_page_wl.login_checkout_cp
  $login_page_wl.user_and_pass_data_cp
end

Then(/^I should see in the cart is logeado cp$/) do
  $myprofile_page_wl.my_personal_option
end
