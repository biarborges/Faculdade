<?php

require "../conexaoMysql.php";
$pdo = mysqlConnect();

$email = $_POST["email"] ?? "";
$senha = $_POST["senha"] ?? "";

$hashsenha = password_hash($senha, PASSWORD_DEFAULT);

try {

  $sql = <<<SQL
  INSERT INTO usuario (email, hash_senha)
  VALUES (?, ?)
  SQL;

  $stmt = $pdo->prepare($sql);
  $stmt->execute([
    $email, $hashsenha
  ]);

  

} 
catch (Exception $e) {  
  //error_log($e->getMessage(), 3, 'log.php');
  if ($e->errorInfo[1] === 1062)
    exit('Dados duplicados: ' . $e->getMessage());
  else
    exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Exercício 3</title>
</head>
<body>
    <main>
         
        <div class="container">
                
                <?php
                    echo <<<HTML
                        <div class="text-center mt-4">
                            <h2>Confirmação de Cadastro</h2>
                            <p>Olá! Seu email: $email e sua senha foram cadastrados com sucesso!</p>
                        </div>
                    HTML;
                ?>
                 <a href="index.html" class="link-primary">Retornar ao Menu</a>
        </div>
    
    </main>
    
</body>
</html>