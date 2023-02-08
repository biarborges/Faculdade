public class MaquinaDeSuco extends MaquinaDeBebidas{
//creator concrete

    @Override
    public Bebida entregarBebida() {
        return new Suco();
    }


}
