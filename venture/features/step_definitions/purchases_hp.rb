$address_form_hp = AddressFormWL.new
$login_page_wl = LoginPageWL.new
$succes_page_wl = SuccessPageWL.new
$product_page_wl = ProductPageWL.new
$cart_page_wl = CartPageWL.new
$payment_methods_wl = PaymentMethodsWL.new
$checkout_page_wl = CheckoutPageWL.new

#Metodo de pago COD

Given(/^I want to purchase a product with payment method hp$/) do
  visit url_visit
end

When(/^I do a search of a product hp$/) do
  $product_page_wl.search_product_select_hp
end

When(/^I select the item hp$/) do
  $product_page_wl.click_item_wl
end

When(/^I go to the cart hp$/) do
 $cart_page_wl.go_to_cart_wl
end

When(/^I do Login in the checkout hp$/) do
  $login_page_wl.click_registrate_checkout_hp
end

When(/^I select the shipping options COD hp$/) do
   $payment_methods_wl.method_cod_wl
end

When(/^I do purchase the item hp$/) do
  $checkout_page_wl.purchase_finish_wl
end

Then(/^I should see finished purchase hp$/) do
  $succes_page_wl.expect_success_wl
end

# Deposito Bancario

When(/^I select the shipping options Banck Dep hp$/) do
  $payment_methods_wl.method_bank_deposit_caja_hp
end

# Pago con Tarjeta de Credito o Debito 
When(/^I select the shipping options TCoD hp$/) do
  $payment_methods_wl.methodcc_select_option_mx
end

When(/^I enter my credit card data hp$/) do
  $payment_methods_wl.method_data_credit_card_hp
end

Then(/^I should see not complete purchase hp$/) do
  $succes_page_wl.success_no_complete_wl
end

Then(/^I should see finished is not hp$/) do
  $succes_page_wl.success_no_el_monto_wl
end

#################################################################

#Chile

# Mercado Pago 
When(/^I select the shipping options MP hp$/) do
  $payment_methods_wl.method_mercado_pago_cl
end 

Then(/^I should see not finished purchase mp$/) do
  $succes_page_wl.success_no_complete_wl
end

# Webpay / Redcompra
When(/^I select the shipping options WR hp$/) do
  $payment_methods_wl.method_webpay_card_cl
end

Then(/^I should see webpay page as success$/) do
  $succes_page_wl.success_webpay_wl
end

# Khipu
When(/^I select the shipping options Khipu hp$/) do
  $payment_methods_wl.method_khipu_cl
end

Then(/^I should see khipu page as success$/) do
  $succes_page_wl.success_khipu_wl
end


