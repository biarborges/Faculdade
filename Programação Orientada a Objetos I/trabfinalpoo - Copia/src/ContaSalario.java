import java.io.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class ContaSalario extends ContaBancaria implements Serializable {
    private double limiteSaque=2000;
    private double limiteTransferencia=3000;
    public ContaSalario() {}

    public ContaSalario(long numConta, double saldoAtual, Date dataAbertura, Date dataUltimaMov, int senha, Cliente cliente, double limiteSaque, double limiteTransferencia){
        super(numConta, saldoAtual, dataAbertura, dataUltimaMov, senha, cliente);
    }

    public double getLimiteSaque() {
        return limiteSaque;
    }

    public void setLimiteSaque(double limiteSaque) {
        this.limiteSaque = limiteSaque;
    }

    public double getLimiteTransferencia() {
        return limiteTransferencia;
    }

    public void setLimiteTransferencia(double limiteTransferencia) {
        this.limiteTransferencia = limiteTransferencia;
    }

    public String toString() {
        return  "\nCliente: " + this.getCliente() +
                "\nNumero da Conta: " + this.getNumConta() +
                "\nSenha: " + this.getSenha() +
                "\nSaldo: " + String.format("R$%.2f",this.getSaldoAtual()) +
                "\nLimite para Saque: " + this.getLimiteSaque() +
                "\nLimite para Transferencia: " + this.getLimiteTransferencia() +
                "\n" ;
    }

}
