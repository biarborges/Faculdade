<?php

require "conexaoMysql.php";
$pdo = mysqlConnect();

class EnderecoAjax
{
  public $bairro;
  public $cidade;
  public $estado;

  function __construct($bairro, $cidade, $estado)
  {
    $this->bairro = $bairro; 
    $this->cidade = $cidade;
    $this->estado = $estado;
  }
}
$cep = $_GET['cep'] ?? '';

try{
  $sql = <<<SQL
  SELECT *
  FROM Endereco
  WHERE cep = ?
  SQL;

  $stmt = $pdo->prepare($sql);
  $stmt->execute([$cep]);
  $row = $stmt->fetch();

  $bairro = $row["Bairro"];
  $cidade = $row["Cidade"];
  $estado = $row["Estado"];

  if($bairro == null){
    $endereco = new EnderecoAjax('', '', '');
  }
  else{
    $endereco =  new EnderecoAjax($bairro, $cidade, $estado);
  }

}
catch(Exception $e){
  exit("Ocorreu uma falha: " . $e->getMessage());
}

header('Content-type: application/json');  
echo json_encode($endereco);