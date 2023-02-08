public class Main {
    public static void main(String[] args) {
        long tempoInicial = System.currentTimeMillis();
        ImprimePrimos();
        long tempoFinal = System.currentTimeMillis();
        System.out.println("--------------------------");
        System.out.println("Tempo em milisegundos: " + (tempoFinal-tempoInicial)); //media de 40 segundos
        System.out.println("--------------------------");
    }

    /*    public static void Primos (){
        int i, j, count;

        for (i = 2; i <= 9999; i++) {
            count = 1;

            for (j = 2; j <= i / 2; ++j) {
                if (i % j == 0) {
                    count = 0;
                    break;
                }
            }

            if (count == 1)
                System.out.println(i);
        }
    }*/

    public static Boolean Primos (int x){
        int i;
        for(i = 2; i <= x/2; i++){
            if(x % i == 0){
                return false;
            }
        }
        return true;
    }


    public static void ImprimePrimos(){
        for (int i = 2; i <= 9999; i++) {
            if(Primos(i)==true){
                System.out.println(i);
            }

        }
    }
}
