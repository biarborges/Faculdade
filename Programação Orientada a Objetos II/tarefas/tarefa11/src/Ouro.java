public class Ouro implements Estado{
    private Contas conta;
    private double saldo;
    private double limiteInferior;

    public Ouro(Contas conta, double saldo) {
        super();
        this.conta = conta;
        this.saldo = saldo;
        this.limiteInferior=1000.0;
    }

    public Ouro(Estado estado){
        this(estado.conta(),estado.verSaldo());
    }

    @Override
    public void saque(double valor) {
        saldo=saldo-valor;
        mudaEstado();
    }

    @Override
    public void deposito(double valor) {
        saldo=(saldo+valor)*0.01;
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
        if (saldo<0.0){
            conta.setEstado(new Vermelho(this));
        } else if (saldo<limiteInferior) {
            conta.setEstado(new Prata(this));
        }
    }

}
