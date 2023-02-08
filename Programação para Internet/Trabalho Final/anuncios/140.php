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
            <title> iPhone XR 128G Branco </title>
        </head>
        
        <body>
        
            <header>
                <a href='/index.html'>
                    <img src='../images/logo-no-background.svg' alt='Logo Inside Venda'>
                </a>
            </header>
        
            <main>
                <a href='/login.html' class='linkEntrar'>Entrar</a>
                <h2> iPhone XR 128G Branco </h2>
                <div id='partes'>
                    <div class='esquerda'>
                        <div class='imagemPrincipal'>
                            <img src='../fotos/3-140-0-2023_01_22__17_25_46.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/3-140-1-2023_01_22__17_25_46.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/3-140-2-2023_01_22__17_25_46.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/3-140-3-2023_01_22__17_25_46.jpg' alt='Imagem 4 do anuncio'>
                        </div>
                        <div class='fotosExtras'>
                            <img src='../fotos/3-140-0-2023_01_22__17_25_46.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/3-140-1-2023_01_22__17_25_46.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/3-140-2-2023_01_22__17_25_46.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/3-140-3-2023_01_22__17_25_46.jpg' alt='Imagem 4 do anuncio'>
                        </div>
        
                    </div>
        
                    <div id='infos'>
                        <p class='preco'>R$ 1900 </p>
                        <div id='compra'>
                            <button id='interesse'>Tenho interesse</button>
                        </div>
                        <p> Vendo IPhone XR 128G, aparelho novo sem nenhuma marca de uso. Acompanha capa, película e cabo. Original Apple, nunca aberto! Bateria 83%. </p>
        
                        <address>
                            <div>
                                Estado: ES
                            </div>
                            <div>
                                Cidade: Serra
                            </div>
                            <div>
                                Bairro: Portal de Jacaraípe
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
                        <input type='hidden' name='codAnuncio' value='140'>
                        <button id = 'botaoCancelar' type='button' class='botaoEntrar'>Fechar</button>
                        <button id= 'botaoEnviar' type='submit' class='botaoEntrar'>Enviar Mensagem</button>
            
                    </form>
            </div>
         </div>
        
        </body>
        
        </html>