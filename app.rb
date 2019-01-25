require 'sinatra'
require './lib/lista_pregunta.rb'

get '/' do
    @preguntas = ListaPregunta.new
    @pregunta = @preguntas.preguntas[0]
    erb :index
end

post '/ganaste' do
    erb :ganaste
end

post '/perdiste' do
    erb :perdiste
end
