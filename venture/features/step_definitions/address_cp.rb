$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new
$myprofile_page_wl = MyProfilePageWL.new

# Address my account

When(/^I go to my account cp$/) do
  $login_page_wl.click_my_account_cp
end

When(/^I go to my address cp$/) do
  $address_form_hp.click_address_book_cp
end

When(/^I go to add my address cp$/) do
  $address_form_hp.select_new_address_cp
end

When(/^I enter my address data cp$/) do
  $address_form_hp.form_country_select_hp
end

When(/^I save my address cp$/) do
  $address_form_hp.button_save_address_hp
end

Then(/^I go to see the save address cp$/) do
  $succes_page_wl.success_confirm_address_hp
end

# Add address cheout 

When(/^I click to pay cp$/) do
  true
end

When(/^I go to add my address checkout cp$/) do
  true
end

When(/^I go to purchase cp$/) do
  true
end

Then(/^I go to see finish purchase cp$/) do
 true
end