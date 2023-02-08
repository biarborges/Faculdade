<?php

require "../conexaoMysql.php";
$pdo = mysqlConnect();

try{
    $sql = <<<SQL
    SELECT id, cep, logradouro, bairro, cidade, estado
    FROM endereco
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Endereços Cadastrados</title>
</head>
<body>
<div class="container">
        <table class="table table-striped">
            <tr>
                <th></th>
                <th>CEP</th>
                <th>Logradouro</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>Estado</th>
            </tr>

            <?php
                while($row = $stmt->fetch()){
                    $id = $row["id"];
                    $cep = htmlspecialchars($row["cep"]);
                    $logradouro = htmlspecialchars($row["logradouro"]);
                    $bairro = htmlspecialchars($row["bairro"]);
                    $cidade = htmlspecialchars($row["cidade"]);
                    $estado = htmlspecialchars($row["estado"]);

                    echo <<<HTML
                        <tr>
                            <td>
                                <a href="exclui_endereco.php?id=$id">
                                <img src="../imagens/delete.png"></a>
                            </td>
                            <td>$cep</td>
                            <td>$logradouro</td>
                            <td>$bairro</td>
                            <td>$cidade</td>
                            <td>$estado</td>
                        </tr>
                    HTML;
                }
            ?>

        </table>
        <a href="index.html">Voltar para Cadastro</a>
    </div>

    
</body>
</html>