package controller;
import model.*;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



import java.util.List;
import java.util.Scanner;

public class PessoaController {
    int id;
    String nome;
    String cpf;
    String telefone;


    Scanner sc = new Scanner(System.in);

    PessoaDAO pd = new PessoaDAO();
    Pessoa p = new Pessoa();

    public void Cadastrar(){

        System.out.println("ID: ");
        id = sc.nextInt();
        p.setId(id);

        System.out.println("Nome: ");
        nome = sc.next();
        p.setNome(nome);

        System.out.println("CPF: ");
        cpf = sc.next();
        p.setCpf(cpf);

        System.out.println("Telefone: ");
        telefone = sc.next();
        p.setTelefone(telefone);

        pd.inserir(p);


    }

    public void Listar(){
        List<Pessoa> lista = pd.listar();
        for (Pessoa pessoa : lista){
            System.out.println("ID: "+pessoa.getId());
            System.out.println("Nome: "+pessoa.getNome());
            System.out.println("CPF: "+pessoa.getCpf());
            System.out.println("Telefone: "+pessoa.getTelefone());
            System.out.println();


        }

    }
}
