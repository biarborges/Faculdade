public class MaquinaDeBebidasEarly { //coca cola company, por exemplo
    private static MaquinaDeBebidasEarly INSTANCIA = new MaquinaDeBebidasEarly();
    private Agua aguacrystal = new AguaCrystal();
    private Refrigerante cocanormal = new CocaNormal();

    private MaquinaDeBebidasEarly(){}

    public static MaquinaDeBebidasEarly getINSTANCIA(){
        return INSTANCIA;
    }

    public String PegarRefrigerante(){
        return cocanormal.Pegar();
    }

    public String PegarAgua(){
        return aguacrystal.Pegar();
    }
}
