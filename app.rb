require 'sinatra'
require './lib/pregunta.rb'

get '/' do
    @pregunta = Pregunta.new "Cuanto es 2 mas 2",["4","5"], 1 
    erb :index
end

post '/ganaste' do
    erb :ganaste
end

post '/perdiste' do
    erb :perdiste
end
