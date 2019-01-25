Given(/^inicio el juego$/) do
    visit '/'
end
  

Then(/^Veo esta pregunta "(.*?)"$/) do |pregunta|
    last_response.body.should =~ /#{pregunta}/m
end
  
  
  Then(/^Veo la opción "(.*?)"$/) do |opcion|
    last_response.body.should =~ /#{opcion}/m
  end
  
  
When(/^selecciono la opcion correcta$/) do
    click_button("opcionA")
end
  
Then(/^Debo visualizar la pagina de ganaste$/) do
    last_response.body.should =~ /Ganaste/m
end

When(/^selecciono la opcion incorrecta$/) do
    click_button("opcionB")
end

Then(/^Debo visualizar la pagina de perdiste$/) do
    last_response.body.should =~ /Perdiste/m
end

  