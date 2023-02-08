window.onload = function (){
    //uma vez carregada a página, executará a função anônima
    buttons = document.querySelectorAll("nav button");
    //seleciona todos os botões do nav
    for (let button of buttons){
        button.onclick = () => openTab(button.dataset.tabname);
        //a cada clique chama o opentab e passa como valor o atributo personalisado
        //dataset.tabname é o nome de identificação do botão
    }
    openTab("BSI");
    //deixa como aberto, assim que carregar a página, o texto referente ao BSI
}

function openTab(tabName){
//torna visivel o div daquele nome passado no parametro - o tabname

//tab exibida ficará oculta 
    const lastTabActive = document.querySelector(".tabActive");
    //encontra a seção visivel
    if(lastTabActive !== null)
        lastTabActive.className = "";
        //remove a classe tabActive trocando o nome da classe para um string vazia, assim não pegará o estilo no css do buttonActive


//botão ativo deixará se ser ativo 
    const lastButtonActive = document.querySelector(".buttonActive");
    //encontra o botão ativo
    if (lastButtonActive !==null)
        lastButtonActive.className = "";
        //remove a classe buttonActive e deixa de ser ativo trocando o nome da classe para um string vazia, assim não pegará o estilo no css

    const query1 = ".tabs > section[data-tabname='" + tabName + "']";
    //seleciona a seção e botão que ficará ativo:
    //usa css: seleciona o .tab >div que tem como valor o que foi passado no tabName
    const query2 = "nav button[data-tabname='" + tabName + "']";
    //seleciona a seção e botão que ficará ativo:
    //usa css: seleciona o nav > div que tem como valor o que foi passado no tabName

    document.querySelector(query1).className = "tabActive"; //muda o nome da query1 para tabActive para q o conteudo seja em bloco, ou seja, ficará visivel. O anterior ja mudou para string vazia
    document.querySelector(query2).className = "buttonActive"; //muda o nome da query2 para buttonActive para q mude a formatação do botão, o botão ativo ficará em negrito e azul. O anterior ja mudou para string vazia, tendo a formatação normal de link a ser clicado
}