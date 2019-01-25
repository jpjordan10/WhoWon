require 'sinatra'
require './lib/juego.rb'

get '/' do
    erb :registro
end

get '/pregunta/:numero' do |numero|


    @@juego = Juego.new params[:nombreJugador]

    @numero = numero.to_i
    
    @pregunta = @@juego.preguntas.preguntas[@numero - 1]
    erb :index
end


get '/ganaste' do
    erb :ganaste
end

get '/perdiste' do
    erb :perdiste
end

get '/ultimapregunta' do
    @pregunta = @@preguntas.preguntas[@@preguntas.preguntas.length - 1]
    erb :index
end
