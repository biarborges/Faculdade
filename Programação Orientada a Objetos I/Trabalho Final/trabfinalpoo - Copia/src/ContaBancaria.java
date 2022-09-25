import java.io.Serializable;
import java.util.Date;

public abstract class ContaBancaria implements Serializable {

    private long numConta;
    private double saldoAtual;
    private Date dataAbertura;
    private Date dataUltimaMov;
    private int senha;
    private Cliente cliente;

    public ContaBancaria() {}
    public ContaBancaria(long numConta, double saldoAtual,Date dataAbertura, Date dataUltimaMov, int senha, Cliente cliente) {
        this.numConta = numConta;
        this.saldoAtual = saldoAtual;
        this.dataAbertura = dataAbertura;
        this.dataUltimaMov = dataUltimaMov;
        this.senha = senha;
        this.cliente = cliente;
    }

    public Date getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(Date dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public Date getDataUltimaMov() {
        return dataUltimaMov;
    }

    public void setDataUltimaMov(Date dataUltimaMov) {
        this.dataUltimaMov = dataUltimaMov;
    }
    public long getNumConta() {
        return numConta;
    }

    public void setNumConta(long numConta) {
        this.numConta = numConta;
    }

    public double getSaldoAtual() {
        return saldoAtual;
    }

    public void setSaldoAtual(double saldoAtual) {
        this.saldoAtual = saldoAtual;
    }

    public int getSenha() {
        return senha;
    }

    public void setSenha(int senha) {
        this.senha = senha;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public abstract String toString();

}
