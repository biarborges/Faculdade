public class Contas { //contexto
    private Estado estado;

    public Contas(){
        super();
        this.estado=new Prata(this,0.0); //settar o começo. como começa com zero, então começa sendo prata
    }

    public void deposito(double valor) {
        estado.deposito(valor);
        System.out.println("Valor depositado: "+valor);
        System.out.println("Saldo: "+this.estado.verSaldo());
        System.out.println("Status: "+this.estado.getClass().getSimpleName()); //função q pega o nome da classe
        System.out.println();
    }
    public void saque(double valor){
        estado.saque(valor);
        System.out.println("Valor sacado: "+valor);
        System.out.println("Saldo: "+this.estado.verSaldo());
        System.out.println("Status: "+this.estado.getClass().getSimpleName());
        System.out.println();
    }

    public Estado getEstado(){
        return estado;
    }

    public void setEstado(Estado estado){
        this.estado=estado;
    }
}
