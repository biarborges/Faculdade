import java.util.Scanner;
public class MaquinaCocaColaCompany implements IMaquinaDeBebida{//fabrica concreta


    public IRefrigerante entregarRefrigerante(){
        return new CocaColaNormal();
    }

    @Override
    public ISuco entregarSuco() {
        return new DelValle();
    }

    @Override
    public IAgua entregarAgua() {
        return new AguaCrystal();
    }
}
