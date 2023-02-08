public class Main {
    public static void main(String[] args) {
        IMaquinaDeBebida maquina1 = new MaquinaCocaColaCompany();
        Quiosque quiosque1 = new Quiosque(maquina1);
        System.out.println(quiosque1.pegarRefri());

        System.out.println();

        IMaquinaDeBebida maquina2 = new MaquinaAmbev();
        Quiosque quiosque2 = new Quiosque(maquina2);
        System.out.println(quiosque2.pegarRefri());

        System.out.println();

        IMaquinaDeBebida maquina3= new MaquinaCocaColaCompany();
        Quiosque quiosque3 = new Quiosque(maquina3);
        System.out.println(quiosque3.pegarAgua());

        System.out.println();

        IMaquinaDeBebida maquina4= new MaquinaOnlySucos();
        Quiosque quiosque4 = new Quiosque(maquina4);
        System.out.println(quiosque4.pegarSuco());

        System.out.println();

        IMaquinaDeBebida maquina5= new MaquinaCocoColaCompany2();
        Quiosque quiosque5 = new Quiosque(maquina5);
        System.out.println(quiosque5.pegarRefri());
    }
}

/*
Questão 5:
Se a água for de alguma concrete factory, adiciona o metodo a ser implementado na abstract factory,
acrescenta um produto abstrato 'IAgua' e implementa no concrete product, também chama no quiosque.
Se não for de nenhuma concrete factory existente tem que criar.

Questão 6:
Cria uma concret factory e concret prduct a partir da interface ja existente ISuco

Questão 7:
cria uma nova fabrica concreta, adiciona coca zero no produto concreto
*/