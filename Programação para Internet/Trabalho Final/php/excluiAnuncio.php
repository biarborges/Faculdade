<?php
require "conexaoMysql.php";
$pdo = mysqlConnect();

$codAnuncio = $_GET["codAnuncio"] ?? "";
$enderecoDaImagem = $_GET["enderecoDaImagem"] ?? "";

try {

    $pdo->beginTransaction();

  $sql1 = <<<SQL
  DELETE FROM Foto
  WHERE CodAnuncio = ?
  LIMIT 1
  SQL;

  $sql2 = <<<SQL
  DELETE FROM Interesse
  WHERE CodAnuncio = ?
  LIMIT 1
  SQL;

  $sql3 = <<<SQL
  DELETE FROM Anuncio
  WHERE Codigo = ?
  LIMIT 1
  SQL;

  // Neste caso utilize prepared statements para prevenir
  // ataques do tipo SQL Injection, pois a declaração
  // SQL contem um parâmetro (cpf) vindo da URL
  $stmt = $pdo->prepare($sql1);
  $stmt->execute([$codAnuncio]);

  $stmt = $pdo->prepare($sql2);
  $stmt->execute([$codAnuncio]);

  $stmt = $pdo->prepare($sql3);
  $stmt->execute([$codAnuncio]);



    $pdo->commit();

  header("location: ../listagemUsuario.html");
  exit();
} 
catch (Exception $e) {  
    $pdo->rollBack();
  exit('Falha inesperada: ' . $e->getMessage());
}