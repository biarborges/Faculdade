import com.sun.jdi.Value;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa("Maria","Rua10");
        Pessoa p2 = new Pessoa("Joao","Rua20");

        Map<String,Pessoa> armazena = new HashMap<>();
        armazena.put("aqa1234",p1);
        armazena.put("sdf4567",p2);

        armazena.forEach((key, value) -> {
            System.out.println("Placa: " + key + " Nome: " + value.nome + "Endereço: " + value.endereco);
        });
    }

}
