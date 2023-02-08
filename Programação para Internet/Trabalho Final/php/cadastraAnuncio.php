<?php

require "utils.php";
require "conexaoMysql.php";

$pdo = mysqlConnect();

session_start();

$titulo = $_POST["titulo"] ?? "";
$descricao = $_POST["descricao"] ?? "";
$preco = $_POST["preco"] ?? "";
$datahora = date("Y-m-d H:i:s"); // Poderia ser gerado no banco de dados
$cep = $_POST["cep"] ?? "";
$bairro = $_POST["bairro"] ?? "";
$cidade = $_POST["cidade"] ?? "";
$estado = $_POST["estado"] ?? "";
$codCategoria = $_POST["categoria"] ?? "";
// o código do anunciante é pegado da session
$codAnunciante = $_SESSION['codAnunciante'] ?? "";

// Verifica se o usuário está logado
loginNecessario();
try {

    if (verifica_algum_parametro_vazio($titulo, $descricao, $preco, $cep, $bairro, $cidade, $estado, $codCategoria, $codAnunciante)) {
        throw new Exception('Campo obrigatório não preenchido');
    } else {

        $pdo->beginTransaction();

        $sql = <<<SQL
        -- Repare que a coluna codigo foi omitida por ser auto_increment
        INSERT INTO Anuncio (Titulo, Descricao, Preco, DataHora, CEP,
                            Bairro, Cidade, Estado, CodCategoria,
                            CodAnunciante)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        SQL;

        // Neste caso utilize prepared statements para prevenir
        // ataques do tipo SQL Injection, pois precisamos
        // cadastrar dados fornecidos pelo usuário 
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            $titulo,
            $descricao,
            (float) $preco,
            $datahora,
            $cep,
            $bairro,
            $cidade,
            $estado,
            $codCategoria,
            $codAnunciante
        ]);

        $codAnuncio = $pdo->lastInsertId();

        if(count($_FILES["fotos"]["name"])>4 ){
            throw new Exception("Limite de fotos excedido.");
        }
        
        $file_ext = pathinfo($_FILES["fotos"]["name"][0], PATHINFO_EXTENSION);

        if ($file_ext == ""){
            throw new Exception('Coloque ao menos uma imagem.');
        }
        $target_dir = "../fotos/";
        $fotosAnuncio=array();
        for ($i = 0; $i < count($_FILES["fotos"]["name"]); $i++) {
        // Obtém a extensão do arquivo
        $file_ext = pathinfo($_FILES["fotos"]["name"][$i], PATHINFO_EXTENSION);
        // Gera o novo nome do arquivo
        $new_file_name = $codAnunciante . "-" . $codAnuncio . "-" . $i . "-" . date("Y_m_d__H_i_s") . "." . $file_ext;
        // Constrói o caminho completo do arquivo de destino
        $target_file = $target_dir . $new_file_name;
        $fotosAnuncio[]=$target_file;
        // Move o arquivo para o diretório de destino
        move_uploaded_file($_FILES["fotos"]["tmp_name"][$i], $target_file);

        $sql2 = <<<SQL
        INSERT INTO Foto (CodAnuncio, NomeArqFoto)
        VALUES ('$codAnuncio', '$new_file_name')
        SQL;

        $pdo->exec($sql2);
        }        
        
        $pdo->commit();

        $novaPagina = "../anuncios/" . $codAnuncio . ".php";

        $modeloAnuncio = "<!DOCTYPE html>
        <html lang='pt-br'>
        
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <link rel='stylesheet' href='../css/geral.css'>
            <link rel='stylesheet' href='../css/paginaProduto.css'>
            <script src='../js/paginaProduto.js'></script>
            <script src='../js/checkLogin.js'></script>
            <script src='../js/modal.js'></script>
            <script src='../js/carregaFuncoesAnuncio.js'></script>
            <title> $titulo </title>
        </head>
        
        <body>
        
            <header>
                <a href='/index.html'>
                    <img src='../images/logo-no-background.svg' alt='Logo Inside Venda'>
                </a>
            </header>
        
            <main>
                <a href='/login.html' class='linkEntrar'>Entrar</a>
                <h2> $titulo </h2>
                <div id='partes'>
                    <div class='esquerda'>
                        <div class='imagemPrincipal'>
                            <img src='$fotosAnuncio[0]' alt='Imagem 1 do anuncio'>
                            <img src='$fotosAnuncio[1]' alt='Imagem 2 do anuncio'>
                            <img src='$fotosAnuncio[2]' alt='Imagem 3 do anuncio'>
                            <img src='$fotosAnuncio[3]' alt='Imagem 4 do anuncio'>
                        </div>
                        <div class='fotosExtras'>
                            <img src='$fotosAnuncio[0]' alt='Imagem 1 do anuncio'>
                            <img src='$fotosAnuncio[1]' alt='Imagem 2 do anuncio'>
                            <img src='$fotosAnuncio[2]' alt='Imagem 3 do anuncio'>
                            <img src='$fotosAnuncio[3]' alt='Imagem 4 do anuncio'>
                        </div>
        
                    </div>
        
                    <div id='infos'>
                        <p class='preco'>R$ $preco </p>
                        <div id='compra'>
                            <button id='interesse'>Tenho interesse</button>
                        </div>
                        <p> $descricao </p>
        
                        <address>
                            <div>
                                Estado: $estado
                            </div>
                            <div>
                                Cidade: $cidade
                            </div>
                            <div>
                                Bairro: $bairro
                            </div>
                        </address>
        
        
                    </div>
                </div>
            </main>
            <div class='modal'>
                <div class='modalContent'>
                    <form action='../php/tenhoInteresse.php' method='post'>

                        <h3>Deixe uma mensagem para o vendedor </h3>
            
                        <div>
                            <p><label for='contato'>*Contato:</label></p>
                            <input type='text' id='contato' name='contato' required>
                        </div>
            
                        <div>
                            <p><label for='mensagem'>*Mensagem:</label></p>
                            <textarea id='mensagem' name='mensagem' rows='20' cols='60'></textarea>
                        </div>
                        <input type='hidden' name='codAnuncio' value='$codAnuncio'>
                        <button id = 'botaoCancelar' type='button' class='botaoEntrar'>Fechar</button>
                        <button id= 'botaoEnviar' type='submit' class='botaoEntrar'>Enviar Mensagem</button>
            
                    </form>
            </div>
         </div>
        
        </body>
        
        </html>";

        // $html = file_get_contents('../modeloAnuncio.html');
        // $html = '"'.$html.'"';
        // $html = str_replace("'<!DOCTYPE html>","<!DOCTYPE html>", $html);
        // $html = str_replace("</html>'","</html>", $html);
        //$html='produto: $titulo preco: $preco';
        //if(file_put_contents($novaPagina, "produto: $titulo preco: $preco")==false)
        if(file_put_contents($novaPagina, $modeloAnuncio)==false)
            throw new Exception ('Não foi possível criar a página do anúncio.');
        
    }
    header("Location: ../listagemUsuario.html");
    exit();
} catch (Exception $e) {
    $pdo->rollBack();
    if ($e->getCode() === 1062)
        exit('Dados duplicados: ' . $e->getMessage());
    else
        exit('Falha ao cadastrar os dados: ' . $e->getMessage());
}


