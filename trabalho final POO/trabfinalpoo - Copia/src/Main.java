import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import java.util.Random;

public class Main {
    static Scanner sc = new Scanner(System.in);

    static ArrayList<ContaCorrente>contasCorrente;
    static ArrayList<ContaPoupanca>contasPoupanca;
    static ArrayList<ContaSalario>contasSalario;

    static ArrayList<ContaBancaria>contas;
    static ArrayList<Agencia> agencias;
    static ArrayList<Funcionario>funcionarios;
    static ArrayList<Cliente> clientes;

    public static void main(String[] args) {

        contasCorrente = new ArrayList<ContaCorrente>();
        contasPoupanca = new ArrayList<ContaPoupanca>();
        contasSalario = new ArrayList<ContaSalario>();
        agencias = new ArrayList<Agencia>();
        funcionarios = new ArrayList<Funcionario>();
        clientes = new ArrayList<Cliente>();
        menu();
    }

    public static void menu() {
        int operacao;

        lerAgencia();
        lerFuncionario();
        lerCliente();
        lerContaCorrente();
        lerContaPoupanca();
        lerContaSalario();

        do {

            System.out.println("---------------------------------------------------------------------------------");
            System.out.println("-------------Bem vindos ao Sistema de uma Instituicao Financeira-----------------");
            System.out.println("---------------------------------------------------------------------------------");
            System.out.println("******************** Selecione uma operacao que deseja realizar *****************");
            System.out.println("---------------------------------------------------------------------------------");
            System.out.println("|\t1 - Cadastrar Agencia                    |");
            System.out.println("|\t2 - Cadastrar Funcionario                |");
            System.out.println("|\t3 - Cadastrar Cliente                    |");
            System.out.println("|\t4 - Cadastrar Conta Corrente             |");
            System.out.println("|\t5 - Cadastrar Conta Poupanca             |");
            System.out.println("|\t6 - Cadastrar Conta Salario              |");
            System.out.println();
            System.out.println("|\t7 - Mostrar Agencias Cadastradas         |");
            System.out.println("|\t8 - Mostrar Funcionarios Cadastrados     |");
            System.out.println("|\t9 - Mostrar Clientes Cadastrados         |");
            System.out.println("|\t10 - Mostrar Contas Correntes            |");
            System.out.println("|\t11 - Mostrar Contas Poupanca             |");
            System.out.println("|\t12 - Mostrar Contas Salario              |");
            System.out.println();
            System.out.println("|\t13 - Sacar                               |");
            System.out.println("|\t14 - Depositar                           |");
            System.out.println("|\t15 - Efetuar Pagamentos                  |");
            System.out.println("|\t16 - Fazer Transferencias                |");
            System.out.println("|\t17 - Ver Saldo                           |");
            System.out.println("|\t0 - Sair e Salvar                        |");

            System.out.println();
            System.out.println("Digite a operacao desejada: ");
            operacao = sc.nextInt();

            switch (operacao) {
                case 1:
                    cadastrarAgencia();
                    break;

                case 2:
                    cadastrarFuncionario();
                    break;

                case 3:
                    cadastrarCliente();
                    break;

                case 4:
                    cadastrarContaCorrente();
                    break;

                case 5:
                    cadastrarContaPoupanca();
                    break;

                case 6:
                    cadastrarContaSalario();
                    break;

                case 7:
                    mostrarAgencias();
                    break;

                case 8:
                    mostrarFuncionarios();
                    break;

                case 9:
                    mostrarClientes();
                    break;

                case 10:
                    mostrarContasCorrente();
                    break;

                case 11:
                    mostrarContasPoupanca();
                    break;

                case 12:
                    mostrarContasSalario();
                    break;

                case 13:
                    sacarDaConta();
                    break;

                case 14:
                    depositarEmConta();
                    break;

                case 15:
                    pagamentoEmConta();
                    break;

                case 16:
                    transferenciaEmConta();
                    break;

                case 17:
                    saldoEmConta();
                    break;

                case 0:
                    System.out.println("Processo encerrado!");

                    salvarAgencia();
                    salvarFuncionario();
                    salvarCliente();
                    salvarContaCorrente();
                    salvarContaPoupanca();
                    salvarContaSalario();

                    System.exit(0); // para o sistema
                    break;

                default:
                    System.out.println("Opção inválida!");
                   // menu();
                    break;
            }
        }while (operacao!=0);
    }

    /*================================CADASTRAR============================================*/

