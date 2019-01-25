require './lib/lista_pregunta.rb'

class Juego
    def initialize nombreJugador
        @preguntas  = ListaPregunta.new
        @nombreJugador = nombreJugador
    end
end