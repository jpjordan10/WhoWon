require 'sinatra'
require './lib/lista_pregunta.rb'

get '/' do
    erb :registro
end

get '/inicio' do
    @nombreJugador = params[:nombreJugador].to_s
    @@preguntas = ListaPregunta.new
    @pregunta = @@preguntas.preguntas[0]
    erb :index
end

get '/pregunta' do
    @pregunta = @@preguntas.preguntas[@@preguntas.preguntaActual]
    erb :index
end

post '/pregunta' do
    @@preguntas.irSiguientePregunta()
    # redirect to ('/pregunta') 
    @pregunta = @@preguntas.preguntas[@@preguntas.preguntaActual]    

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
