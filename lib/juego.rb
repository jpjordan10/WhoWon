require './lib/lista_pregunta.rb'

class Juego
    def initialize nombreJugador
        @preguntas  = ListaPregunta.new
        @nombreJugador = nombreJugador
    end

    def nombreJugador
        @nombreJugador
    end
  
    def preguntas
        @preguntas
    end

    def totalDePreguntas
        @preguntas.preguntas.length
    end
end