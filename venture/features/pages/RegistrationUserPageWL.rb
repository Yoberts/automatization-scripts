class RegistrationUserPageWL
  include Capybara::DSL

#All methods of all forms of registration user

def form_registration_user_home
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
      fill_in 'RegistrationForm_email',:with => 'roberto.sanchez698@linio.com'
      fill_in 'RegistrationForm_password',:with => 'test1234'
      fill_in 'RegistrationForm_password2',:with => 'test1234'
      fill_in 'RegistrationForm_first_name', :with => 'Test'
      fill_in 'RegistrationForm_last_name', :with => 'test' 
  elsif @aux == "CL"
       fill_in 'RegistrationForm_email',:with => 'roberto.sanchez697@linio.com'
      fill_in 'RegistrationForm_password',:with => 'test1234'
      fill_in 'RegistrationForm_password2',:with => 'test1234'
      fill_in 'RegistrationForm_first_name', :with => 'Test'
      fill_in 'RegistrationForm_last_name', :with => 'test'
      fill_in 'RegistrationForm_national_registration_number', :with => '16248168-1'
      check ('RegistrationForm_accepted_terms')
  end
end


def form_registration_user_checkout
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
        fill_in 'RegisterForm_email',:with => 'roberto.sanchez696@linio.com'
      fill_in 'RegisterForm_password',:with => 'test1234'
      fill_in 'RegisterForm_password2',:with => 'test1234'
      fill_in 'BillingAddressForm_first_name',:with => 'Test'
      fill_in 'BillingAddressForm_last_name',:with => 'test'
      fill_in 'BillingAddressForm_mobile_phone',:with => ''
      fill_in 'BillingAddressForm_mobile_phone',:with => '5555555555'
      fill_in 'BillingAddressForm_address1',:with => 'test'
      fill_in 'BillingAddressForm_street_number',:with => '55'
      sleep 5
  elsif @aux == "CL"
        fill_in 'RegisterForm_email',:with => 'roberto.sanchez695@linio.com'
      fill_in 'RegisterForm_password',:with => 'test1234'
      fill_in 'RegisterForm_password2',:with => 'test1234'
      fill_in 'RegisterForm_first_name', :with => 'Test'
      fill_in 'RegisterForm_last_name', :with => 'test'
      fill_in 'RegisterForm_national_registration_number', :with => ''
      fill_in 'RegisterForm_national_registration_number', :with => '19153905-2'
      sleep 2
      fill_in 'BillingAddressForm_address1', :with => 'test'
      fill_in 'BillingAddressForm_street_number', :with => '12'
      fill_in 'BillingAddressForm_mobile_phone', :with => ''
      fill_in 'BillingAddressForm_mobile_phone', :with => '41345234'
      select 'METROPOLITANA', :from => 'BillingAddressForm_region' 
      select 'SANTIAGO', :from => 'BillingAddressForm_municipality'
      fill_in 'BillingAddressForm_national_registration_number', :with => '19153905-2'
      sleep 5
  end
end
end