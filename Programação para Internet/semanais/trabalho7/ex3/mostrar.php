<?php

require "../conexaoMysql.php";
$pdo = mysqlConnect();

try{
    $sql = <<<SQL
    SELECT id, email, hash_senha
    FROM usuario
    SQL;

    $stmt = $pdo->query($sql);
}
catch(Exception $e){
    exit("Ocorreu uma falha: " . $e->getMessage());
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
            <table class="table table-striped">
            <tr>
                <th></th>
                <th>Email</th>
                <th>Senha Hash</th>
            </tr>

            <?php
                while($row = $stmt->fetch()){

                    //Prevenção de ataques XSS
                    $id = $row["id"];
                    $email = htmlspecialchars($row["email"]);

                    echo <<<HTML
                        <tr>
                            <td>
                                <a href="excluir.php?id=$id">
                                <img src="../imagens/delete.png"></a>
                            </td>
                            <td>$email</td>
                            <td>{$row["hash_senha"]}</td>
                        </tr>
                    HTML;
                }
            ?>

        </table>
            <a href="index.html" class="link-primary">Retornar ao Menu</a>
    
        </div>
    
    </main>
    
</body>
</html>