public class Prata implements Estado{
    private Contas conta;
    private double saldo;
    private double limiteSuperior;
    private double limiteInferior;

    public Prata(Contas conta, double saldo) {
        super();
        this.conta = conta;
        this.saldo = saldo;
        this.limiteSuperior=1000.0;
        this.limiteInferior=0.0;
    }

    public Prata(Estado estado){
        this(estado.conta(),estado.verSaldo());
    }

    @Override
    public void saque(double valor) {
        saldo=saldo-valor-1;
        mudaEstado();
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
        if (saldo<limiteInferior){
            conta.setEstado(new Vermelho(this));
        } else if (saldo>limiteSuperior) {
            conta.setEstado(new Ouro(this));
        }
    }
}
