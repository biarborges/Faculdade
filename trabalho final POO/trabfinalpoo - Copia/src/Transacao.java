import java.util.Date;

public class Transacao {
    private ContaBancaria conta;
    private Date dataTransacao;
    private double  valor;
    private String meioUtilizado;

    public Transacao(){}

    public Transacao(Date dataNasc, ContaBancaria conta){
        this.dataTransacao = dataNasc;
        this.conta = conta;
    }

    public Date getDataNasc() {
        return dataTransacao;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataTransacao = dataNasc;
    }

    public String getMeioUtilizado() {
        return meioUtilizado;
    }

    public void setMeioUtilizado(String meioUtilizado) {
        this.meioUtilizado = meioUtilizado;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public static void depositarCC(ContaCorrente conta, int senha, double valor){
        double novoSaldo;
        double novoLimite;
        if(conta.getLimiteChequeEsp()==500){
            novoSaldo = conta.getSaldoAtual() + valor;
            System.out.println("Depositado: " + valor);

            conta.setSaldoAtual(novoSaldo);
            System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");
            System.out.println("Cheque especial: " + conta.getLimiteChequeEsp());
        } else{
            double completarlimite=conta.getLimiteChequeEsp()-500; //-300
            novoSaldo = completarlimite + valor; // 100
            novoLimite = conta.getLimiteChequeEsp()-completarlimite;

            conta.setSaldoAtual(novoSaldo);
            conta.setLimiteChequeEsp(novoLimite);
            System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");
            System.out.println("Cheque especial: " + conta.getLimiteChequeEsp());

        }

    }

    public static void sacarCC(ContaCorrente conta, int senha, double valor) {

        double novoSaldo;
        double novoLimite;
        if(valor<conta.getSaldoAtual()){
            novoSaldo = conta.getSaldoAtual() - valor;
            System.out.println("Sacado: " + valor);

            conta.setSaldoAtual(novoSaldo);
            System.out.println("Saldo: " + conta.getSaldoAtual() + "\n");
            System.out.println("Cheque especial: " + conta.getLimiteChequeEsp());

        } else if (valor<(conta.getSaldoAtual()+conta.getLimiteChequeEsp())) {
            novoSaldo = conta.getSaldoAtual() - valor;
            novoLimite = conta.getLimiteChequeEsp() - valor;
            System.out.println("Sacado: " + valor);

            conta.setSaldoAtual(novoSaldo);
            conta.setLimiteChequeEsp(novoLimite);
            System.out.println("Saldo: " + conta.getSaldoAtual() + "\n");
            System.out.println("Cheque especial: " + conta.getLimiteChequeEsp());
        }

    }

    public static void depositarCP(ContaPoupanca conta, int senha, double valor){
        double novoSaldo = conta.getSaldoAtual() + valor;
        System.out.println("Depositado: " + valor);

        conta.setSaldoAtual(novoSaldo);
        System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");

    }

    public static void sacarCP(ContaPoupanca conta, int senha, double valor) {
        double novoSaldo = conta.getSaldoAtual() - valor;
        System.out.println("Sacado: " + valor);

        conta.setSaldoAtual(novoSaldo);
        System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");
    }

    public static void depositarCS(ContaSalario conta, int senha, double valor){
        double novoSaldo = conta.getSaldoAtual() + valor;
        System.out.println("Depositado: " + valor);

        conta.setSaldoAtual(novoSaldo);
        System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");

    }

    public static void sacarCS(ContaSalario conta, int senha, double valor) {
        double novoSaldo = conta.getSaldoAtual() - valor;
        System.out.println("Sacado: " + valor);

        conta.setSaldoAtual(novoSaldo);
        System.out.println("Novo saldo: " + conta.getSaldoAtual() + "\n");
    }

}
