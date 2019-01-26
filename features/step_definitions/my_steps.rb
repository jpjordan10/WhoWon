Given(/^inicio el juego$/) do
    visit '/pregunta/1'
end

Given(/^estoy en la ultima pregunta$/) do
    visit '/pregunta/3'
end

Then(/^Veo "(.*?)"$/) do |pregunta|
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
    current_url.should == "/"
end

Given(/^cargo el juego$/) do
    visit '/'
end
  
  When(/^escribo mi nombre "(.*?)"$/) do |nombre|
    fill_in("nombreJugador", :with => nombre)
end
  
  When(/^me registro$/) do
    click_button("jugar")
end

Given(/^He iniciado el juego$/) do
    pending # express the regexp above with the code you wish you had
end
  
  
  
