class Pregunta
    def initialize titulo, opciones, respuestaIndice, esUltimo
        @titulo = titulo
        @opciones = opciones
        @respuestaIndice = respuestaIndice
        @esUltimo = esUltimo
    end

    def titulo
        @titulo
    end

    def opciones
        @opciones
    end

    def respuestaIndice
        @respuestaIndice
    end

    def esUltimo
        @esUltimo
    end
end