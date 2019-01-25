Given(/^inicio el juego$/) do
    visit '/pregunta/1'
end

Given(/^estoy en la ultima pregunta$/) do
    visit '/pregunta/3'
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

Then(/^Veo contador "(.*?)"$/) do |contador|
    last_response.body.should =~ /#{contador}/m
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
    current_url.should =~ /pregunta\/1/m
end