    //CADASTRAR AGENCIA
    public static void cadastrarAgencia() {
        System.out.println(">Digite o numero de agencias a serem cadastradas: ");
        int num = sc.nextInt();

        for (int i = 0; i < num; i++) {
            System.out.println("*Agencia " + (i+1) + ": ");
            System.out.println("Numero da Agencia: ");
            int numAgencia = sc.nextInt();
            sc.nextLine();
            System.out.println("Nome da Agencia: ");
            String nomeAgencia = sc.nextLine();
            System.out.println("Cidade onde esta localizada: ");
            String cidade = sc.nextLine();
            System.out.println("Estado onde esta localizada: ");
            String estado = sc.nextLine();
            System.out.println("Bairro onde esta localizada: ");
            String bairro = sc.nextLine();
            Agencia a = new Agencia(numAgencia, nomeAgencia, cidade, estado, bairro);

            agencias.add(a);
        }
    }

    /*--------------------------------------------------------------------------------------*/

    //CADASTRAR FUNCIONARIO
    public static void cadastrarFuncionario() {
        System.out.println(">Digite o numero de funcionarios a serem cadastradas: ");
        Agencia a = new Agencia();
        int num = sc.nextInt();

        for (int i = 0; i < num; i++) {
            sc.nextLine();
            System.out.println("*Funcionario " + (i+1) + ": ");
            System.out.println("CPF: ");
            String cpf = sc.nextLine();
            System.out.println("Nome do funcionario: ");
            String nomeCompleto = sc.nextLine();
            System.out.println("RG: ");
            String rg = sc.nextLine();
            System.out.println("Data de Nascimento: ");
            String dataNasc = sc.nextLine();
            System.out.println("Endereco: ");
            String endereco = sc.nextLine();
            System.out.println("Sexo: ");
            String sexo = sc.nextLine();
            System.out.println("Estado Civil: ");
            String estadoCivil = sc.nextLine();
            System.out.println("Ano de Ingresso: ");
            int anoDeIngresso = sc.nextInt();
            System.out.println("Numero da Carteira de Trabalho: ");
            int numCarteiraTrab = sc.nextInt();
            sc.nextLine();
            System.out.println("Cargo: ");
            String cargo = sc.nextLine();
            Funcionario f = new Funcionario(cpf, nomeCompleto, rg, dataNasc, endereco, sexo, estadoCivil, anoDeIngresso, numCarteiraTrab, cargo);

            if(cargo.equals("gerente")){
                System.out.println("Data de Ingresso como Gerente: ");
                String dataIngressoComoGerente = sc.nextLine();
                do{
                    System.out.println("Agencia: ");
                    String agencia = sc.nextLine();
                    a=checarAgencia(agencia);

                    if(a.getNomeAgencia()==null){
                        System.out.println("Agencia nao encontrada!");
                    }else{
                        System.out.println("Possui curso basico: ");
                        String possuiCursoBasico = sc.nextLine();

                        Funcionario g = new Gerente(cpf, nomeCompleto, rg, dataNasc, endereco, sexo, estadoCivil, anoDeIngresso, numCarteiraTrab, cargo, dataIngressoComoGerente, a, possuiCursoBasico);
                        funcionarios.add(g);
                    }
                }while (a.getNomeAgencia()==null);

            }else{
                funcionarios.add(f);
            }
        }
    }

    /*---------------------------------------------------------------------------------------------*/

    //CADASTRAR CLIENTE
    public static void cadastrarCliente(){

        Agencia a = new Agencia();
        String agencia;

        System.out.println(">Digite suas informacoes abaixo\n");
        sc.nextLine();
        System.out.println("Digite seu nome completo: ");
        String nomeCompleto = sc.nextLine();
        System.out.println("Digite seu CPF: ");
        String cpf = sc.nextLine();
        System.out.println("Digite seu RG: ");
        String rg = sc.nextLine();
        System.out.println("Digite sua data de nascimento: ");
        String dataNasc = sc.nextLine();
        System.out.println("Sexo: ");
        String sexo = sc.nextLine();
        System.out.println("Estado Civil: ");
        String estadoCivil = sc.nextLine();
        System.out.println("Endereco: ");
        String endereco = sc.nextLine();
        System.out.println("Escolaridade: ");
        String escolaridade = sc.nextLine();

        do{
            System.out.println("Em qual agencia deseja criar sua conta? ");
            agencia = sc.nextLine();
            a=checarAgencia(agencia);

            if(a.getNomeAgencia()==null){
                System.out.println("Agencia nao encontrada! Escolha outra agencia.");
            }else{
                System.out.println("--- Seu cadastro foi realizado com sucesso! ---\n");
                Cliente c = new Cliente(cpf,nomeCompleto,rg,dataNasc,endereco,sexo,estadoCivil,a,escolaridade);
                clientes.add(c);
            }
        }while (a.getNomeAgencia()==null);

    }

    /*---------------------------------------------------------------------------------------------------------------*/

