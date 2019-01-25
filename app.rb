require 'sinatra'
require './lib/lista_pregunta.rb'

get '/pregunta/:numero' do |numero|
    @numero = numero.to_i
    if @numero == 1  
        @@preguntas = ListaPregunta.new
    end
    @pregunta = @@preguntas.preguntas[@numero - 1]
    erb :index
end

post '/pregunta/:numero' do |numero|
    @numero = numero.to_i
    if @numero == 1  
        @@preguntas = ListaPregunta.new
    end
    @pregunta = @@preguntas.preguntas[@numero - 1]
    erb :index
end

get '/ganaste' do
    erb :ganaste
end

post '/ganaste' do
    erb :ganaste
end

post '/perdiste' do
    erb :perdiste
end

get '/perdiste' do
    erb :perdiste
end

get '/ultimapregunta' do
    @pregunta = @@preguntas.preguntas[@@preguntas.preguntas.length - 1]
    erb :index
end
