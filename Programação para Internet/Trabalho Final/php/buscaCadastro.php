<?php

require "./utils.php";
require "conexaoMysql.php";
$pdo = mysqlConnect();

session_start();
loginNecessario();

class CadastroAjax
{
  public $email;
  public $nome;
  public $cpf;
  public $telefone;

  function __construct($email, $nome, $cpf, $telefone)
  {
    $this->email = $email; 
    $this->nome = $nome;
    $this->cpf = $cpf;
    $this->telefone = $telefone;
  }
}

try{

  $codAnunciante = $_SESSION["codAnunciante"];

  $sql = <<<SQL
  SELECT Email, Nome, CPF, Telefone
  FROM Anunciante
  WHERE Codigo='$codAnunciante'
  SQL;

  $stmt = $pdo->query($sql);
  $row = $stmt->fetch();

  $email = $row["Email"];
  $nome = $row["Nome"];
  $cpf = $row["CPF"];
  $telefone = $row["Telefone"];

  if($email == null){
    $dados = new CadastroAjax('', '', '');
  }
  else{
    $dados =  new CadastroAjax($email, $nome, $cpf, $telefone);
  }


}
catch(Exception $e){
  exit("Ocorreu uma falha: " . $e->getMessage());
}

header('Content-type: application/json');  
echo json_encode($dados);