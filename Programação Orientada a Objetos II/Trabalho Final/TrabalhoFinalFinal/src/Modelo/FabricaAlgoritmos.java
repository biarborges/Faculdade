package Modelo;

public class FabricaAlgoritmos {
    public static Algoritmo criaAlgoritmo(String tipotarefa, Object...args) {
        if (tipotarefa.equalsIgnoreCase("classificacao")) {
            return new ArvoreDeDecisao(tipotarefa, (int) args[0], (String) args[1]);

        } else if (tipotarefa.equalsIgnoreCase("regressao")) {
            return new KNN(tipotarefa,(int) args[0], (String) args[1] );

        } else if (tipotarefa.equalsIgnoreCase("redeneural")) {
            return new RedeNeuralArtificial(tipotarefa, (int) args[0], (int) args[1], (String) args[2], (double) args[3]);
        }
        return null;
    }
}
