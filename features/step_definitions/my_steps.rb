Given(/^inicio el juego$/) do
    visit '/inicio'
end

Given(/^estoy en la ultima pregunta$/) do
    visit '/ultimapregunta'
end

Then(/^Veo esta pregunta "(.*?)"$/) do |pregunta|
    last_response.body.should =~ /#{pregunta}/m
end
  
  
Then(/^Veo la opción "(.*?)"$/) do |opcion|
    last_response.body.should =~ /#{opcion}/m
end
  
When(/^selecciono la opcion correcta (.*?)$/) do |opcion|
    click_button("opcion#{opcion}")
end
  
Then(/^Debo visualizar la pagina de ganaste$/) do
    last_response.body.should =~ /Ganaste/m
end

When(/^selecciono la opcion incorrecta (.*?)$/) do |opcion|
    click_button("opcion#{opcion}")
end

Then(/^Debo visualizar la pagina de perdiste$/) do
    last_response.body.should =~ /Perdiste/m
end

Given(/^he ganado$/) do
    visit '/ganaste'
end

Given(/^he perdido$/) do
    visit '/perdiste'
end

When(/^selecciono el link "(.*?)"$/) do |text|
    click_link(text)
end
  
Then(/^estoy en inicio$/) do
    current_url.should =~ /inicio/m
end
  
