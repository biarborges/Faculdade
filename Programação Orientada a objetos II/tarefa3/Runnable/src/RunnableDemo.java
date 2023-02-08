class RunnableDemo implements Runnable {
    private Thread t;
    private String NomeThread;

    RunnableDemo( String name) {
        NomeThread = name;
        System.out.println("Criando " + NomeThread);
    }

    public void run() {
        System.out.println("Executando " + NomeThread); //running
        try {
            for(int i = 4; i > 0; i--) {
                System.out.println("Thread: " + NomeThread + ", " + i);
                Thread.sleep(50); // a thread dorme por 50 milisegundos
            }
        } catch (InterruptedException e) {
            System.out.println("Thread " + NomeThread + " interrompido");
        }
        System.out.println("Thread " + NomeThread + " finalizando"); //exiting
    }

    public void start () { //a star chama a run (Starts the thread in a separate path of execution, then invokes the run() method on this Thread object.)
        System.out.println("Iniciando " + NomeThread);
        if (t == null) {
            t = new Thread (this, NomeThread);
            t.start ();
        }
    }
}