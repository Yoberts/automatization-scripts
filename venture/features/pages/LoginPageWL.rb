class LoginPageWL
  include Capybara::DSL

def user_and_pass_data_hp
    sleep 7
    fill_in 'LoginForm_email',:with => $usr
  	fill_in 'LoginForm_password',:with => $pas
    sleep 3
end

def click_login_home_hp
	page.find("span", :text => "Iniciar sesión").click
end

def click_button_login_hp
	click_button 'Iniciar sesión'
end

def click_logout_hp
	click_link 'user-nav-log-out'
end

def click_registrate_checkout_hp
   	click_link '¿Ya estás registrado?'
  	fill_in 'LoginForm_email',:with => $usr
  	fill_in 'LoginForm_password',:with => $pas
 	page.find("span", :text => "Continuar").click
end

def register_new_home_hp
    first("a", :text => 'Registrarme').click
    page.find("span", :text => "Continuar").click
    sleep 2
end

def complete_register_home_hp
    click_button 'send'
end

def my_account_home
    click_link 'user-logged'
end 

##  Metodos para CP

def click_link_login_cp
  click_link 'Iniciar sesión'
end

def user_and_pass_data_cp
    sleep 2
    within 'div.login-inner' do
    fill_in 'username',:with => '994000016'
    fill_in 'password',:with => 'Xpw0a81'
    click_button 'Inicia sesión'
    sleep 3
  end
end

def login_checkout_cp
    click_link 'button-checkout'
end

#CP Direcciones 

def click_my_account_cp
  page.find(:xpath, '/html/body/div[1]/header/div[3]/ul/li[1]/ul/li/a').click
end





end

