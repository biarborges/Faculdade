<?php

require "php/conexaoMysql.php";
require "php/utils.php";
$pdo = mysqlConnect();

session_start();
loginNecessario();

try {
  $codAnunciante = $_SESSION["codAnunciante"];

  $sql = <<<SQL
  SELECT Interesse.Codigo as codMensagem, Interesse.Contato, Interesse.Mensagem, Interesse.CodAnuncio, Anuncio.Titulo, Anuncio.Codigo, Anuncio.CodAnunciante
  FROM Interesse, Anuncio
  WHERE Interesse.CodAnuncio = Anuncio.Codigo AND Anuncio.CodAnunciante = "$codAnunciante";
  SQL;

  // Neste exemplo não é necessário utilizar prepared statements
  // porque não há a possibilidade de injeção de SQL, 
  // pois nenhum parâmetro do usuário é utilizado na query SQL. 
  // Além disso, como há resultados a serem processados, 
  // utilizamos o método query (e não o exec).
  $stmt = $pdo->query($sql);
} 
catch (Exception $e) {
  exit('Ocorreu uma falha: ' . $e->getMessage());
}
?>
<!doctype html>
<html lang="pt-BR">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Mensagens de Interesse</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="css/geral.css">
  <link rel="stylesheet" href="css/restrito.css">
  <link rel="stylesheet" href="css/menu.css">
  <link rel="stylesheet" href="css/mensagem.css">
</head>

<body>

<header>
    <a href="index.html">
        <img src="images/logo-no-background.svg" alt="Logo Inside Venda">
    </a>
</header>

    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="listagemUsuario.html">Seus Anúncios</a>
                <a class="nav-link" href="cadastraAnuncio.html">Cadastrar Anúncio</a>
                <a class="nav-link active" href="mensagem.php">Mensagens de Interesse</a>
                <a class="nav-link" href="meuCadastro.html">Meu Cadastro</a>
                <a class="nav-link" href="php/logout.php">Sair</a>
            </div>
          </div>
        </div>
      </nav>

  <div class="container">
    <table class="table">
      <tr>
        <th></th>
        <th>Título do Anúncio</th>
        <th>Contato</th>
        <th>Mensagem</th>
      </tr>

      <?php
      while ($row = $stmt->fetch()) {

        // Limpa os dados produzidos pelo usuário
        // com possibilidade de ataque XSS
        // antes de inserí-los na página HTML
        $codMensagem = htmlspecialchars($row['codMensagem']);
        $contato = htmlspecialchars($row['Contato']);
        $mensagem = htmlspecialchars($row['Mensagem']);
        $titulo = htmlspecialchars($row['Titulo']);

        echo <<<HTML
          <tr>
          <td>
            <a href="php/excluiMensagem.php?codMensagem=$codMensagem">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
            </svg></a>
          </td>
            <td>$titulo</td> 
            <td>$contato</td>
            <td>$mensagem</td>
          </tr>      
        HTML;
      }
      ?>

    </table>
  </div>

</body>

</html>