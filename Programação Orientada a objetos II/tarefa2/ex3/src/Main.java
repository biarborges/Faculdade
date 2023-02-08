import java.util.*;

public class Main {
    public static void main(String[] args) {
        Map<String,Integer> texto = new HashMap<>();

        contaPalavras(texto);

    }

    public static void contaPalavras (Map<String, Integer> map){
        String txt = "teste do teste para teste";
        String[] separa = txt.split(" "); //serve para separar a frase em cada espaço, pq daí vou conseguir linkar a palavra com o int como numa tabela hash

        int cont;
        for (String s:separa){
            if(map.containsKey(s)){
                cont = map.get(s);
                map.put(s,cont+1);
            }
            else{
                map.put(s,1);
            }
        }
        System.out.println(map);

    }
}
