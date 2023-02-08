package Modelo;

public class ArvoreDeDecisao extends TipoAlgoritmo{

    private int numArvores;
    private String medidaInformacao; //ganho de informação, raio de ganho de info, índice gini

    public ArvoreDeDecisao(){}

    public ArvoreDeDecisao(String tipoTarefa, int numArvores, String medidaInformacao) {
        super(tipoTarefa);
        this.numArvores = numArvores;
        this.medidaInformacao = medidaInformacao;
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
        System.out.println("Número de Árvores: "+getNumArvores());
        System.out.println("Medida de Informação: "+getMedidaInformacao());
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

    public int getNumArvores() {
        return numArvores;
    }

    public void setNumArvores(int numArvores) {
        this.numArvores = numArvores;
    }

    public String getMedidaInformacao() {
        return medidaInformacao;
    }

    public void setMedidaInformacao(String medidaInformacao) {
        this.medidaInformacao = medidaInformacao;
    }
}
