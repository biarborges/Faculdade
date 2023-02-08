public class Main {
    public static void main(String[] args) {
        Vendedor vendedor = new Vendedor("Vendedor",10000,5000);
        Atendente atendente = new Atendente("Atendente",15000,16000);
        Gerente gerente = new Gerente("Gerente",20000,18000);

        atendente.print();
        vendedor.print();
        gerente.print();
    }
}
