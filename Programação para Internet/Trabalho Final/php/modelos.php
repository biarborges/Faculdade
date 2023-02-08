<?php
// Esse arquivo cuida dos "modelos" da aplicação. Teoricamente seriam tudo o que
// é um objeto de fato que está no banco de dados, mas usaremos somente para 
// facilitar algumas respostas
class AnuncioResponse
{
    public $codigo;
    public $titulo;
    public $descricao;
    public $preco;
    public $datahora;
    public $cep;
    public $bairro;
    public $cidade;
    public $estado;
    public $codAnunciante;
    public $codCategoria;
    public $nomeArquivoPrimeiraFoto;

    function __construct(
        $codigo,
        $titulo,
        $descricao,
        $preco,
        $datahora,
        $cep,
        $bairro,
        $cidade,
        $estado,
        $codAnunciante,
        $codCategoria,
        $nomeArquivoPrimeiraFoto
    )
    {
        $this->codigo = $codigo;
        $this->titulo = $titulo;
        $this->descricao = $descricao;
        $this->preco = $preco;
        $this->datahora = $datahora;
        $this->cep = $cep;
        $this->bairro = $bairro;
        $this->cidade = $cidade;
        $this->estado = $estado;
        $this->codAnunciante = $codAnunciante;
        $this->codCategoria = $codCategoria;
        $this->nomeArquivoPrimeiraFoto = $nomeArquivoPrimeiraFoto;
    }

}