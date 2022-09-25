import java.io.Serializable;

public abstract class Pessoa implements Serializable {
    private String cpf;
    private String nomeCompleto;
    private String rg;
    private String dataNasc;
    private String endereco;
    private String sexo;
    private String estadoCivil;
    public Pessoa() {}

    public Pessoa(String cpf, String nomeCompleto, String rg, String dataNasc, String endereco, String sexo, String estadoCivil) {
        this.cpf = cpf;
        this.nomeCompleto = nomeCompleto;
        this.rg = rg;
        this.endereco = endereco;
        this.dataNasc = dataNasc;
        this.estadoCivil = estadoCivil;
        this.sexo = sexo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public abstract String toString();

}