    //CADASTRAR CONTA CORRENTE

    public static void cadastrarContaCorrente(){

        Cliente c = new Cliente();
        ContaCorrente cc = new ContaCorrente();
        String cpf;

        System.out.println(">Vamos comecar o processo para criar sua conta corrente...");
        System.out.println(">Aperte enter para iniciar.");
        sc.nextLine();

        System.out.println("Digite seu cpf: ");
        cpf = sc.nextLine();
        c=checarCPF(cpf);

        if(c.getCpf()==null){
            System.out.println("CPF invalido ou nao encontrado!");
            System.out.println("Saia e faca seu cadastro agora");
        }else{

            Random random = new Random();
            long numConta = random.nextInt(10000000)+1000; //max+min

            System.out.println("Agora digite a senha desejada: ");
            int senha = sc.nextInt();

            cc = new ContaCorrente(numConta, 0.0, new Date(),new Date(),senha,c,cc.getLimiteChequeEsp(),cc.getValorTaxaAdm());

            System.out.println();
            System.out.println("--- Sua conta foi criada com sucesso! ---");
            System.out.println();
            System.out.println("O numero da sua conta eh: " + cc.getNumConta());
            System.out.println("Seu saldo atual eh de R$" + cc.getSaldoAtual());
            System.out.println("O valor da taxa administrativa da conta corrente eh de R$" + cc.getValorTaxaAdm());
            System.out.println("O valor do limite do cheque especial eh de R$" + cc.getLimiteChequeEsp());

        }
        contasCorrente.add(cc);

    }

    /*------------------------------------------------------------------------------------------------------------*/

    // CADASTRAR CONTA POUPANCA

    public static void cadastrarContaPoupanca(){
        Cliente c = new Cliente();
        ContaPoupanca cp = new ContaPoupanca();
        String cpf;

        System.out.println(">Vamos comecar o processo para criar sua conta corrente...");
        System.out.println(">Aperte enter para iniciar.");
        sc.nextLine();

        System.out.println("Digite seu cpf: ");
        cpf = sc.nextLine();
        c=checarCPF(cpf);

        if(c.getCpf()==null){
            System.out.println("CPF invalido ou nao encontrado!");
            System.out.println("Saia e faca seu cadastro agora");
            // break;
        }else{

            Random random = new Random();
            long numConta = random.nextInt(10000000)+1000; //max+min


            System.out.println("Agora digite a senha desejada: ");
            int senha = sc.nextInt();

            cp = new ContaPoupanca(numConta, 0,new Date(),new Date(),senha,c,cp.getRendimentoMensal());

            System.out.println();
            System.out.println("--- Sua conta foi criada com sucesso! ---");
            System.out.println();
            System.out.println("O numero da sua conta eh: " + cp.getNumConta());
            System.out.println("Seu saldo atual eh de R$" + cp.getSaldoAtual());
            System.out.println("O valor do rendimento mensal da conta poupanca eh de R$" + cp.getRendimentoMensal());


        }
        contasPoupanca.add(cp);
    }

    /*----------------------------------------------------------------------------------------------------------------*/

    //CADASTRAR CONTA SALARIO

    public static void cadastrarContaSalario(){

        Cliente c = new Cliente();
        ContaSalario cs = new ContaSalario();
        String cpf;

        System.out.println(">Vamos comecar o processo para criar sua conta corrente...");
        System.out.println(">Aperte enter para iniciar.");
        sc.nextLine();

        System.out.println("Digite seu cpf: ");
        cpf = sc.nextLine();
        c=checarCPF(cpf);

        if(c.getCpf()==null){
            System.out.println("CPF invalido ou nao encontrado!");
            System.out.println("Saia e faca seu cadastro agora");
            // break;
        }else{

            Random random = new Random();
            long numConta = random.nextInt(10000000)+1000; //max+min

            System.out.println("Agora digite a senha desejada: ");
            int senha = sc.nextInt();

            cs = new ContaSalario(numConta, 0,new Date(),new Date(),senha,c,cs.getLimiteSaque(),cs.getLimiteTransferencia());

            System.out.println();
            System.out.println("--- Sua conta foi criada com sucesso! ---");
            System.out.println();
            System.out.println("O numero da sua conta eh: " + cs.getNumConta());
            System.out.println("Seu saldo atual eh de R$" + cs.getSaldoAtual());
            System.out.println("O limite de saque da conta salario eh de R$" + cs.getLimiteSaque());
            System.out.println("O limite de transferencia da conta salario eh de R$" + cs.getLimiteTransferencia());


        }
        contasSalario.add(cs);

    }

    /*================================FIM CADASTRAR============================================*/




    /*========================================CHECAR============================================*/

