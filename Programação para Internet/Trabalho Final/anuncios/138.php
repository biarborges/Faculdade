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
            <title> Corolla XRS 2.0 Multi-Drive S Flex Automático - 2019 </title>
        </head>
        
        <body>
        
            <header>
                <a href='/index.html'>
                    <img src='../images/logo-no-background.svg' alt='Logo Inside Venda'>
                </a>
            </header>
        
            <main>
                <a href='/login.html' class='linkEntrar'>Entrar</a>
                <h2> Corolla XRS 2.0 Multi-Drive S Flex Automático - 2019 </h2>
                <div id='partes'>
                    <div class='esquerda'>
                        <div class='imagemPrincipal'>
                            <img src='../fotos/3-138-0-2023_01_22__17_17_14.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/3-138-1-2023_01_22__17_17_14.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/3-138-2-2023_01_22__17_17_14.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/3-138-3-2023_01_22__17_17_14.jpg' alt='Imagem 4 do anuncio'>
                        </div>
                        <div class='fotosExtras'>
                            <img src='../fotos/3-138-0-2023_01_22__17_17_14.jpg' alt='Imagem 1 do anuncio'>
                            <img src='../fotos/3-138-1-2023_01_22__17_17_14.jpg' alt='Imagem 2 do anuncio'>
                            <img src='../fotos/3-138-2-2023_01_22__17_17_14.jpg' alt='Imagem 3 do anuncio'>
                            <img src='../fotos/3-138-3-2023_01_22__17_17_14.jpg' alt='Imagem 4 do anuncio'>
                        </div>
        
                    </div>
        
                    <div id='infos'>
                        <p class='preco'>R$ 118000 </p>
                        <div id='compra'>
                            <button id='interesse'>Tenho interesse</button>
                        </div>
                        <p> Corolla XRS
2018/2019
2.0 16V
Automático
Flex
62.069 Km
Completo, Possui Câmbio CVT com modo manual
Potência de 154 cv no Álcool, e 143 cv na Gasolina.

Opcionais:
Segurança: airbag motorista, alarme, freios ABS, airbag passageiro, airbag lateral, distribuição eletrônica de frenagem;
Conforto: ar-condicionado, travas elétricas, ar-quente, piloto automático, volante com regulagem de altura;
Som: cd player com MP3, entrada USB, rádio FM/AM, Kit Multimídia;
Bancos: bancos de couro, na cor preta;
Janelas: vidros elétricos dianteiros, vidros elétricos traseiros, desemb. traseiro;
Outros: computador de bordo, sensor de farol, farol de neblina, rodas de liga-leve;
Consumo: Cidade: 7,2 no Álcool, e 10,6 na Gasolina;
Estrada: 8,8 no Álcool, e 12,6 na Gasolina. </p>
        
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
                        <input type='hidden' name='codAnuncio' value='138'>
                        <button id = 'botaoCancelar' type='button' class='botaoEntrar'>Fechar</button>
                        <button id= 'botaoEnviar' type='submit' class='botaoEntrar'>Enviar Mensagem</button>
            
                    </form>
            </div>
         </div>
        
        </body>
        
        </html>