package Controller;

import Modelo.*;
import java.util.Scanner;

public class Menu {
    public void menu() {

        Scanner sc = new Scanner(System.in);
        AlgoritmoFacade algoritmoFacade = new AlgoritmoFacade();
        int opcao;
        String tipotarefa;

        do{
            System.out.println("\tTreinamento e Testagem de Dados");
            System.out.println("Digite o tipo de Tarefa que deseja executar (classificacao / regressao / redeNeural)");
            //classificacao=arvore de decisão
            //regressao=KNN vizinhos
            //redeNeural=rede neural aritifical

            tipotarefa = sc.nextLine();

            if (tipotarefa.equalsIgnoreCase("classificacao")) {
                System.out.println("Digite o número de árvores: ");
                int numArvores = sc.nextInt();
                sc.nextLine();

                System.out.println("Digite a medida de informação(ganho de informação, raio de ganho de info, índice gini): ");
                String medidaInformacao = sc.nextLine();

                algoritmoFacade.iniciar(tipotarefa, numArvores, medidaInformacao);



            } else if (tipotarefa.equalsIgnoreCase("regressao")) {
                System.out.println("Digite o número de vizinhos: ");
                int numvizinhos = sc.nextInt();
                sc.nextLine();

                System.out.println("Digite a medida de proximidade: (Euclediana, Hamming, Manhattan, Mahalanobis, Minkowski)");
                String medidaproximidade = sc.nextLine();

                algoritmoFacade.iniciar(tipotarefa, numvizinhos, medidaproximidade);

            } else if (tipotarefa.equalsIgnoreCase("redeneural")) {
                System.out.println("Digite o número de camadas: ");
                int numcamada = sc.nextInt();
                sc.nextLine();

                System.out.println("Digite o número de neurônios por camada: ");
                int numneuroniocamada = sc.nextInt();
                sc.nextLine();

                System.out.println("Digite a função de ativação: (linear, sigmóide, relu, tanh, softmax)");
                String funcaoativacao = sc.nextLine();

                System.out.println("Digite a taxa de aprendixado: (0,1(lenta) / 1,0(rápida))");
                double taxaaprendizado = sc.nextDouble();
                //sc.nextLine();

                algoritmoFacade.iniciar(tipotarefa, numcamada, numneuroniocamada, funcaoativacao, taxaaprendizado);

            } else {
                System.out.println("Tipo de Tarefa Inválido");
            }

        }while(!(tipotarefa.equalsIgnoreCase("regressao") || tipotarefa.equalsIgnoreCase("classificacao") || tipotarefa.equalsIgnoreCase("redeNeural")));


            do {

                System.out.println();
                System.out.println("Digite:\n"+
                                       "1 - Treinar\n"+
                                       "2 - Testar\n"+
                                       "3 - Avaliar Modelo\n"+
                                       "4 - Imprimir Modelo\n"+
                                       "0 - Sair\n");
                opcao = sc.nextInt();

                switch (opcao){
                    case (0):
                        break;
                    case (1):
                        algoritmoFacade.treinar();
                        break;

                    case (2):
                        algoritmoFacade.testar();
                        break;

                    case (3):
                        algoritmoFacade.avaliarModelo();
                        break;

                    case (4):
                        algoritmoFacade.imprimirModelo();
                        break;

                    default:
                        System.out.println("Opção Inválida");
                }

        }while (opcao!=0);
    }
}
