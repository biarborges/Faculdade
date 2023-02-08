public class Main {
    public static void main(String[] args) {
    Vendendor vendedor = new Vendendor();
    Atendente atendente = new Atendente();
    Gerente gerente = new Gerente();
    Diretor diretor = new Diretor();

    Funcionario f1 = new Funcionario(atendente,"Atendente",500);
    f1.print();

    Funcionario f2 = new Funcionario(vendedor,"Vendedor",500);
    f2.print();

    Funcionario f3 = new Funcionario(gerente,"Gerente",500);
    f3.print();

    Funcionario f4 = new Funcionario(diretor,"Diretor",500);
    f4.print();

    Funcionario f5 = new Funcionario(gerente,"Vendedor",500);
    f5.print();

    }
}
