<?php

require "utils.php";
require "conexaoMysql.php";
$pdo = mysqlConnect();

session_start();
loginNecessario();

$codAnunciante = $_SESSION["codAnunciante"];

$nome = $_POST["nome"] ?? "";
$cpf = $_POST["cpf"] ?? "";
$telefone = $_POST["telefone"] ?? "";

try {

    if (verifica_algum_parametro_vazio($nome, $cpf, $telefone)) {
        throw new Exception('Campo obrigatório não preenchido');
    } else {
        $sql = <<<SQL
        -- Repare que a coluna codigo foi omitida por ser auto_increment
        UPDATE Anunciante SET Nome=?, CPF=?, Telefone=?
        WHERE Codigo='$codAnunciante';
        SQL;

        // Neste caso utilize prepared statements para prevenir
        // ataques do tipo SQL Injection, pois precisamos
        // cadastrar dados fornecidos pelo usuário 
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            $nome, $cpf, $telefone
        ]);

        header("Location: ../listagemUsuario.html");
        exit();
    }
} catch (Exception $e) {
    if ($e->getCode() === 1062)
        exit('Dados duplicados: ' . $e->getMessage());
    else
        exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}
