require './lib/pregunta.rb'

class ListaPregunta
    def initialize
        @preguntaActual = 0
    end

    def preguntas
        [            
            Pregunta.new("En que año se descubrio america", ["1482","1492", "1499"], 1),            
            Pregunta.new("¿Qué tipo de palabra se utiliza en cada versión actualizada del sistema operativo Android?", [
                "El nombre de una temporada",
                "EL nombre de algún nativo estadounidense",
                "El nombre de un océano",
                "El nombe de un dulce"
            ], 3),
            Pregunta.new("¿Qué país regaló a los EEUU la Estatua de la Libertad?", [
                "Alemania",
                "Francia",
                "Irak",
                "Inglaterra"
            ], 1),
            Pregunta.new("¿Qué unidad científica lleva el nombre de un hombre italiano?", [
                "Voltio",
                "Pascal",
                "Ohm",
                "Hertz"
            ], 0),
            Pregunta.new("Fue el primer afroamericano en ser electo Presidente de los Estados Unidos", [
                "John McCain",
                "Bill Clinton",
                "Barack Obama",
                "George W. Bush"
            ], 2),
            Pregunta.new("¿Qué compañía adquirió Facebook en el 2012?", [
                "Apple",
                "Infojobs",
                "LInkedin",
                "Instagram"
            ], 3),
            Pregunta.new("¿Qué animal amamantó a Rómulo y Remo?", [
                "Una sirena",
                "Una zorra",
                "Una perra",
                "UNa loba"
            ], 3),
            Pregunta.new("La velocidad a la que viaja la luz es",
                [
                 "300,000 km/s",
                 "30,000 km/h",
                 "300,000 m/s"
                ], 
                0),
            Pregunta.new("¿Cuándo comenzó la Segunda Guerra Mundial?", [
                "1939",
                "1945",
                "1914",
                "1918"
            ], 0),
            Pregunta.new("¿Qué país declaró la guerra a España para lograr la independencia de Cuba en 1898?", [
                "Francia",
                "Perú",
                "Estados Unidos",
                "México"
            ], 2)
        ]
    end

    def preguntaActual
        @preguntaActual
    end

    def irSiguientePregunta
        @preguntaActual+=1
    end
end