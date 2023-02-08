public class Quiosque { //cliente
    IRefrigerante refri;
    ISuco suco;
    IAgua agua;

    public Quiosque(IMaquinaDeBebida maquinaBebidas) {
        this.refri = maquinaBebidas.entregarRefrigerante();
        this.suco = maquinaBebidas.entregarSuco();
        this.agua = maquinaBebidas.entregarAgua();
    }

    public String pegarRefri(){
        return "Aqui está: "+refri.pegar();
    }

    public String pegarSuco(){
        return "Aqui está: "+suco.pegar();
    }

    public String pegarAgua(){
        return "Aqui está: "+agua.pegar();
    }
}
