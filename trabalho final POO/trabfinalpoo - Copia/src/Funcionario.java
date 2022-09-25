import java.io.*;
import java.util.ArrayList;

public class Funcionario extends Pessoa implements Serializable{
    private int numCarteiraTrab;
    private String cargo;
    private int anoDeIngresso;
    private double salario;

    public Funcionario() {}

    public Funcionario(String cpf, String nomeCompleto, String rg, String dataNasc, String endereco, String sexo, String estadoCivil,int anoDeIngresso, int numCarteiraTrab, String cargo) {
        super(cpf, nomeCompleto, rg, dataNasc, endereco, sexo, estadoCivil);
        this.anoDeIngresso = anoDeIngresso;
        this.numCarteiraTrab = numCarteiraTrab;
        this.cargo = cargo;
        salario = 5000;
    }

    public int getAnoDeIngresso() {
        return anoDeIngresso;
    }

    public void setAnoDeIngresso(int anoDeIngresso) {
        this.anoDeIngresso = anoDeIngresso;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public int getNumCarteiraTrab() {
        return numCarteiraTrab;
    }

    public void setNumCarteiraTrab(int numCarteiraTrab) {
        this.numCarteiraTrab = numCarteiraTrab;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String toString() {
        return  "\nNome: " + this.getNomeCompleto() +
                "\nCPF: " + this.getCpf() +
                "\nRG: " + this.getRg() +
                "\nData de Nascimento: " + this.getDataNasc() +
                "\nSexo: " + this.getSexo() +
                "\nEstado Civil: " + this.getEstadoCivil() +
                "\nEndereço: " + this.getEndereco() +
                "\nCargo: " + this.getCargo() +
                "\nAno de Ingresso: " + this.getAnoDeIngresso() +
                "\nNumero da carteira de trabalho: " + this.getNumCarteiraTrab() +
                "\nSalario: " + String.format("R$%.2f",calculaSalario()) +
                "\n" ;
    }
    public double calculaSalario() {
        if(2022-getAnoDeIngresso()>=15)
            return getSalario() + getSalario()*0.10;
        return getSalario();
    }


}

