class CartPageWL
    include Capybara::DSL

#All objects of Cart Page Alice

 def go_to_cart_wl
 @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
      click_button 'AddToCart'
      sleep 2
      fill_in 'enter-zipcode-overlay-zipcode', :with => '06500'
      click_button 'Aceptar'
      sleep 5
      visit url_visit + '/checkout/finish/'
   elsif @aux1 == "CL"
      click_button 'AddToCart'
      sleep 2
      select 'METROPOLITANA', :from => 'overlay-shipping-address-region'
      select 'SANTIAGO', :from => 'overlay-shipping-address-municipality'
      sleep 1
      click_button 'Aceptar'
      sleep 2
      visit url_visit + '/checkout/finish/'
    elsif @aux1 == "CP"
      click_button 'AddToCart'
end
end





end
