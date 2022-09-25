import java.io.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class ContaPoupanca extends ContaBancaria implements Serializable {
    private double rendimentoMesAtual=0.02;
    public ContaPoupanca() {}

    public ContaPoupanca(long numConta, double saldoAtual, Date dataAbertura, Date dataUltimaMov, int senha, Cliente cliente, double rendimentoMesAtual) {
        super(numConta, saldoAtual, dataAbertura, dataUltimaMov, senha, cliente);

    }

    public double getRendimentoMensal() {
        return rendimentoMesAtual;
    }

    public void setRendimentoMensal(double rendimentoMensal) {
        this.rendimentoMesAtual = rendimentoMensal;
    }


    public String toString() {
        return "\nCliente: " + this.getCliente() +
                "\nNumero da Conta: " + this.getNumConta() +
                "\nSenha: " + this.getSenha() +
                "\nSaldo: " + String.format("R$%.2f",this.getSaldoAtual()) +
                "\nRendimento do Mes Atual: " + this.getRendimentoMensal() +
                "\n" ;
    }
}
