package Controller;
import Modelo.*;

public class AlgoritmoFacade {
    private Algoritmo algoritmo;

    public void iniciar(String tipoTarefa, Object...args) {
        algoritmo = FabricaAlgoritmos.criaAlgoritmo(tipoTarefa, args);
    }
    public void treinar() {
        algoritmo.fit();
    }
    public void testar() {
        algoritmo.predict();
    }
    public void imprimirModelo() {
        algoritmo.imprimeModelo();
    }
    public void avaliarModelo() {
        algoritmo.avaliaModelo();
    }
}
