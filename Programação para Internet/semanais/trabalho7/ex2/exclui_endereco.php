<?php
require "../conexaoMysql.php";
$pdo = mysqlConnect();

$id = $_GET["id"] ?? "";

try {

  $sql = <<<SQL
  DELETE FROM endereco
  WHERE id = ?
  LIMIT 1
  SQL;

  $stmt = $pdo->prepare($sql);
  $stmt->execute([$id]);

  header("location: mostra_endereco.php");
  exit();
} 
catch (Exception $e) {  
  exit('Falha inesperada: ' . $e->getMessage());
}