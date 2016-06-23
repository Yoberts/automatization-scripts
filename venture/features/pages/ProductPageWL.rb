class ProductPageWL

include Capybara::DSL

#All objects of Product Page Alice
 def click_item_wl
 @aux1 = $url[$url.length-2,$url.length].upcase
  if @aux1 == "MX"
  	page.find(:xpath, '/html/body/div[2]/section/div[2]/div[3]/ul/li/a/ul/li[1]/span/span/img').click
   elsif @aux1 == "CL"
    page.find(:xpath, '/html/body/div[1]/section/div[2]/div[3]/ul/li/a/ul/li[1]/span/span/img').click
  end
end


def search_product_select_hp
@aux = $url[$url.length-2,$url.length].upcase
  if @aux == "MX"
    search_product_mx_hp
  elsif @aux == "CL"
    search_product_cl_hp   
  end

end

def search_product_mx_hp
	fill_in 'searchInput',:with => 'HP688EL04MGLLMX'
  	click_button 'Buscar'
end

def search_product_cl_hp
    fill_in 'searchInput',:with => 'HP034HP122KNWLACL'
    click_button 'Buscar'
end


# Club premier 


def search_product_cp
    fill_in 'searchInput',:with => 'mi540el86oezlmx'
    click_button 'Buscar'
end

def click_the_item_cp
  page.find(:xpath,'/html/body/div[1]/section/div[2]/div/ul/li/a/ul/li[1]/span/span/img').click
end  



end

