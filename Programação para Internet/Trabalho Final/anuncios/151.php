<!DOCTYPE html>
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
            <title> Xbox series S 512 GB SSD </title>
        </head>
        
        <body>
        
            <header>
                <a href='/index.html'>
                    <img src='../images/logo-no-background.svg' alt='Logo Inside Venda'>
                </a>
            </header>
        
            <main>
                <a href='/login.html' class='linkEntrar'>Entrar</a>
                <h2> Xbox series S 512 GB SSD </h2>
                <div id='partes'>
                    <div class='esquerda'>
                        <div class='imagemPrincipal'>
                            <img src='../fotos/9-151-0-2023_01_22__18_59_07.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/9-151-1-2023_01_22__18_59_07.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/9-151-2-2023_01_22__18_59_07.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/9-151-3-2023_01_22__18_59_07.jpg' alt='Imagem 4 do anuncio'>
                        </div>
                        <div class='fotosExtras'>
                            <img src='../fotos/9-151-0-2023_01_22__18_59_07.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/9-151-1-2023_01_22__18_59_07.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/9-151-2-2023_01_22__18_59_07.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/9-151-3-2023_01_22__18_59_07.jpg' alt='Imagem 4 do anuncio'>
                        </div>
        
                    </div>
        
                    <div id='infos'>
                        <p class='preco'>R$ 2000 </p>
                        <div id='compra'>
                            <button id='interesse'>Tenho interesse</button>
                        </div>
                        <p> Xbox series S 512 GB SSD
Película de proteção customizada "punisher"
1 controle xbox series S verde Lima
2 baterias ?
Suporte para carregamento de até 2 controles
Sem marcas de Uso ( COMPLETASSO) </p>
        
                        <address>
                            <div>
                                Estado: SE
                            </div>
                            <div>
                                Cidade: Aracaju
                            </div>
                            <div>
                                Bairro: Getúlio Vargas
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
                        <input type='hidden' name='codAnuncio' value='151'>
                        <button id = 'botaoCancelar' type='button' class='botaoEntrar'>Fechar</button>
                        <button id= 'botaoEnviar' type='submit' class='botaoEntrar'>Enviar Mensagem</button>
            
                    </form>
            </div>
         </div>
        
        </body>
        
        </html>