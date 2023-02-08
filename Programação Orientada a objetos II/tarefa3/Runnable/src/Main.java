public class Main {
    public static void main(String args[]) {
        RunnableDemo R1 = new RunnableDemo( "t1");
        R1.start();

        RunnableDemo R2 = new RunnableDemo( "t2");
        R2.start();
    }
}
