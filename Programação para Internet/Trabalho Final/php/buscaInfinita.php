<?php

require "./utils.php";
require "./conexaoMysql.php";
require "./modelos.php";

// Por enquanto é basicamente os dados do anúncio, mas depois terá um atributo
// `interesses` que vai significar a quantidade de interesses que esse anúncio
// teve. 
// Ao acessar uma página mais detalhada do anúncio, podemos adicionar mais uma
// api para buscar dados completos dos interesses, como a mensagem e o contato


session_start();
loginNecessario();
try{
    $codAnunciante = $_SESSION["codAnunciante"];

    $sqlAnuncio = <<<SQL
    SELECT *
    FROM Anuncio
    WHERE codAnunciante = "$codAnunciante";
    SQL;

    $pdo = mysqlConnect();

    $resultados = array();
    $stmt = $pdo->query($sqlAnuncio);

    while ($resultado = $stmt->fetch())
    {
        $sqlFoto = <<<SQL
        SELECT NomeArqFoto
        FROM Foto
        WHERE CodAnuncio = {$resultado['Codigo']}
        LIMIT 1
        SQL;

        $stmtFoto = $pdo->query($sqlFoto);
        $foto = $stmtFoto->fetch();

        $anuncio = new AnuncioResponse(
            $resultado['Codigo'],
            $resultado['Titulo'],
            $resultado['Descricao'],
            $resultado['Preco'],
            $resultado['DataHora'],
            $resultado['Cep'],
            $resultado['Bairro'],
            $resultado['Cidade'],
            $resultado['Estado'],
            $resultado['CodAnunciante'],
            $resultado['CodCategoria'],
            $foto['NomeArqFoto']
        );
        array_push($resultados, $anuncio);
    }
    
    header('Content-type: application/json');
    // echo $resultados;
    echo json_encode($resultados);

} catch (Exception $e){
    exit("Ocorreu um erro inesperado " . $e->getMessage());
}
