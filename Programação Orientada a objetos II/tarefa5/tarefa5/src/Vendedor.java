public class Vendedor extends Funcionario{
    public Vendedor(String tipoFuncionario, double meta, double valorVendas) {
        super( tipoFuncionario, meta, valorVendas);
    }

    public double calculaComissao(double valor) {
        double comissao;
        if (calculaMeta(meta,valor)==true)
            comissao = valor * 0.02;
        else
            comissao = valor * 0.016;
        return comissao;
    }

    @Override
    public void print() {
        super.print();
    }
}
