require './lib/lista_pregunta.rb'

class Juego
    def initialize nombreJugador
        @preguntas  = ListaPregunta.new
        @nombreJugador = nombreJugador
        @dineroGanado = 0
        @ultimaPregunta = nil
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

    def cambiarNombreJugador newValue
        @nombreJugador = newValue
    end

    def acumularDinero monto
        @dineroGanado+=monto
    end

    def dineroGanado
        @dineroGanado
    end

    def asignarUltimaPregunta ultimaPregunta
        @ultimaPregunta = ultimaPregunta
    end

    def ultimaPregunta
        @ultimaPregunta
    end
end