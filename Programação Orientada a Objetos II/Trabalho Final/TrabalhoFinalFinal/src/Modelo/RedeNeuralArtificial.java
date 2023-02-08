package Modelo;

public class RedeNeuralArtificial extends TipoAlgoritmo{
    private int numCamadas;
    private int numNeuroniosPorCamada;
    private String funcaoAtivacao; //linear, sigmóide, relu, tanh, softmax...
    private double taxaDeAprendizado; //0.1(lenta)-1.0(rápida)

    public RedeNeuralArtificial(){}

    public RedeNeuralArtificial(String tipoTarefa, int numCamadas, int numNeuroniosPorCamada, String funcaoAtivacao, double taxaDeAprendizado) {
        super(tipoTarefa);
        this.numCamadas = numCamadas;
        this.numNeuroniosPorCamada = numNeuroniosPorCamada;
        this.funcaoAtivacao = funcaoAtivacao;
        this.taxaDeAprendizado = taxaDeAprendizado;
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
        System.out.println("Número de Camadas: "+getNumCamadas());
        System.out.println("Número de Neurônios por Camada: "+getNumNeuroniosPorCamada());
        System.out.println("Função de Ativação: "+getFuncaoAtivacao());
        System.out.println("Taxa de aprendizado: "+getTaxaDeAprendizado());
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

    public int getNumCamadas() {
        return numCamadas;
    }

    public void setNumCamadas(int numCamadas) {
        this.numCamadas = numCamadas;
    }

    public int getNumNeuroniosPorCamada() {
        return numNeuroniosPorCamada;
    }

    public void setNumNeuroniosPorCamada(int numNeuroniosPorCamada) {
        this.numNeuroniosPorCamada = numNeuroniosPorCamada;
    }

    public String getFuncaoAtivacao() {
        return funcaoAtivacao;
    }

    public void setFuncaoAtivacao(String funcaoAtivacao) {
        this.funcaoAtivacao = funcaoAtivacao;
    }

    public double getTaxaDeAprendizado() {
        return taxaDeAprendizado;
    }

    public void setTaxaDeAprendizado(double taxaDeAprendizado) {
        this.taxaDeAprendizado = taxaDeAprendizado;
    }
}
