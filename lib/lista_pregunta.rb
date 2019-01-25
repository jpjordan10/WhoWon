require './lib/pregunta.rb'

class ListaPregunta
    def initialize
    end

    def preguntas
        pregunta1 = Pregunta.new "Cuanto es 2 mas 2",["3","4","5", "6", "7"], 1
        pregunta2 = Pregunta.new "que años se descubrio america", ["1482","1492"], 1

        [pregunta1, pregunta2]
    end
end