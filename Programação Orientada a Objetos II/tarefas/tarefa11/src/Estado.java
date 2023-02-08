public interface Estado {
    public void saque(double valor);
    public void deposito(double valor);

    public double verSaldo();
    public Contas conta();
}
