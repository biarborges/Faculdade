import java.util.*;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<String> lista = new ArrayList<>(List.of("Luz", "Bauru", "Monte Carmelo", "Belém", "Itu"));

        agrupa(lista);

    }
    public static void agrupa(List<String>lista1){
        int cont;
        Map<String,Integer> map = new HashMap<>();
        Map<String, List<String>> valuesMap = new HashMap<>();
        for(String s:lista1){
            map.put(s,s.length());
        }
        for (String key : map.keySet()) {
            Integer val = map.get(key);
            if (valuesMap.get(val) == null) {
                List<String> values = new ArrayList<>();
                values.add(key);
                valuesMap.put(String.valueOf(val), values);
            } else {
                valuesMap.get(key).add(String.valueOf(val));
            }
        }
        System.out.println(valuesMap);
    }
}
