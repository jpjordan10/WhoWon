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
    
end