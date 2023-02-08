public class MaquinaAmbev implements IMaquinaDeBebida{//fabrica concreta


    @Override
    public IRefrigerante entregarRefrigerante() {
        return new Pepsi();
    }

    @Override
    public ISuco entregarSuco() {
        return new DoBem();
    }

    @Override
    public  IAgua entregarAgua(){
        return null;
    }
}
