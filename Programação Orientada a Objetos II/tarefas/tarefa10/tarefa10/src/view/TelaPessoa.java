package view;
import controller.PessoaController;
import model.Pessoa;

import java.util.Scanner;

public class TelaPessoa {
    Scanner sc = new Scanner(System.in);
    PessoaController pc = new PessoaController();
    public void Menu (){
        System.out.println("------MENU------ \n" +
                                   "1. Cadastrar\n"+
                                    "2. Listar");

        int opcao = sc.nextInt();

        switch (opcao){
            case (1):
                pc.Cadastrar();
                break;
            case(2):
                pc.Listar();
                break;
            default:
                System.out.println("opção inválida");
        }
    }

}
