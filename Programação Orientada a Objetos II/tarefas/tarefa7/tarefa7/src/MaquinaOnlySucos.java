public class MaquinaOnlySucos implements IMaquinaDeBebida{//fabrica concreta
    @Override
    public ISuco entregarSuco() {
        return new SucoLaranja();
    }

    @Override
    public IRefrigerante entregarRefrigerante() {
        return null;
    }

    @Override
    public IAgua entregarAgua() {
        return null;
    }
}
