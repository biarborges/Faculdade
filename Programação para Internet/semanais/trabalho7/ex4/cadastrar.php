<?php
require "../conexaoMysql.php";
$pdo = mysqlConnect();

$nome = $_POST["nome"] ?? "";
$sexo = $_POST["sexo"] ?? "";
$email = $_POST["email"] ?? "";
$telefone = $_POST["telefone"] ?? "";
$cep = $_POST["CEP"] ?? "";
$logradouro = $_POST["logradouro"] ?? "";
$cidade = $_POST["cidade"] ?? "";
$estado = $_POST["estado"] ?? "";

$peso = $_POST["peso"] ?? "";
$altura = $_POST["altura"] ?? "";
$tipo_sangue = $_POST["tipo_sangue"] ?? "";

if(strcmp($sexo, "Feminino") == 0) $sexo = 'F';
else $sexo = 'M';

$sql1 = <<<SQL
  INSERT INTO pessoa(nome, sexo, email, telefone, cep, logradouro, cidade, estado)
  VALUES (?, ?, ?, ?, ?, ?, ?, ?)
  SQL;

$sql2 = <<<SQL
  INSERT INTO paciente(peso, altura, tipo_sangue, id_pessoa)
  VALUES (?, ?, ?, ?)
  SQL;

try{
  //Inicio da transação
  $pdo->beginTransaction();

  //Como vamos cadastrar dados fornecidos pelo usuários
  //usamos prepare statements
  $stmt1 = $pdo->prepare($sql1);
  if (! $stmt1->execute([$nome,  $sexo, $email, $telefone, $cep, $logradouro, $cidade, $estado]))
  throw new Exception('Falha na inserção Pessoa');

  

  $idNovaPessoa = $pdo->lastInsertId();
  $stmt2 = $pdo->prepare($sql2);
  if (! $stmt2->execute([$peso, $altura, $tipo_sangue, $idNovaPessoa]))
  throw new Exception('Falha na inserção Paciente');

  //Se nenhuma excecao foi lancada, efetiva as operacoes
  $pdo->commit();

  header("location: index.html");
  exit(); 
}
catch(Exception $e){
  //Desfaz as operacoes em caso de erro (exceção lançada)
	$pdo->rollBack();
  if ($e->errorInfo[1] === 1062)
    exit('Dados duplicados: ' . $e->getMessage());
  else
    exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}
?>