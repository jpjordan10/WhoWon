class Pregunta
    def initialize titulo, opciones, respuestaIndice
        @titulo = titulo
        @opciones = opciones
        @respuestaIndice = respuestaIndice
        @dineroGanado = opciones.length * 100
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

    def dineroGanado
        @dineroGanado
    end

end