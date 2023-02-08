public class Atendente extends Funcionario{


    public Atendente(String tipoFuncionario, double meta, double valorVendas) {
        super(tipoFuncionario, meta, valorVendas);
    }

    @Override
    public double calculaComissao(double valor) {
        double comissao;
        if (calculaMeta(meta,valor)==true)
            comissao = valor * 0.01;
        else
            comissao = valor * 0.008;
        return comissao;
    }

    @Override
    public void print() {
        super.print();
    }
}
