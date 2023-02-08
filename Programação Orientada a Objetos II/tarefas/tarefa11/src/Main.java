public class Main {
    public static void main(String[] args) {
        Contas contas = new Contas();

        contas.deposito(900);
        contas.deposito(100);
        contas.deposito(200);
        contas.saque(1200);
        contas.saque(200);
        contas.saque(10);

    }
}