    //CHECAR AGENCIA
    public static Agencia checarAgencia(String agencia){
        Agencia a = new Agencia();

        for (int i = 0; i < agencias.size(); i++){
            if(agencia.equals(agencias.get(i).getNomeAgencia())) {
                a = agencias.get(i);

            }

        }
        return a;
    }

    //CHECAR CPF

    public static Cliente checarCPF(String cpf){
        Cliente c = new Cliente();

        for (int i = 0; i < clientes.size(); i++){
            if(cpf.equals(clientes.get(i).getCpf())) {
                c = clientes.get(i);

            }

        }
        return c;
    }

    /*--------------------------------------------------------------------*/

    //CHECAR NUMERO DA CONTA CORRENTE
    public static ContaCorrente checarNumContaCC(long NumConta){
        ContaCorrente cc = new ContaCorrente();

        for (int i = 0; i < contasCorrente.size(); i++){
            if(NumConta==(contasCorrente.get(i).getNumConta())) {
                cc = contasCorrente.get(i);

            }

        }
        return cc;
    }

    /*--------------------------------------------------------------------*/

    //CHECAR NUMERO DA CONTA POUPANCA
    public static ContaPoupanca checarNumContaCP(long NumConta){
        ContaPoupanca cp = new ContaPoupanca();

        for (int i = 0; i < contasPoupanca.size(); i++){
            if(NumConta==(contasPoupanca.get(i).getNumConta())) {
                cp = contasPoupanca.get(i);

            }

        }
        return cp;
    }

    /*--------------------------------------------------------------------*/

    //CHECAR NUMERO DA CONTA SALARIO
    public static ContaSalario checarNumContaCS(long NumConta){
        ContaSalario cs = new ContaSalario();

        for (int i = 0; i < contasSalario.size(); i++){
            if(NumConta==(contasSalario.get(i).getNumConta())) {
                cs = contasSalario.get(i);

            }

        }
        return cs;
    }

    /*================================FIM CHECAR============================================*/




    /*==================================MOSTRAR===========================================*/

    //MOSTRAR AGENCIAS
    public static void mostrarAgencias(){
        Agencia a = new Agencia();

        for (int i = 0; i < agencias.size(); i++) {
            a=agencias.get(i);
            System.out.println(a);

        }
    }

    /*---------------------------------------------------------------------------*/

    //MOSTRAR FUNCIONARIOS
    public static void mostrarFuncionarios(){
        Funcionario f = new Funcionario();

        for (int i = 0; i < funcionarios.size(); i++) {
            f=funcionarios.get(i);
            System.out.println(f);

        }
    }

    /*---------------------------------------------------------------------------*/

    //MOSTRAR CLIENTES
    public static void mostrarClientes(){
        Cliente c = new Cliente();

        for (int i = 0; i < clientes.size(); i++) {
            c=clientes.get(i);
            System.out.println(c);

        }
    }

    /*-----------------------------------------------------------------------------------*/

    //MOSTRAR CONTAS CORRENTE

    public static void mostrarContasCorrente(){
        ContaCorrente cc = new ContaCorrente();

        for (int i = 0; i < contasCorrente.size(); i++) {
            cc=contasCorrente.get(i);
            System.out.println(cc);

        }
    }

    /*---------------------------------------------------------------------------------------------*/

    //MOSTRAR CONTAS POUPANCA

    public static void mostrarContasPoupanca(){
        ContaPoupanca cp = new ContaPoupanca();

        for (int i = 0; i < contasPoupanca.size(); i++) {
            cp=contasPoupanca.get(i);
            System.out.println(cp);

        }
    }

    /*----------------------------------------------------------------------------------------------*/

    //MOSTRAR CONTAS SALARIO

    public static void mostrarContasSalario(){
        ContaSalario cs = new ContaSalario();

        for (int i = 0; i < contasSalario.size(); i++) {
            cs=contasSalario.get(i);
            System.out.println(cs);

        }
    }
    /*================================FIM MOSTRAR============================================*/



    /*===================================SALVAR============================================*/

    //SALVAR AGENCIA
    public static void salvarAgencia(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroAgencias.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < agencias.size(); i++) {
                os.writeObject(agencias.get(i));
            }
            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /*---------------------------------------------------------------------------*/

    //SALVAR FUNCIONARIO
    public static void salvarFuncionario(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroFuncionarios.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < funcionarios.size(); i++) {
                os.writeObject(funcionarios.get(i));
            }

            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /*---------------------------------------------------------------------------*/

    //SALVAR CLIENTE
    public static void salvarCliente(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroClientes.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < clientes.size(); i++) {
                os.writeObject(clientes.get(i));
            }
            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
    /*---------------------------------------------------------------------------------------------*/

    //SALVAR CONTA CORRTENTE

