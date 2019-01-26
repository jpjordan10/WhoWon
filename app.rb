require 'sinatra'
require './lib/juego.rb'

get '/' do
    @@juego = Juego.new ""
    erb :registro
end

get '/pregunta/:numero' do |numero|

    @numero = numero.to_i
    if @numero == 1
        @@juego = Juego.new ""
    end
    if params[:nombreJugador] != nil
        @@juego.cambiarNombreJugador params[:nombreJugador]
    else 
        @@juego.cambiarNombreJugador "El player"
    end
    
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
