public class Gerente extends Funcionario{
    public Gerente(String tipoFuncionario, double meta, double valorVendas) {
        super(tipoFuncionario, meta, valorVendas);
    }

    public double calculaComissao(double valor) {
        double comissao;
        if (calculaMeta(meta,valor)==true)
            comissao = valor * 0.03;
        else
            comissao = valor * 0.024;
        return comissao;
    }

}
