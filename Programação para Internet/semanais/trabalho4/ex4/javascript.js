window.onload = function () {
    //uma vez carregada a página, executará a função anônima
    const campoInteresse = document.querySelector("#interesse");
    //guarda uma constante que se refere ao id interesse
    campoInteresse.addEventListener("keyup",e =>{
        if(e.key == "Enter")
        //se a tecla pressionada for enter, após escrever seu interesse
            adicionaInteresse(); //terá uma chamada para adicionaInteresse
    });
}

function adicionaInteresse(){
    const campoInteresse = document.querySelector("#interesse");
    //guarda uma constante que se refere ao id interesse
    const listaInteresse = document.querySelector("ol");
    //guarda uma constante que se refere ao elemento ol
    const novoLi = document.createElement("li");
    //cria um novo li
    const novoSpan = document.createElement("span");
    //cria um novo span
    const novoBotao = document.createElement("button");
    //cria um novo botão

    novoSpan.textContent = campoInteresse.value;
    //span recebe o valor digitado
    novoBotao.textContent = '❌';
    //o novo botão recebe com um X

    novoLi.appendChild(novoSpan);
    //é criado um novo elemento span dentro de li
    novoLi.appendChild(novoBotao);
    //é criado um novo botão: X
    listaInteresse.appendChild(novoLi);
    //é criado um novo li dentro do ol

    novoBotao.onclick = function (){
        listaInteresse.removeChild(novoLi);
        //se clicado no X (novo botão), remove o item da lista
    }

    campoInteresse.value = '';
    //limpa o campo de interesse 
}