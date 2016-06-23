class SuccessPageWL
	  include Capybara::DSL

#All success of test hp

def success_confirm_address_hp
	sleep 5
	 page.has_content?('Su dirección ha sido guardada exitosamente')
end

def success_delete_address_hpwl
	sleep 5
     assert_text 'Su dirección ha sido eliminada exitosamente'
end

def expect_success_wl
	sleep 5
	 page.has_content?('¡Gracias, test!')
end

def success_no_complete_wl
	sleep 5
	page.has_content?('El pago no se ha completado')
  	#page.has_content('¡Gracias por su compra!')
end

def success_no_el_monto_wl
	sleep 5
	page.has_content?('El monto total de la orden está fuera del rango permitido desde $200.000 hasta 11.000.000.')
end

def expect_new_count_wl
	sleep 5
	assert_text 'Se realizó de manera exitosa el registro de usuario'
end

def success_webpay_wl
    click_button 'button3'
    sleep 5
    assert_text 'Error durante el pago'
end

def success_khipu_wl
    true
end

end
