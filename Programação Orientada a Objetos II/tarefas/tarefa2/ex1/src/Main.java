import java.util.*;
public class Main {
    public static void main(String[] args) {

        List<String> listaNomes = new ArrayList<>();
        //List<String> listaNomes = new ArrayList<>(List.of("..."))
        listaNomes.add("Ana");
        listaNomes.add("Joao");
        listaNomes.add("Maria");
        System.out.println(listaNomes);

        listaNomes.sort(null); //o null é um comparativo
        System.out.println(listaNomes);

        Collections.sort(listaNomes);
        System.out.println(listaNomes);

        Collections.sort(listaNomes,Collections.reverseOrder());
        System.out.println(listaNomes);
    }

}
