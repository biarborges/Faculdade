window.modal =  modal;

function modal () { //definição da função modal
    const buttonOpenModal = document.querySelector("#interesse") // procura o primeiro nó na árvore DOM com a id interesse e guarda na variável buttonOpenModal
    const modal = document.querySelector(".modal") // procura o primeiro nó na árvore DOM com a classe modal e guarda na variável modal
    const buttonClose = modal.querySelector("#botaoCancelar") // procura o primeiro nó na árvore DOM (a partir do nó modal) com a id botaoCancelar e guarda na variável buttonClose

    buttonOpenModal.addEventListener("click", () => modal.style.display = 'block') // quando o botão ao qual buttonOpenModal se refere for clicado, muda o atributo css display para block, fazendo com que a modal apareça
    buttonClose.addEventListener("click", () => modal.style.display = 'none') // quando o botão ao qual buttonClose se refere for clicado, retorna o atributo css display para none, fazendo com que a modal desapareça
}