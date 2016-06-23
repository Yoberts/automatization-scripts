class AddressFormWL
  include Capybara::DSL 

 def link_delete_address
 @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
        page.find(:link, 'Eliminar dirección').click
        page.find(:link, 'Si, borrar dirección').click
   elsif @aux1 == "CL"
        sleep 2
        first("a", :text => "Eliminar dirección").click
        sleep 2
        first("a", :text => "Si, borrar dirección").click
  end
end

def click_address_book_cp
    page.find(:xpath, '/html/body/div[1]/section/div/div[1]/div/div/ul/li[4]/a').click
end

def select_new_address_cp
    page.find(:xpath, '/html/body/div[1]/section/div/div[2]/a').click
end 

def select_new_address_checkout_cp
    page.find(:xpath, '/html/body/div[1]/div/div[2]/form[2]/div[2]/div/fieldset/div/a').click
end

def add_new_address_checkout_hp
    click_link 'load-different-billing'
    sleep 2
end

def link_address_book_hp
    click_link 'Libreta de direcciones'
end

def link_add_address_hp
    click_link 'Agregar una nueva dirección'
end

def button_save_address_hp
    sleep 3
    click_button 'send'
end

def form_country_select_hp
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

    fill_in 'AddressForm_mobile_phone',:with => ''
    fill_in 'AddressForm_mobile_phone',:with => '5578964321'
    sleep 2
    fill_in 'AddressForm_address1',:with => 'Test7'
    sleep 2
    fill_in 'AddressForm_street_number',:with => '34'
    sleep 2
    fill_in 'AddressForm_address2',:with => '9'
    sleep 2
    fill_in 'AddressForm_postcode',:with => '06500'
    sleep 3
    select 'DF - DISTRITO FEDERAL' , :from => 'AddressForm_fk_customer_address_region'
    sleep 2
    select 'Ciudad de México', :from => 'AddressForm_city'
    sleep 2
    select 'Cuauhtémoc', :from => 'AddressForm_municipality'
    sleep 2
    select 'Cuauhtémoc', :from => 'AddressForm_neighborhood'
end

def form_address_cl_hp

	fill_in 'AddressForm_address1',:with => 'test'
    sleep 2
    fill_in 'AddressForm_street_number',:with => '77'
    sleep 2
    select 'METROPOLITANA' , :from => 'AddressForm_region'
    sleep 2
    select 'SANTIAGO', :from => 'AddressForm_municipality'
    sleep 2
    fill_in 'mobile_phone_re',:with => ''
    fill_in 'mobile_phone_re',:with => '51525354'
end

def form_address_cp

    fill_in 'AddressForm_first_name',:with => 'Test'
    fill_in 'AddressForm_last_name',:with => 'test'
    fill_in 'AddressForm_mobile_phone',:with => '5534256712'
    fill_in 'AddressForm_address1',:with => 'test'
    fill_in 'AddressForm_street_number',:with => '7'
    fill_in 'AddressForm_postcode',:with => '06500'
    fill_in 'AddressForm_between_street1' , :with => 'Lerma'
    fill_in  'AddressForm_between_street2', :with => 'Circuito'
    fill_in 'AddressForm_additional_information', :with => 'Direccion de Prueba'
    sleep 2
end
end