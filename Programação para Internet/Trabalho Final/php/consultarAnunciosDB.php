<?php

require 'conexaoMysql.php';
require 'modelos.php';
require 'utils.php';

// $pagina é um parâmetro do tipo inteiro maior ou igual a 1
function consultarAnunciosSemFiltrosEComPagina($pagina)
{
    $offset = calcular_offset($pagina);

    $sql = construirQueryAnuncioBase();
    $sql = adicionarLimitEOffsetNaQuery($sql, 6, $offset);

    $pdo = mysqlconnect();
    $stmt = $pdo->query($sql);

    $resultados = adicionarFotNaConsulta($pdo, $stmt);

    return $resultados;
}


function consultarAnunciosComFiltrosEComPagina($termos, $pagina, $ehComTitulo, $ehComDescricao, $valorMinimo, $valorMaximo)
{
    $sql = construirQueryAnuncioBase();

    $sql .= "(";

    foreach ($termos as $_) {
        if ($ehComTitulo)
            $sql = adicionarUmFiltroDeTitulo($sql);
        if ($ehComDescricao)
            $sql = adicionarUmFiltroDeDescricao($sql);
    }

    // para remover o último OR da consulta e não bugar
    $sql = rtrim($sql, " OR ");

    $sql .= ")";

    if ($valorMaximo != 0)
        $sql = adicionarFiltroDeValor($sql);

    $offset = calcular_offset($pagina);
    $sql = adicionarLimitEOffsetNaQuery($sql, 6, $offset);

    $pdo = mysqlconnect();

    $stmt = $pdo->prepare($sql);

    $params = constuirArrayDeParametrosDaQuery($termos, $ehComDescricao, $ehComTitulo);

    if ($valorMaximo != 0)
        $params = adicionarValoresDeLimiteNosParametros($params, $valorMinimo, $valorMaximo);

    $stmt->execute($params);

    $resultados = adicionarFotNaConsulta($pdo, $stmt);

    return $resultados;
}


function construirQueryAnuncioBase()
{
    return <<<SQL
    SELECT *
    FROM Anuncio
    WHERE 
    SQL;
}


function adicionarUmFiltroDeTitulo($sql)
{
    return $sql . "Titulo LIKE ? OR ";
}

function adicionarUmFiltroDeDescricao($sql)
{
    return $sql . "Descricao LIKE ? OR ";
}

function adicionarFiltroDeValor($sql)
{
    return $sql . " AND Preco BETWEEN ? AND ?";

}

function adicionarLimitEOffsetNaQuery($query, $limit, $offset)
{
    return $query . " LIMIT $limit OFFSET $offset";
}


function adicionarFotNaConsulta($pdo, $stmt)
{
    $resultados = array();
    while ($resultado = $stmt->fetch()) {
        $sqlFoto = "SELECT NomeArqFoto FROM Foto WHERE CodAnuncio = {$resultado['Codigo']} LIMIT 1";
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

    return $resultados;
}


function constuirArrayDeParametrosDaQuery($termos, $ehComDescricao, $ehComTitulo)
{
    $params = array();
    foreach ($termos as $termo) {
        $termo = "%" . $termo . "%";
        if ($ehComDescricao)
            array_push($params, $termo);
        if ($ehComTitulo)
            array_push($params, $termo);
    }
    return $params;
}


function adicionarValoresDeLimiteNosParametros($params, $valorMinimo, $valorMaximo)
{
    array_push($params, $valorMinimo);
    array_push($params, $valorMaximo);
    return $params;
}