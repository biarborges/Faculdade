public class PrimosThread implements Runnable{
    private int min;
    private int max;
    private Thread t;

    public PrimosThread(int x, int y){
        min = x;
        max = y;
    }
    public boolean primos(int x){
        for(int i=2; i<=x/2; i++){

            if(x % i == 0){
                return false;
            }
        }
        return true;
    }

    public void run(){
        for(int i=min; i<=max;i++){
            if(primos(i)){
                System.out.println(i);
            }
        }
    }

    public void start () {
        if (t == null) {
            t = new Thread (this);
            t.start ();

        }
    }
}
