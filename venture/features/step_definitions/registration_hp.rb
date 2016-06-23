$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new
$registration_page_wl = RegistrationUserPageWL.new


#Registro de nuevo usuario en My account 

Given(/^I want to create a new account in My account Hp$/) do
	true
end

When(/^I go to registration page in the hp$/) do
	$login_page_wl.register_new_home_hp
end

When(/^I write my personal data in the form hp$/) do
  $registration_page_wl.form_registration_user_home
end

When(/^I click to button Completar registro hp$/) do
  $login_page_wl.complete_register_home_hp
end

Then(/^I should see my account hp$/) do
  $succes_page_wl.expect_new_count_wl
end


  #Registro de nuevo usuario en checkout


Given(/^I want to create a new user in checkout hp$/) do
  true
end

When(/^I write my personal data in the form checkout hp$/) do
  $registration_page_wl.form_registration_user_checkout
end

Then(/^I should see success hp$/) do
  $succes_page_wl.expect_success_wl
end
