public class Main {
    public static void main(String[] args) {

        long tempoInicial = System.currentTimeMillis();

        PrimosThread[] p = new PrimosThread[101];
        int minimo=0;

        for (int i = 0; i < 101; i++) {
            int maximo= minimo+99;
            p[i] = new PrimosThread(minimo, maximo);
            minimo=maximo;
            p[i].start();

        }
        long tempoFinal = System.currentTimeMillis();

        System.out.println("--------------------------");
        System.out.println("Tempo em milisegundos: " + (tempoFinal-tempoInicial)); //media  de 10 segundos
        System.out.println("--------------------------");

    }
}
