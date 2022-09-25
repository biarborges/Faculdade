import java.io.*;
import java.io.Serializable;
import java.util.ArrayList;

public class Agencia implements Serializable{
    private int numAgencia;
    private String nomeAgencia;

    private String cidade, estado, bairro;

    public Agencia() {}

    public Agencia(int numAgencia, String nomeAgencia, String cidade, String estado, String bairro){
        this.numAgencia = numAgencia;
        this.nomeAgencia = nomeAgencia;
        this.cidade = cidade;
        this.estado = estado;
        this.bairro = bairro;
    }

    public String getNomeAgencia() {
        return nomeAgencia;
    }

    public void setNomeAgencia(String nomeAgencia) {
        this.nomeAgencia = nomeAgencia;
    }

    public int getNumAgencia() {
        return numAgencia;
    }

    public void setNumAgencia(int numAgencia) {
        this.numAgencia = numAgencia;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public void endereco(){
        System.out.println( "\nCidade: " + getCidade() +
                                    "\nEstado: " + getEstado() +
                                    "\nBairro: " + getBairro() +
                                    "\n");
    }
    public String toString() {
        return "\nNumero da Agencia: " + this.getNumAgencia() +
                "\nNome da Agencia: " + this.getNomeAgencia() +
                "\nCidade: " + this.getCidade() +
                "\nEstado: " + this.getEstado() +
                "\nBairro: " + this.getBairro() +
                "\n" ;
    }



}
