require './lib/pregunta.rb'

class ListaPregunta
    def initialize
        @preguntaActual = 0
    end

    def preguntas
        [
            Pregunta.new("Cuanto es 2 mas 2",["3","4","5", "6", "7"], 1, false),
            Pregunta.new("En que año se descubrio america", ["1482","1492"], 1, false),
            Pregunta.new("cuanto es 3 por 3", ["5","9", "1"], 1, true)
        ]
    end

    def preguntaActual
        @preguntaActual
    end

    def irSiguientePregunta
        @preguntaActual+=1
    end
end