public class Funcionario { //context

    Comissao comissao;
    String tipoFunc;
    double valor;

    public Funcionario(Comissao comissao, String tipoFunc, double valor) {
        this.comissao = comissao;
        this.tipoFunc = tipoFunc;
        this.valor = valor;
    }

    public double ExecutaCalculaComissao(double valor){
        return comissao.calculaComissao(valor);
    }

    public void print (){
        System.out.println("Tipo de funcionário: "+tipoFunc);
        System.out.println("Valor das vendas: "+valor);
        System.out.println("Comissão: "+ExecutaCalculaComissao(valor));
        System.out.println();
    }
}
