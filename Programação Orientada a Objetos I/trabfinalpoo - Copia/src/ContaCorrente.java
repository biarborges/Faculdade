import java.io.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class ContaCorrente extends ContaBancaria implements Serializable {
    private static double valorTaxaAdm = 0.2;

    private double limiteChequeEsp = 500;

    public ContaCorrente() {}

    public ContaCorrente(long numConta, double saldoAtual, Date dataAbertura, Date dataUltimaMov, int senha, Cliente cliente, double limiteChequeEsp, double valorTaxaAdm) {
        super(numConta, saldoAtual, dataAbertura, dataUltimaMov, senha,  cliente);

    }


    public double getValorTaxaAdm() {
        return valorTaxaAdm;
    }

    public static void setValorTaxaAdm(double valorTaxaAdm) {
        ContaCorrente.valorTaxaAdm = valorTaxaAdm;
    }

    public double getLimiteChequeEsp() {
        return limiteChequeEsp;
    }

    public void setLimiteChequeEsp(double limiteChequeEsp) {
        this.limiteChequeEsp = limiteChequeEsp;
    }


    public String toString() {
        return  "\nCliente: " + getCliente() +
                "\nNumero da Conta: " + super.getNumConta() +
                "\nSenha: " + super.getSenha() +
                "\nSaldo: " + String.format("R$%.2f",this.getSaldoAtual()) +
                "\nValor da Taxa Administrativa: " + getValorTaxaAdm() +
                "\nLimite do Cheque Especial: " + getLimiteChequeEsp() +
                "\nData de abertura da conta: " + super.getDataAbertura() +
                "\nData da ultima movimentacao: " + super.getDataUltimaMov() +
                "\n" ;
    }

}

