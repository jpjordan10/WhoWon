require 'sinatra'
require './lib/lista_pregunta.rb'

get '/' do
    erb :registro
end

get '/pregunta/:numero' do |numero|

    @nombreJugador = params[:nombreJugador]
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

get '/perdiste' do
    erb :perdiste
end

get '/ultimapregunta' do
    @pregunta = @@preguntas.preguntas[@@preguntas.preguntas.length - 1]
    erb :index
end
