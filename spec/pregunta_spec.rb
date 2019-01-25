require "./lib/pregunta.rb" 

describe "Definicion de pregunta" do
    it "Establecer pregunta" do
        pregunta = Pregunta.new "cuanto es 2 mas 2", [], 0, false

        expect( pregunta.titulo ).to eq "cuanto es 2 mas 2"
    end

    it "Establecer opciones" do
        pregunta = Pregunta.new "cuanto es 2 mas 2", ["4","5"], 1, false

        expect( pregunta.opciones ).to eq ["4","5"]
    end

    it "Establecer respuesta correct" do
        pregunta = Pregunta.new "cuanto es 2 mas 2", ["4","5"], 1, false

        expect( pregunta.respuestaIndice ).to eq 1
    end

    it "Establecer ultima pregunta" do
        pregunta = Pregunta.new "cuanto es 2 mas 2", ["4","5"], 1, true

        expect( pregunta.esUltimo ).to eq true
    end
end

