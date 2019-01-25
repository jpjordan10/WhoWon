require 'sinatra'

get '/' do
    erb :index
end

post '/ganaste' do
    erb :ganaste
end

post '/perdiste' do
    erb :perdiste
end
