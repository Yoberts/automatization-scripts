$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new
$myprofile_page_wl = MyProfilePageWL.new

#Agregar direccion desde Myaccount MX

Given(/^I'm an user registered hp$/) do
  true 
end

When(/^I go to the home page hp$/) do
  visit url_visit
end

When(/^I Login hp$/) do
  $login_page_wl.click_login_home_hp
end

When(/^I go to my account hp$/) do
  $login_page_wl.user_and_pass_data_hp
  $login_page_wl.click_button_login_hp
end

When(/^I go to my address hp$/) do
  $login_page_wl.my_account_home
  $address_form_hp.link_address_book_hp
  $address_form_hp.link_add_address_hp
end

When(/^I enter my address data hp$/) do
  $address_form_hp.form_country_select_hp
end

When(/^I save the information hp$/) do
  $address_form_hp.button_save_address_hp
end

When(/^I should see a confirmation message hp$/) do
  $succes_page_wl.success_confirm_address_hp
end

#Agregar direccion en checkout

Given(/^I want to create a new addres from checkout hp$/) do
   visit url_visit 
end

When(/^I search a product hp$/) do  
  $product_page_wl.search_product_select_hp
end

When(/^I select the item for purchase hp$/) do
  $product_page_wl.click_item_wl
end

When(/^I go to the cart with the item hp$/) do
  $cart_page_wl.go_to_cart_wl
end

When(/^I Login in the checkout hp$/) do
  $login_page_wl.click_registrate_checkout_hp
end

When(/^I click to change Link address hp$/) do
  $address_form_hp.add_new_address_checkout_hp
end

When(/^I add my new address hp$/) do
  $checkout_page_wl.form_country_select_checkout_hp
end

When(/^I select the shipping options hp$/) do
  $payment_methods_wl.method_cod_wl
end

When(/^I save the information checkout hp$/) do
  $checkout_page_wl.purchase_finish_wl
end

Then(/^I confirm the message in checkout hp$/) do
  $succes_page_wl.expect_success_wl
end

# Eliminar direccion 

Given(/^I want to delete my address hp$/) do
  true
end

When(/^I click to delete address link hp$/) do
  $address_form_hp.link_delete_address
end

Then(/^I should see a confirmation message hpwl$/) do
  $succes_page_wl.success_delete_address_hpwl
end

###################################################################
