Feature: El juego Who Won

    Scenario: Carga inicial
        Given inicio el juego
        Then Veo esta pregunta "Cuanto es 2 mas 2"
        And Veo la opción "4"        
        And Veo la opción "5"

    Scenario: Respuesta Correcta
        Given inicio el juego
        And estoy en la ultima pregunta
        When selecciono la opcion correcta 1
        Then Debo visualizar la pagina de ganaste


    Scenario: Respuesta Incorrecta
        Given inicio el juego
        When selecciono la opcion incorrecta 3
        Then Debo visualizar la pagina de perdiste

    Scenario: Navegación respuesta correcta
        Given inicio el juego
        When selecciono la opcion correcta 1
        Then Veo esta pregunta "En que año se descubrio america"

    
        