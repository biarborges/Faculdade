<?php

require "utils.php";
require "conexaoMysql.php";
$pdo = mysqlConnect();

$contato = $_POST["contato"] ?? "";
$mensagem = $_POST["mensagem"] ?? "";
$datahora = date("Y-m-d H:i:s");
$codAnuncio = $_POST["codAnuncio"] ?? "";

try {

    if (verifica_algum_parametro_vazio($contato, $mensagem)) {
        throw new Exception('Campo obrigatório não preenchido');
    } else {
        $sql = <<<SQL
        -- Repare que a coluna codigo foi omitida por ser auto_increment
        INSERT INTO Interesse (Mensagem, DataHora, Contato, CodAnuncio)
        VALUES (?, ?, ?, ?)
        SQL;

        // Neste caso utilize prepared statements para prevenir
        // ataques do tipo SQL Injection, pois precisamos
        // cadastrar dados fornecidos pelo usuário 
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            $mensagem, $datahora, $contato, $codAnuncio
        ]);

        header('Location: /index.html');
        exit();
    }
} catch (Exception $e) {
    if ($e->getCode() === 1062)
        exit('Dados duplicados: ' . $e->getMessage());
    else
        exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}
