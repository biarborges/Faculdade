public abstract class Funcionario {
    String tipoFuncionario;
    double meta;
    double valorVendas;

    public Funcionario( String tipoFuncionario, double meta, double valorVendas) {
        this.tipoFuncionario = tipoFuncionario;
        this.meta = meta;
        this.valorVendas = valorVendas;
    }

    public abstract double calculaComissao(double valor);

   public boolean calculaMeta(double meta, double valor){
       if(valor>=meta)
           return true;
       else
           return false;
   }

   public void print(){
       System.out.println("Tipo de Funcionario: "+tipoFuncionario);
       System.out.println("Meta: "+meta);
       System.out.println("Valor da Venda: "+valorVendas);
       System.out.println("Comissao: "+calculaComissao(valorVendas));
       System.out.println();
   }

}
