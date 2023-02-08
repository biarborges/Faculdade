public class MaquinaDeBebidasLazy { //ambev company, por exemplo
    private static MaquinaDeBebidasLazy INSTANCIA2 = null;
    private Agua aguadobem = null;
    private Refrigerante pepsi = null;

    private MaquinaDeBebidasLazy(){}

    public static MaquinaDeBebidasLazy getINSTANCIA2(){
        if(INSTANCIA2==null){
            INSTANCIA2 =  new MaquinaDeBebidasLazy();
        }
        return INSTANCIA2;
    }

    public String PegarRefrigerante2(){
        if(pepsi==null){
            pepsi =  new Pepsi();
        }
        return pepsi.Pegar();
    }

    public String PegarAgua2(){
        if(aguadobem==null){
            aguadobem =  new AguaDoBem();
        }
        return aguadobem.Pegar();
    }
}
