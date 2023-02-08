public class Vendendor implements Comissao{

    @Override
    public double calculaComissao(double valor) {
        return valor*0.02;
    }
}
