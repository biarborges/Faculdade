<?php
require "../conexaoMysql.php";
$pdo = mysqlConnect();

$id = $_GET["id"] ?? "";

try {

  $sql = <<<SQL
  DELETE FROM usuario
  WHERE id = ?
  LIMIT 1
  SQL;

  $stmt = $pdo->prepare($sql);
  $stmt->execute([$id]);

  header("location: mostrar.php");
  exit();
} 
catch (Exception $e) {  
  exit('Falha inesperada: ' . $e->getMessage());
}
