<?php

require "./consultarAnunciosDB.php";

$text = $_GET["busca"];
$pagina = $_GET["page"] ?? 1;
$ehComDescricao = $_GET["ehDescricao"] ?? true;
$ehComTitulo = $_GET["ehTitulo"] ?? true;
$valorMinimo = $_GET["valorMinimo"] ?? 0.0;
$valorMaximo = $_GET["valorMaximo"] ?? 0.0;

$palavras = explode(" ", $text);

if (count($palavras) == 0) {
    $consulta = consultarAnunciosSemFiltrosEComPagina($pagina);
    echo json_encode($consulta);
} else {
    $termos_da_pesquisa = array_slice($palavras, 0, 5);
    $consulta = consultarAnunciosComFiltrosEComPagina(
        $termos_da_pesquisa,
        $pagina,
        $ehComTitulo,
        $ehComDescricao,
        $valorMinimo,
        $valorMaximo
    );
    echo json_encode($consulta);
}