public class Quiosque {
    public static void main(String[] args) {
        MaquinaDeBebidas maquina1 = new MaquinaDeRefri();
        Bebida bebida1 = maquina1.entregarBebida();

        MaquinaDeBebidas maquina2 = new MaquinaDeSuco();
        Bebida bebida2 = maquina2.entregarBebida();

        MaquinaDeBebidas maquina3 = new MaquinaDeCafe();
        Bebida bebida3 = maquina3.entregarBebida();

        System.out.println(bebida1.tipoBebida());//refri
        System.out.println();
        System.out.println(bebida2.tipoBebida());//suco
        System.out.println();
        System.out.println(bebida3.tipoBebida());//cafe


    }
}
