import java.util.*;

public class Main {
    public static void main(String[] args) {
        List<String> lista1 = new ArrayList<>(List.of("Maria","Joao","Ana","Bia"));
        List<String> lista2 = new ArrayList<>(List.of("Claudia","Gustavo","Ana","Bia"));

        imprimirListas(lista1,lista2);
        System.out.println();
        imprimirListas2(lista1,lista2);
    }



    public static void imprimirListas(List<String> lista1, List<String> lista2){
        Iterator it = lista1.iterator();
        while (it.hasNext()){
            Object valor = it.next();
            if (lista2.contains(valor)){
                System.out.println(valor);
            }
        }
    }

    public static <T> void imprimirListas2(List<T> lista1, List<T> lista2){
        Iterator<T> it = lista1.iterator();
        while (it.hasNext()){
            T valor = it.next();
            if (lista2.contains(valor)){
                System.out.println(valor);
            }
        }
    }
}
