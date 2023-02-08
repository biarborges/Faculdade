window.buscaAvancada =  buscaAvancada

function buscaAvancada () {
    const buttonBuscaAvancada = document.querySelector("#botaoBuscaAvancada")
    const divBuscaAvancada = document.querySelector(".buscaAvancada")
    
    buttonBuscaAvancada.addEventListener("click", () => divBuscaAvancada.style.display = 'block')
}