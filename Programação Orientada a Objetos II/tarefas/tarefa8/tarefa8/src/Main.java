public class Main {
    public static void main(String[] args) {

        System.out.println(MaquinaDeBebidasEarly.getINSTANCIA().PegarAgua());
        System.out.println(MaquinaDeBebidasEarly.getINSTANCIA().PegarRefrigerante());

        System.out.println();

        System.out.println(MaquinaDeBebidasLazy.getINSTANCIA2().PegarRefrigerante2());
        System.out.println(MaquinaDeBebidasLazy.getINSTANCIA2().PegarAgua2());
    }
}
