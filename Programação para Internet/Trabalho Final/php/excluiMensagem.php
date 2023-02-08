<?php
require "conexaoMysql.php";
$pdo = mysqlConnect();

$codMensagem = $_GET["codMensagem"] ?? "";

try {

  $sql = <<<SQL
  DELETE FROM Interesse
  WHERE Codigo = ?
  LIMIT 1
  SQL;

  // Neste caso utilize prepared statements para prevenir
  // ataques do tipo SQL Injection, pois a declaração
  // SQL contem um parâmetro (cpf) vindo da URL
  $stmt = $pdo->prepare($sql);
  $stmt->execute([$codMensagem]);

  header("location: ../mensagem.php");
  exit();
} 
catch (Exception $e) {  
  exit('Falha inesperada: ' . $e->getMessage());
}