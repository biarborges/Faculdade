package Modelo;

public class KNN extends TipoAlgoritmo{
    private int numVizinhos;
    private String medidaDeProximidade; //Euclediana, Hamming, Manhattan, Mahalanobis, Minkowski

    public KNN(){

    }

    public KNN(String tipoTarefa, int numVizinhos, String medidaDeProximidade) {
        super(tipoTarefa);
        this.numVizinhos = numVizinhos;
        this.medidaDeProximidade = medidaDeProximidade;
    }

    public void fit() {
        if(getModo()==1){
            System.out.println("Dados já ajustados.");
        } else{
            System.out.println("Treinando modelo Arvore de Decisão...");
            setModo(1);
        }


    }
    public void predict() {
        if(getModo()==0){
            System.out.println("Não é possível predizer, faça o treinamento.");
        } else{
            System.out.println("Testando modelo Arvore de Decisão...");
        }

    }
    public void imprimeModelo() {
        System.out.println("Tipo de tarefa: "+getTipoTarefa());
        System.out.println("Número de Vizinhos: "+getNumVizinhos());
        System.out.println("Medida de Proximidade: "+getMedidaDeProximidade());
    }
    public void avaliaModelo() {
        double dados = Math.random(); //0.0-1.0
        if(getModo()==0){
            System.out.println("É preciso treinar o modelo");

        } else{
            if(dados<0.3){ //insatisfatório
                setModo(0); //unfitted
                System.out.println("Desempenho Insatisfatório: "+dados);

            } else if (dados<0.7 && dados<1) {  //regular
                setModo(2); //iterfit
                System.out.println("Desempenho Regular: "+dados);

            }else { //bom/ótimo
                setModo(1); //fitted
                System.out.println("Desempenho Bom/Ótimo: "+dados);
            }
        }
    }

    public int getNumVizinhos() {
        return numVizinhos;
    }

    public void setNumVizinhos(int numVizinhos) {
        this.numVizinhos = numVizinhos;
    }

    public String getMedidaDeProximidade() {
        return medidaDeProximidade;
    }

    public void setMedidaDeProximidade(String medidaDeProximidade) {
        this.medidaDeProximidade = medidaDeProximidade;
    }
}
