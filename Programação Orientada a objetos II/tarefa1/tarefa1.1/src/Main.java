public class Main {
    public static void main(String[] args) {
        Integer[] intArray = {1,2,3,4,5,6};
        Double[] doubleArray = {1.1, 3.3, 5.5, 7.7};
        Character[] charArray = {'B','E','A'};

        imprimeArray(intArray);
        imprimeArray(doubleArray);
        imprimeArray(charArray);
    }

    public static <T> void imprimeArray(T[] inputArray){
        for (T element : inputArray)
            System.out.printf("%s ", element);
        System.out.println();
    }
}
