Feature: El juego Who Won

    Scenario: Carga inicial
        Given inicio el juego
        Then Veo "Pregunta 1"
        And Veo la opción "4"        
        And Veo la opción "5"
        And Veo contador "Pregunta 1"

    Scenario: Contesto correctamente la ultima pregunta
        Given inicio el juego
        And estoy en la ultima pregunta
        When selecciono la opcion correcta 2
        Then Debo visualizar la pagina de ganaste
        And Veo "Felicidades, Te llevaste"

    Scenario: Respuesta Incorrecta
        Given inicio el juego
        When selecciono la opcion incorrecta 3
        Then Debo visualizar la pagina de perdiste
        And Veo "Perdiste todo"

    Scenario: Navegación respuesta correcta
        Given inicio el juego
        When selecciono la opcion correcta 1
        Then Veo "Pregunta 2"

    Scenario: Jugar de nuevo cuando gane
        Given he ganado
        When selecciono el link "inicio"
        Then estoy en inicio

    Scenario: Jugar de nuevo cuando perdi
        Given he perdido
        When selecciono el link "inicio"
        Then estoy en inicio

    Scenario: Registrar jugador
        Given cargo el juego
        When escribo mi nombre "DemoPeruanoArgentina"
        And me registro
        Then Veo "Pregunta 1"
        And Veo "DemoPeruanoArgentina"

    Scenario: Se ve el nombre del jugador al perder
        Given cargo el juego
        When escribo mi nombre "DemoPeruanoArgentina"
        And me registro
        And selecciono la opcion correcta 0
        Then Debo visualizar la pagina de perdiste
        And Veo "DemoPeruanoArgentina"

    Scenario: Mostrar Dinero por pregunta
        Given cargo el juego
        And escribo mi nombre "DineroDineroAprendeUnPocoDinero"
        And me registro
        Then Veo "Has ganado 0"    
        