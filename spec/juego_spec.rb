require "./lib/juego.rb" 

describe "Juego de Preguntas" do
    it "Acumula dinero" do
        juego = Juego.new "Test"
        juego.acumularDinero 123
        juego.acumularDinero 45
        expect(juego.dineroGanado).to eq 168
    end

    it "Nombre de Jugador es Test" do
        juego = Juego.new "Test"
        expect(juego.nombreJugador).to eq "Test"
    end

    it "El juego tiene preguntas" do
        juego = Juego.new "Test"
        expect(juego.totalDePreguntas).to be > 0
    end

    it "Cambiar nombre de Jugador" do
        juego = Juego.new "Test"
        juego.cambiarNombreJugador "TEST1"
        expect(juego.nombreJugador).to eq "TEST1"
    end

    it "Asignar ultima pregunta" do
        juego = Juego.new "Test"
        juego.asignarUltimaPregunta Pregunta.new("Cuanto es 2 mas 2",["3","4","5", "6", "7"], 1, false)
        expect(juego.ultimaPregunta).not_to be_nil
    end
end