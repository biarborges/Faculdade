
function paginaProduto()  {
    let images = document.querySelectorAll(".fotosExtras img")

    for (let image of images) {
        image.addEventListener("click", trocaImagem)
    }
    configuraImagemPrincipal(0)
}



function trocaImagem(e) {
    const imgSelecionada = e.target
    const nodes = Array.from(imgSelecionada.parentNode.children)
    const index = nodes.indexOf(imgSelecionada)
    configuraImagemPrincipal(index)
}

function configuraImagemPrincipal(i){
    const imgGrandeAtiva = document.querySelector(".imgGrandeAtiva")
    if(imgGrandeAtiva !== null)
        imgGrandeAtiva.className=""

    const imgPequenaAtiva = document.querySelector(".imgPequenaAtiva")
    if(imgPequenaAtiva !== null)
        imgPequenaAtiva.className=""

    document.querySelectorAll(".imagemPrincipal img")[i].className = "imgGrandeAtiva"
    document.querySelectorAll(".fotosExtras img")[i].className = "imgPequenaAtiva"
}

window.paginaProduto = paginaProduto;
