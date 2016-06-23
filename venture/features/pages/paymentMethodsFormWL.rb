class PaymentMethodsWL
  include Capybara::DSL

#All Payment methods availables 

def method_cod_wl
@aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
      sleep 3
      page.find(:xpath, '/html/body/div[2]/div/div[1]/form[2]/div[3]/div/ul/li[2]').click
      sleep 5
   elsif @aux1 == "CL"
      sleep 3
      page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[3]/div/ul/li[3]/div[1]').click
      sleep 5
end
end

  ##Bank Deposit mx
def method_bank_deposit_caja_hp
@aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
      sleep 3
      page.find(:xpath, '/html/body/div[2]/div/div[1]/form[2]/div[3]/div/ul/li[3]/div[1]').click
      sleep 3
   elsif @aux1 == "CL"
      sleep 3
      page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[3]/div/ul/li[5]/div[1]').click
      sleep 3
  end
end


  ##Credit card hpmx

  def method_data_credit_card_hp
      sleep 2
      page.find(:xpath, '/html/body/div[2]/div/div[1]/form[2]/div[3]/div/ul/li[1]/div[2]/div/fieldset[1]/ul/li[1]').click
      sleep 2
      fill_in 'PaymentMethodForm_parameter_bpw_BillTo_Firstname',:with => 'Test'
      fill_in 'PaymentMethodForm_parameter_bpw_BillTo_Lastname',:with => 'test'
      fill_in 'PaymentMethodForm_parameter_bpw_CardNum',:with => ''
      fill_in 'PaymentMethodForm_parameter_bpw_CardNum',:with => '4111111111111111'
      select '6', :from => 'PaymentMethodForm[parameter][bpw_exp_month]'
      select '19', :from => 'PaymentMethodForm[parameter][bpw_exp_year]'
      sleep 5
      fill_in 'PaymentMethodForm_parameter_bpw_CardSecurityCode',:with => ''
      fill_in 'PaymentMethodForm_parameter_bpw_CardSecurityCode',:with => '111'
      sleep 3
  end

  def methodcc_select_option_mx
      sleep 3
      page.find(:xpath, '/html/body/div[2]/div/div[1]/form[2]/div[3]/div/ul/li[1]').click
      sleep 3
  end


## Metodos de Pago CL

  #MercadoPago
  def method_mercado_pago_cl
      sleep 3
      page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[3]/div/ul/li[1]/div[1]').click
      sleep 2             
      fill_in 'PaymentMethodForm_parameter_cc_number' ,:with => '4111111111111111'
      fill_in 'PaymentMethodForm_parameter_cc_holder' ,:with => 'Test'
      fill_in 'PaymentMethodForm_parameter_national_registration_number' ,:with => '6810323-1'
      select '06', :from => 'PaymentMethodForm_parameter_cc_exp_month'
      select '2019', :from => 'PaymentMethodForm_parameter_cc_exp_year'
      fill_in 'PaymentMethodForm_parameter_cc_security_code' ,:with => '111'
      sleep 5
  end   

  #webpay
  def method_webpay_card_cl
    sleep 3
    page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[3]/div/ul/li[2]/div[1]').click
    sleep 3           
  end 

 def method_khipu_cl
    sleep 3
    page.find(:xpath, '/html/body/div[1]/div/div[1]/form[2]/div[3]/div/ul/li[4]/div[1]').click
    sleep 3
 end 






end