    public static void salvarContaCorrente(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroContasCorrente.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < contasCorrente.size(); i++) {
                os.writeObject(contasCorrente.get(i));
            }
            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /*----------------------------------------------------------------------------------------------------------*/

    //SALVAR CONTA POUPANCA

    public static void salvarContaPoupanca(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroContasPoupanca.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < contasPoupanca.size(); i++) {
                os.writeObject(contasPoupanca.get(i));
            }
            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /*---------------------------------------------------------------------------------------------*/

    //SALVAR CONTA SALARIO

    public static void salvarContaSalario(){
        try{
            FileOutputStream arq = new FileOutputStream("CadastroContasSalario.txt",false);
            ObjectOutputStream os = new ObjectOutputStream(arq);

            for (int i = 0; i < contasSalario.size(); i++) {
                os.writeObject(contasSalario.get(i));
            }
            os.close();
            arq.close();

        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /*==========================================FIM SALVAR====================================*/



    /*====================================LER============================================*/

    //LER AGENCIA
    public static void lerAgencia() {

        try {
            FileInputStream arq = new FileInputStream("CadastroAgencias.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            agencias = new ArrayList<>();
            while (true) {
                try {
                    Agencia a = (Agencia) is.readObject();
                    agencias.add(a);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            //System.out.println("Erro!");
        }


    }

    /*---------------------------------------------------------------------------*/

    //LER FUNCIONARIO
    public static void lerFuncionario() {

        try {
            FileInputStream arq = new FileInputStream("CadastroFuncionarios.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            funcionarios = new ArrayList<>();
            while (true) {
                try {
                    Funcionario f = (Funcionario) is.readObject();
                    funcionarios.add(f);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            //System.out.println("Erro!");
        }
    }

    /*---------------------------------------------------------------------------*/

    //LER CLIENTE
    public static void lerCliente() {
        try {
            FileInputStream arq = new FileInputStream("CadastroClientes.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            clientes = new ArrayList<>();
            while (true) {
                try {
                    Cliente c = (Cliente) is.readObject();
                    clientes.add(c);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            //System.out.println("Erro!");
        }
    }

    /*----------------------------------------------------------------------------------------------*/

    //LER CONTA CORRENTE

    public static void lerContaCorrente() {
        try {
            FileInputStream arq = new FileInputStream("CadastroContasCorrente.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            contasCorrente = new ArrayList<>();
            while (true) {
                try {
                    ContaCorrente cc = (ContaCorrente) is.readObject();
                    contasCorrente.add(cc);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            // System.out.println("Erro!");
        }
    }

    /*---------------------------------------------------------------------------------------------*/

    //LER CONTA POUPANCA

    public static void lerContaPoupanca() {
        try {
            FileInputStream arq = new FileInputStream("CadastroContasPoupanca.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            contasPoupanca = new ArrayList<>();
            while (true) {
                try {
                    ContaPoupanca cp = (ContaPoupanca) is.readObject();
                    contasPoupanca.add(cp);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            //System.out.println("Erro!");
        }
    }

    /*--------------------------------------------------------------------------------------------*/

    //LER CONTA SALARIO

    public static void lerContaSalario() {
        try {
            FileInputStream arq = new FileInputStream("CadastroContasSalario.txt");
            ObjectInputStream is = new ObjectInputStream(arq);
            contasSalario = new ArrayList<>();
            while (true) {
                try {
                    ContaSalario cs = (ContaSalario) is.readObject();
                    contasSalario.add(cs);
                } catch (EOFException e) {
                    is.close();
                    arq.close();
                }
            }

        } catch (IOException | ClassNotFoundException ex) {
            //System.out.println("Erro!");
        }
    }

    /*===================================FIM LER============================================*/


    /*=======================================SACAR========================================*/

    public static void sacarDaConta(){

        int opcao;


        do{
            System.out.println("De qual conta quer sacar: ");
            System.out.println("|\t1 - Conta Corrente   |");
            System.out.println("|\t2 - Conta Poupanca   |");
            System.out.println("|\t3 - Conta Salario    |");

            opcao=sc.nextInt();

            int senha;
            long numConta;
            double valor;


            switch (opcao){
                case 1:
                    ContaCorrente cc = new ContaCorrente();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cc=checarNumContaCC(numConta);

                        if(cc.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cc.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer sacar: ");
                                        valor = sc.nextInt();
                                        if(valor>(cc.getSaldoAtual()+cc.getLimiteChequeEsp()))
                                            System.out.println("Valor invalido. Digite outro valor!");
                                    }while(valor>(cc.getSaldoAtual()+cc.getLimiteChequeEsp()));
                                    Transacao.sacarCC(cc,senha,valor);

                                    System.out.println("Saque realizado com sucesso!");
                                }
                            }while (senha!=cc.getSenha());

                        }

                    }while(cc.getNumConta()==0);

                    break;

                case 2:
                    ContaPoupanca cp = new ContaPoupanca();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cp=checarNumContaCP(numConta);

                        if(cp.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cp.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer sacar: ");
                                        valor = sc.nextInt();
                                        if(valor>cp.getSaldoAtual())
                                            System.out.println("Valor invalido. Digite outro valor!");
                                    }while(valor>cp.getSaldoAtual());
                                    Transacao.sacarCP(cp,senha,valor);

                                    System.out.println("Saque realizado com sucesso!");
                                }

                            }while (senha!=cp.getSenha());

                        }

                    }while(cp.getNumConta()==0);

                    break;

                case 3:
                    ContaSalario cs = new ContaSalario();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cs=checarNumContaCS(numConta);

                        if(cs.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cs.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer sacar: ");
                                        valor = sc.nextInt();
                                        if(valor>cs.getSaldoAtual())
                                            System.out.println("Valor invalido. Digite outro valor!");
                                        if(valor>cs.getLimiteSaque())
                                            System.out.println("Limite de saque atingido. Digite outro valor!");
                                    }while(valor>cs.getSaldoAtual() || valor>cs.getLimiteSaque());
                                    Transacao.sacarCS(cs,senha,valor);

                                    System.out.println("Saque realizado com sucesso!");
                                }

                            }while (senha!=cs.getSenha());

                        }

                    }while(cs.getNumConta()==0);

                    break;
            }

        }while (opcao>3 && opcao<1);

    }

    /*====================================FIM SACAR========================================*/




    /*=======================================DEPOSITAR========================================*/

    public static void depositarEmConta(){

        int opcao;


        do{
            System.out.println("Em qual conta deseja depositar: ");
            System.out.println("|\t1 - Conta Corrente   |");
            System.out.println("|\t2 - Conta Poupanca   |");
            System.out.println("|\t3 - Conta Salario    |");

            opcao=sc.nextInt();

            int senha;
            long numConta;
            double valor;


            switch (opcao){
                case 1:
                    ContaCorrente cc = new ContaCorrente();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cc=checarNumContaCC(numConta);

                        if(cc.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cc.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer depositar: ");
                                        valor = sc.nextInt();
                                        if(valor<=0)
                                            System.out.println("Valor invalido. Digite outro valor!");
                                    }while(valor<=0);

                                    Transacao.depositarCC(cc,senha,valor);

                                    System.out.println("Deposito realizado com sucesso!");
                                }

                            }while (senha!=cc.getSenha());

                        }

                    }while(cc.getNumConta()==0);

                    break;

                case 2:
                    ContaPoupanca cp = new ContaPoupanca();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cp=checarNumContaCP(numConta);

                        if(cp.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cp.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer depositar: ");
                                        valor = sc.nextInt();
                                        if(valor<=0)
                                            System.out.println("Valor invalido. Digite outro valor!");
                                    }while(valor<=0);
                                    Transacao.depositarCP(cp,senha,valor);

                                    System.out.println("Deposito realizado com sucesso!");
                                }

                            }while (senha!=cp.getSenha());

                        }

                    }while(cp.getNumConta()==0);

