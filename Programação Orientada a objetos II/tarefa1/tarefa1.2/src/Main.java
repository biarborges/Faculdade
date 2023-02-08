public class Main {
    public static void main(String[] args) {

        System.out.printf("Maior entre: %d, %d, %d é: %d", 200,98,4, maiorValor(2,3,4));
        System.out.println();
        System.out.printf("Maior entre: %.2f, %.2f, %.2f é: %.2f", 200.5, 100.93,4.2, maiorValor(200.5, 100.93,4.2));
        System.out.println();
        System.out.printf("Maior entre: %1f, %1f, %1f é: %1f", 200.5, 100.93,4.2, maiorValor(200.5, 100.93,4.2));
    }

    public static <T extends Comparable <T>> T maiorValor (T x, T y, T z){
        T maximo = x;
        if (y.compareTo(maximo)>0) //y é maior q o maximo
            maximo=y;
        if (z.compareTo(maximo)>0)
            maximo=z;

        return maximo;

    }
}
