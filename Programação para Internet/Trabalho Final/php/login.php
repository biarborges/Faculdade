<?php

require "conexaoMysql.php";
$pdo = mysqlConnect();

session_start();

$email = $_POST["email"] ?? "";
$senha = $_POST["senha"] ?? "";

class RequestResponse
{
  public $success;
  public $detail;

  function __construct($success, $detail)
  {
    $this->success = $success;
    $this->detail = $detail;
  }
}
$codAnunciante;

function checkLogin($pdo, $email, $senha)
{
  $sql = <<<SQL
    SELECT SenhaHash, Codigo
    FROM Anunciante
    WHERE Email = ?
    SQL;


  try {
    // Neste caso utilize prepared statements para prevenir
    // ataques do tipo SQL Injection, pois precisamos
    // inserir dados fornecidos pelo usuário na 
    // consulta SQL (o email do usuário)
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$email]);
    $row = $stmt->fetch();

    if (!$row)
      return false; // nenhum resultado (email não encontrado)

    global $codAnunciante;
    $codAnunciante = $row['Codigo'];

    return password_verify($senha, $row['SenhaHash']);
  } catch (Exception $e) {
    //error_log($e->getMessage(), 3, 'log.php');
    exit('Falha inesperada: ' . $e->getMessage());
  }
}

if (checkLogin($pdo, $email, $senha)) {

  $_SESSION['codAnunciante'] = $codAnunciante;
  $response = new RequestResponse(true, '../listagemUsuario.html');
} else
  $response = new RequestResponse(false, '');

header('Content-type: application/json');
echo json_encode($response);