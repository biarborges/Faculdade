import java.io.Serializable;
import java.io.*;
import java.util.ArrayList;

public class Cliente extends Pessoa implements Serializable {
    private Agencia agencia;
    private String escolaridade;

    public Cliente() {}

    public Cliente(String cpf, String nomeCompleto, String rg, String dataNasc, String endereco, String sexo, String estadoCivil, Agencia agencia, String escolaridade) {
        super(cpf, nomeCompleto, rg, dataNasc, endereco, sexo, estadoCivil);
        this.agencia = agencia;
        this.escolaridade = escolaridade;
    }

    public Agencia getAgencia() {
        return agencia;
    }

    public void setAgencia(Agencia agencia) {
        this.agencia = agencia;
    }

    public String getEscolaridade() {
        return escolaridade;
    }

    public void setEscolaridade(String escolaridade) {
        this.escolaridade = escolaridade;
    }


    public String toString() {
        return  "\nNome: " + this.getNomeCompleto() +
                "\nCPF: " + this.getCpf() +
                "\nRG: " + this.getRg() +
                "\nData de Nascimento: " + this.getDataNasc() +
                "\nSexo: " + this.getSexo() +
                "\nEstado Civil: " + this.getEstadoCivil() +
                "\nEndereço: " + this.getEndereco() +
                "\nEscolaridade: " + this.getEscolaridade() +
                "\nAgencia: " + getAgencia() +
                //  "\nAgencia: " + this.agencia.getNomeAgencia() +
                "\n" ;
    }
}
