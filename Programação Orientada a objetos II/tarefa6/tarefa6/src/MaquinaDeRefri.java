public class MaquinaDeRefri extends MaquinaDeBebidas{
//creator concrete

    @Override
    public Bebida entregarBebida() {
        return new Refrigerante();
    }

}
