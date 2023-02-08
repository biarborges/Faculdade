<?php

require "../conexaoMysql.php";
$pdo = mysqlConnect();

try{
    $sql = <<<SQL
    SELECT pessoa.nome, pessoa.email, paciente.peso, paciente.altura, paciente.tipo_sangue, paciente.id_pessoa
    FROM paciente
    INNER JOIN pessoa on paciente.id_pessoa = pessoa.id;
    SQL;

    $stmt = $pdo->query($sql);
}
catch(Exception $e){
    exit("Ocorreu uma falha: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Exercício 4</title>
</head>

<body>
    

    <div class="container">

        <table class="table table-striped">
            <tr>
                <th></th>
                <th>Nome</th>
                <th>Email</th>
                <th>Peso</th>
                <th>Altura</th>
                <th>Tipo Sanguíneo</th>
            </tr>

            <?php
                while($row = $stmt->fetch()){
                    $id_pessoa = $row["id_pessoa"];
                    $nome = htmlspecialchars($row["nome"]);
                    $email = htmlspecialchars($row["email"]);
                    $peso = htmlspecialchars($row["peso"]);
                    $altura = htmlspecialchars($row["altura"]);
                    $tipo_sangue = htmlspecialchars($row["tipo_sangue"]);

                    echo <<<HTML
                        <tr>
                            <td>
                                <a href="excluir.php?id_pessoa=$id_pessoa">
                                <img src="../imagens/delete.png"></a>
                            </td>
                            <td>$nome</td>
                            <td>$email</td>
                            <td>$peso</td>
                            <td>$altura</td>
                            <td>$tipo_sangue</td>
                        </tr>
                    HTML;
                }
            ?>

        </table>
        <a href="index.html" class="link-primary">Retornar ao Menu</a>
    </div>
</body>

</html>