require 'sinatra'
require './lib/juego.rb'

ganadores = ["Luis", "JP", "Alonso", "Ronald"]
perdedores = []

get '/' do
    @@juego = Juego.new ""
    erb :registro
end

get '/pregunta/:numero' do |numero|
    @numero = numero.to_i
    if @numero == 1
        @@juego = Juego.new ""
    end

    if @@juego.nombreJugador == ""
        if params[:nombreJugador] != nil
            @@juego.cambiarNombreJugador params[:nombreJugador]
        else 
            @@juego.cambiarNombreJugador "El player"
        end
    end
    
    @pregunta = @@juego.preguntas.preguntas[@numero - 1]
    @@juego.acumularDinero(@pregunta.dineroGanado * @numero * 10)
    erb :index
end


get '/ganaste' do
  
    ganadores.push @@juego.nombreJugador
    @ganadores = ganadores
    erb :ganaste
end

get '/perdiste' do
    perdedores.push @@juego.nombreJugador
    @perdedores = perdedores
    erb :perdiste
end
