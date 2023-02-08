public class Atendente implements Comissao{

    @Override
    public double calculaComissao(double valor) {
        return valor*0.01;
    }
}
