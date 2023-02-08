public class MaquinaCocoColaCompany2 implements IMaquinaDeBebida{//fabrica concreta
    @Override
    public ISuco entregarSuco() {
        return null;
    }

    @Override
    public IRefrigerante entregarRefrigerante() {
        return new CocaColaZero();
    }

    @Override
    public IAgua entregarAgua() {
        return null;
    }
}