                    break;

                case 3:
                    ContaSalario cs = new ContaSalario();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cs=checarNumContaCS(numConta);

                        if(cs.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cs.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    do{
                                        System.out.println("Quanto você quer depositar: ");
                                        valor = sc.nextInt();
                                        if(valor<=0)
                                            System.out.println("Valor invalido. Digite outro valor!");
                                    }while(valor<=0);
                                    Transacao.depositarCS(cs,senha,valor);

                                    System.out.println("Deposito realizado com sucesso!");
                                }

                            }while (senha!=cs.getSenha());

                        }

                    }while(cs.getNumConta()==0);

                    break;
            }

        }while (opcao>3 && opcao<1);

    }

    /*====================================FIM DEPOSITAR========================================*/



    /*====================================SALDO========================================*/


    public static void saldoEmConta(){

        int opcao;
        int senha;
        long numConta;


        do{
            System.out.println("Em qual conta deseja verificar o saldo: ");
            System.out.println("|\t1 - Conta Corrente   |");
            System.out.println("|\t2 - Conta Poupanca   |");
            System.out.println("|\t3 - Conta Salario    |");

            opcao=sc.nextInt();


            switch (opcao){
                case 1:
                    ContaCorrente cc = new ContaCorrente();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cc=checarNumContaCC(numConta);

                        if(cc.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cc.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    cc.getSaldoAtual();
                                    System.out.println("Saldo atual: "+cc.getSaldoAtual());
                                    System.out.println("Limite do cheque especial: "+cc.getLimiteChequeEsp());
                                }

                            }while (senha!=cc.getSenha());

                        }

                    }while(cc.getNumConta()==0);

                    break;

                case 2:
                    ContaPoupanca cp = new ContaPoupanca();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cp=checarNumContaCP(numConta);

                        if(cp.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cp.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    cp.getSaldoAtual();
                                    System.out.println("Saldo atual: "+cp.getSaldoAtual());
                                }

                            }while (senha!=cp.getSenha());

                        }

                    }while(cp.getNumConta()==0);

                    break;

                case 3:
                    ContaSalario cs = new ContaSalario();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cs=checarNumContaCS(numConta);

                        if(cs.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cs.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{
                                    cs.getSaldoAtual();
                                    System.out.println("Saldo atual: "+cs.getSaldoAtual());
                                }

                            }while (senha!=cs.getSenha());

                        }

                    }while(cs.getNumConta()==0);

                    break;
            }



        }while (opcao>3 && opcao<1);

    }


    /*====================================FIM SALDO========================================*/


    /*====================================PAGEMENTOS========================================*/


    public static void pagamentoEmConta(){


        int opcao;


        do{
            System.out.println("De qual conta quer realizar pagamento: ");
            System.out.println("|\t1 - Conta Corrente   |");
            System.out.println("|\t2 - Conta Poupanca   |");
            System.out.println("|\t3 - Conta Salario    |");

            opcao=sc.nextInt();

            int senha;
            long numConta;
            double valor;


            switch (opcao){
                case 1:
                    ContaCorrente cc = new ContaCorrente();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cc=checarNumContaCC(numConta);

                        if(cc.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cc.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    System.out.println("Qual o valor do pagamento: ");
                                    valor = sc.nextInt();
                                    if(valor>(cc.getSaldoAtual()+ cc.getLimiteChequeEsp()))
                                        System.out.println("Valor excedido. Nao e possivel realizar o pagamento!");
                                    else{
                                        System.out.println("Digite o codigo do boleto: ");
                                        long boleto = sc.nextLong();
                                        Transacao.sacarCC(cc,senha,valor);
                                        System.out.println("Pagamento realizado com sucesso!");
                                        System.out.println("Codigo: "+boleto);
                                        System.out.println("Total: "+valor);
                                    }
                                }
                            }while (senha!=cc.getSenha());

                        }

                    }while(cc.getNumConta()==0);

                    break;

                case 2:
                    ContaPoupanca cp = new ContaPoupanca();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cp=checarNumContaCP(numConta);

                        if(cp.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cp.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    System.out.println("Qual o valor do pagamento: ");
                                    valor = sc.nextInt();
                                    if(valor>cp.getSaldoAtual())
                                        System.out.println("Valor excedido. Nao e possivel realizar o pagamento!");
                                    else{
                                        System.out.println("Digite o codigo do boleto: ");
                                        long boleto = sc.nextLong();
                                        Transacao.sacarCP(cp,senha,valor);
                                        System.out.println("Pagamento realizado com sucesso!");
                                        System.out.println("Codigo: "+boleto);
                                        System.out.println("Total: "+valor);
                                    }
                                }
                            }while (senha!=cp.getSenha());

                        }

                    }while(cp.getNumConta()==0);

                    break;

                case 3:
                    ContaSalario cs = new ContaSalario();

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cs=checarNumContaCS(numConta);

                        if(cs.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cs.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    System.out.println("Qual o valor do pagamento: ");
                                    valor = sc.nextInt();
                                    if(valor>cs.getSaldoAtual())
                                        System.out.println("Valor excedido. Nao e possivel realizar o pagamento!");
                                    else{
                                        System.out.println("Digite o codigo do boleto: ");
                                        long boleto = sc.nextLong();
                                        Transacao.sacarCS(cs,senha,valor);
                                        System.out.println("Pagamento realizado com sucesso!");
                                        System.out.println("Codigo: "+boleto);
                                        System.out.println("Total: "+valor);
                                    }
                                }
                            }while (senha!=cs.getSenha());

                        }

                    }while(cs.getNumConta()==0);

                    break;
            }

        }while (opcao>3 && opcao<1);

    }
    /*====================================FIM PAGAMENTOS========================================*/

    /*====================================TRANSFERENCIAS========================================*/


    public static void transferenciaEmConta(){


        int opcao;


        do{
            System.out.println("De qual conta quer realizar a transferencia: ");
            System.out.println("|\t1 - Conta Corrente   |");
            System.out.println("|\t2 - Conta Poupanca   |");
            System.out.println("|\t3 - Conta Salario    |");

            opcao=sc.nextInt();

            int senha;
            long numConta;
            long numConta2;
            double valor;


            switch (opcao){
                case 1:
                    ContaCorrente cc = new ContaCorrente(); //origem
                    ContaCorrente cc2 = new ContaCorrente(); //destino

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cc=checarNumContaCC(numConta);

                        if(cc.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cc.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    do{
                                        System.out.println("Digite a conta da pessoa de destino: ");
                                        numConta2 = sc.nextLong();

                                        cc2=checarNumContaCC(numConta2);

                                        if(cc.getNumConta()==0){
                                            System.out.println("Conta nao encontrada!");
                                        }else{
                                            System.out.println("Digite o valor a ser transferido: ");
                                            valor = sc.nextInt();
                                            if(valor>(cc.getSaldoAtual()+ cc.getLimiteChequeEsp()))
                                                System.out.println("Valor excedido. Nao e possivel realizar a transferencia!");
                                            else{
                                                Transacao.sacarCC(cc,senha,valor);
                                                Transacao.depositarCC(cc2,senha,valor);
                                                System.out.println();
                                                System.out.println("Trasferencia de " + valor + ",00 realizada com sucesso!");
                                                System.out.println("Conta destino de: " + cc2.getCliente().getNomeCompleto());
                                            }

                                        }

                                    }while(cc2.getNumConta()==0);

                                }
                            }while (senha!=cc.getSenha());

                        }

                    }while(cc.getNumConta()==0);

                    break;

                case 2:
                    ContaPoupanca cp = new ContaPoupanca(); //origem
                    ContaPoupanca cp2 = new ContaPoupanca(); //destino

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cp=checarNumContaCP(numConta);

                        if(cp.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cp.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    do{
                                        System.out.println("Digite a conta da pessoa de destino: ");
                                        numConta2 = sc.nextLong();

                                        cp2=checarNumContaCP(numConta2);

                                        if(cp.getNumConta()==0){
                                            System.out.println("Conta nao encontrada!");
                                        }else{
                                            System.out.println("Digite o valor a ser transferido: ");
                                            valor = sc.nextInt();
                                            if(valor>cp.getSaldoAtual())
                                                System.out.println("Valor excedido. Nao e possivel realizar a transferencia!");
                                            else{
                                                Transacao.sacarCP(cp,senha,valor);
                                                Transacao.depositarCP(cp2,senha,valor);
                                                System.out.println();
                                                System.out.println("Trasferencia de " + valor + ",00 realizada com sucesso!");
                                                System.out.println("Conta destino de: " + cp2.getCliente().getNomeCompleto());
                                            }

                                        }

                                    }while(cp2.getNumConta()==0);

                                }
                            }while (senha!=cp.getSenha());

                        }

                    }while(cp.getNumConta()==0);

                    break;

                case 3:
                    ContaSalario cs = new ContaSalario(); //origem
                    ContaSalario cs2 = new ContaSalario(); //destino

                    do{
                        System.out.println("Digite o numero de sua conta: ");
                        numConta = sc.nextLong();

                        cs=checarNumContaCS(numConta);

                        if(cs.getNumConta()==0){
                            System.out.println("Conta nao encontrada!");
                        }

                        else{
                            do{
                                System.out.println("Digite sua senha: ");
                                senha = sc.nextInt();

                                if(senha!=cs.getSenha()){
                                    System.out.println("Senha invalida!");
                                }else{

                                    do{
                                        System.out.println("Digite a conta da pessoa de destino: ");
                                        numConta2 = sc.nextLong();

                                        cs2=checarNumContaCS(numConta2);

                                        if(cs.getNumConta()==0){
                                            System.out.println("Conta nao encontrada!");
                                        }else{
                                            System.out.println("Digite o valor a ser transferido: ");
                                            valor = sc.nextInt();
                                            if(valor>cs.getSaldoAtual())
                                                System.out.println("Valor excedido. Nao e possivel realizar a transferencia!");
                                            if(valor>cs.getLimiteTransferencia())
                                                System.out.println("Limite de transferencia excedido. Nao e possivel realizar a transferencia!");
                                            else{
                                                Transacao.sacarCS(cs,senha,valor);
                                                Transacao.depositarCS(cs2,senha,valor);
                                                System.out.println();
                                                System.out.println("Trasferencia de " + valor + ",00 realizada com sucesso!");
                                                System.out.println("Conta destino de: " + cs2.getCliente().getNomeCompleto());
                                            }

                                        }

                                    }while(cs2.getNumConta()==0);

                                }
                            }while (senha!=cs.getSenha());

                        }

                    }while(cs.getNumConta()==0);

                    break;
            }

        }while (opcao>3 && opcao<1);

    }
    /*====================================FIM TRANSFERENCIAS========================================*/

}

