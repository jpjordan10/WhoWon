require './lib/lista_pregunta.rb'

describe "Definicion de Lista de Preguntas" do
    it "Lista con dos preguntas" do
        lista = ListaPregunta.new
        expect(lista.preguntas.length).to eq 2
    end
end