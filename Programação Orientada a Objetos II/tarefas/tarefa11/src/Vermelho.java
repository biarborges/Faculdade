public class Vermelho implements Estado{
    private Contas conta;
    private double saldo;
    private double limiteSuperior; //no vermelho, como ele ta negativo, vai ser zero. se subir mais, daí ele troca de estado

    public Vermelho(Contas conta, double saldo) {
        super();
        this.conta = conta;
        this.saldo = saldo;
        this.limiteSuperior=0.0;
    }

    public Vermelho(Estado estado){
        this(estado.conta(),estado.verSaldo());
    }

    @Override
    public void saque(double valor) {
        System.out.println("Não é possível realizar saque.");
    }

    @Override
    public void deposito(double valor) {
        saldo=saldo+valor;
        mudaEstado();
    }

    @Override
    public double verSaldo() {

        return saldo;
    }

    @Override
    public Contas conta() {
        return conta;
    }

    private void mudaEstado(){
        if (saldo>limiteSuperior){
            conta.setEstado(new Prata(this));
        }
    }

}
