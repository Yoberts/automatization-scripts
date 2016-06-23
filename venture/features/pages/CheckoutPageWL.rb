class CheckoutPageWL
	  include Capybara::DSL

#All objects of Checkout Page Alice
 def purchase_finish_wl
 @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
    click_button 'Finalizar Compra'
    sleep 10     
   elsif @aux1 == "CL"
    #page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[4]/div/fieldset[3]/div[1]/label/input[2]').click
    check ('TermsAndConditionsFieldForm_accepted_terms')
    sleep 5
    click_button 'Finalizar Compra'
    sleep 10
  end
end

  def form_country_select_checkout_hp
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
    form_address_mx_hp
  elsif @aux == "CL"
    form_address_cl_hp  
   elsif @aux == "CP"
    form_address_cp 
  end

end

def form_address_mx_hp

    sleep 3
    fill_in 'BillingAddressForm_mobile_phone',:with => ''
    fill_in 'BillingAddressForm_mobile_phone',:with => '5587494734'
    fill_in 'BillingAddressForm_address1',:with => 'test2'
    fill_in 'BillingAddressForm_street_number',:with => '11'
end

def form_address_cl_hp

	fill_in 'BillingAddressForm_address1',:with => 'test'
    fill_in 'BillingAddressForm_street_number',:with => '22'
    fill_in 'BillingAddressForm_mobile_phone',:with =>''
    fill_in 'BillingAddressForm_mobile_phone',:with =>'44444444'
    select 'METROPOLITANA' ,:from => 'BillingAddressForm_region'
    select 'SANTIAGO' ,:from => 'BillingAddressForm_municipality'
end

def form_address_cp
    sleep 3
    fill_in 'BillingAddressForm_first_name',:with => 'Test'
    fill_in 'BillingAddressForm_last_name',:with => 'test'
    fill_in 'BillingAddressForm_mobile_phone',:with => ''
    fill_in 'BillingAddressForm_mobile_phone',:with => '5534764521'
    fill_in 'BillingAddressForm_street_number',:with => '4'
    fill_in 'BillingAddressForm_postcode',:with => '06500'
    sleep 2
    fill_in 'BillingAddressForm_additional_information',:with => 'Hola'
end

end