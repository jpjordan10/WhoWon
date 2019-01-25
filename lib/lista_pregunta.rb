class ListaPregunta
    def initialize
    end

    def preguntas
        pregunta1 = Pregunta.new "cuanto es 2 mas 2", ["4","5"], 0
        pregunta2 = Pregunta.new "que años se descubrio america", ["1482","1492"], 1

        [pregunta1, pregunta2]
    end
end