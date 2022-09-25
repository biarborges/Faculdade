import java.io.Serializable;

public class Gerente extends Funcionario implements Serializable {
    private String dataIngressoComoGerente;
    private Agencia agencia;
    private String possuiCursoBasico;

    private static double comissao = 100;

    public Gerente(){}

    public Gerente(String cpf, String nomeCompleto, String rg, String dataNasc, String endereco, String sexo, String estadoCivil, int anoDeIngresso, int numCarteiraTrab, String cargo, String dataIngressoComoGerente, Agencia agencia, String possuiCursoBasico) {
        super(cpf, nomeCompleto, rg, dataNasc, endereco, sexo, estadoCivil, anoDeIngresso, numCarteiraTrab, cargo);
        this.dataIngressoComoGerente = dataIngressoComoGerente;
        this.agencia = agencia;
        this.possuiCursoBasico = possuiCursoBasico;
        comissao = 100;
    }

    public String getDataIngressoComoGerente() {
        return dataIngressoComoGerente;
    }

    public void setDataIngressoComoGerente(String dataIngressoComoGerente) {
        this.dataIngressoComoGerente = dataIngressoComoGerente;
    }

    public String getPossuiCursoBasico() {
        return possuiCursoBasico;
    }

    public void setPossuiCursoBasico(String possuiCursoBasico) {
        this.possuiCursoBasico = possuiCursoBasico;
    }

    public Agencia getAgencia() {
        return agencia;
    }

    public void setAgencia(Agencia agencia) {
        this.agencia = agencia;
    }

    public static double getComissao() {
        return comissao;
    }

    public static void setComissao(double comissao) {
        Gerente.comissao = comissao;
    }
    public double calculaSalarioGerente() {
        return calculaSalario()+getComissao();
    }

    public String toString() {
        return
                "\nCPF: " + this.getCpf() +
                        "\nNome: " + this.getNomeCompleto() +
                        "\nRG: " + this.getRg() +
                        "\nData de Nascimento: " + this.getDataNasc() +
                        "\nSexo: " + this.getSexo() +
                        "\nEstado Civil: " + this.getEstadoCivil() +
                        "\nEndereço: " + this.getEndereco() +
                        "\nCargo: " + this.getCargo() +
                        "\nAgencia: " + this.getAgencia() +
                        "\nAno de Ingresso como Gerente: " + this.getDataIngressoComoGerente() +
                        "\nNumero da carteira de trabalho: " + this.getNumCarteiraTrab() +
                        "\nPossui curso basico? " + this.getPossuiCursoBasico() +
                        "\nSalario: " + String.format("R$%.2f",calculaSalarioGerente()) +
                        "\n" ;
    }
}
