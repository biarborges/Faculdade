public class MaquinaDeCafe extends MaquinaDeBebidas{
    @Override
    public Bebida entregarBebida() {
        return new Cafe();
    }
}
