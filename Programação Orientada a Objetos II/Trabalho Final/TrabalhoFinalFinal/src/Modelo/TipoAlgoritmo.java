package Modelo;

public abstract class TipoAlgoritmo implements Algoritmo{
    protected String tipoTarefa; //regressão->KNN / classificação->Arvore de decisão / redeneural->rede neural artificial
    protected int modo = 0; //0 unfitted, 1 fitted, 2 iterfit

    public TipoAlgoritmo(){

    }

    public TipoAlgoritmo(String tipoTarefa) {
        this.tipoTarefa = tipoTarefa;
    }

    public abstract void fit();
    public abstract void predict();
    public abstract void imprimeModelo();
    public abstract void avaliaModelo();


    public String getTipoTarefa() {
        return tipoTarefa;
    }

    public void setTipoTarefa(String tipoTarefa) {
        this.tipoTarefa = tipoTarefa;
    }

    public int getModo() {
        return modo;
    }

    public void setModo(int modo) {
        this.modo = modo;
    }
}
