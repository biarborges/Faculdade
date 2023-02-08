<?php

require "utils.php";
require "conexaoMysql.php";
$pdo = mysqlConnect();

$nome = $_POST["nome"] ?? "";
$cpf = $_POST["cpf"] ?? "";
$email = $_POST["email"] ?? "";
$senha = $_POST["senha"] ?? "";
$telefone = $_POST["telefone"] ?? "";

//calcula um hash de senha seguro para armazenar no BD
$senhaHash = password_hash($senha, PASSWORD_DEFAULT);

try {

    if (verifica_algum_parametro_vazio($nome, $cpf, $email, $senha, $telefone)) {
        throw new Exception('Campo obrigatório não preenchido');
    } else {
        $sql = <<<SQL
        -- Repare que a coluna codigo foi omitida por ser auto_increment
        INSERT INTO Anunciante (Nome, CPF, Email, SenhaHash, 
                            Telefone)
        VALUES (?, ?, ?, ?, ?)
        SQL;

        // Neste caso utilize prepared statements para prevenir
        // ataques do tipo SQL Injection, pois precisamos
        // cadastrar dados fornecidos pelo usuário 
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            $nome, $cpf, $email, $senhaHash,
            $telefone
        ]);

        header("Location: ../login.html");
        exit();
    }
} catch (Exception $e) {
    if ($e->getCode() === 1062)
        exit('Dados duplicados: ' . $e->getMessage());
    else
        exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}
