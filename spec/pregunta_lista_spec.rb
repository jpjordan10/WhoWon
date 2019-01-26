require './lib/lista_pregunta.rb'

describe "Definicion de Lista de Preguntas" do
    it "Lista con preguntas" do
        lista = ListaPregunta.new
        expect(lista.preguntas.length).to be > 0
    end

    it "Lista con contador con indice de Pregunta actual en 0" do
        lista = ListaPregunta.new
        expect(lista.preguntaActual).to eq 0
    end

    it "Ir a la siguiente pregunta" do
        lista = ListaPregunta.new
        lista.irSiguientePregunta
        expect(lista.preguntaActual).to eq 1
    end
end