class NewsletterForm
  include Capybara::DSL

#All methods of all forms of new address

def subscription_selection
  	#page.find(:link, 'Cancelar suscripción').
    page.find(:xpath, "/html/body/div[6]/div/div[3]/form/div[1]/div[1]/div[4]/label").click
 end

def unsubscription_selection
    page.find(:link, 'Cancelar suscripción').click
    #page.find(:xpath, "/html/body/div[6]/div/div[3]/form/div[1]/div[1]/div[4]/label").click
    sleep 2
 end 

def save_options
	sleep 2
  	page.find(:xpath, "/html/body/div[6]/div/div[3]/form/div[3]/div[3]/button").click 
  	sleep 2
 end

def subscription_email_overlay
	sleep 2
  	fill_in 'nl_email_input', with: $email + "\n"
  	#fill_in 'nl_email_input', with: "\n"
  	sleep 3
 end
end