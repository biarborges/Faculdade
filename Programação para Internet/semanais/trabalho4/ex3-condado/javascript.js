document.addEventListener('DOMContentLoaded', function(){
    //uma vez carregada a árvore dom fará as seguintes ações:

    const modal  = document.querySelector(".modal");
    //guarda uma constante que se refere a classe modal
    const buttonClose = document.getElementById("buttonCloseModal");
    //guarda uma constante que se refere à id buttonCloseModal, ela indica o botão de fechamento da janela modal

    buttonClose.addEventListener("click",function(){
        modal.style.display = 'none';
    });
    //quando clicado no botão de fechamento, o conteudo do modal muda para nenhum, desaparecendo da tela

    const buttonOpen = document.getElementById("buttonOpenModal");
    //guarda uma constante que se refere à id buttonOpenModal, ela indica o botão de abertura da janela modal
    buttonOpen.addEventListener("click",function(){
        modal.style.display = 'block';
    });
    //quando clicado no botão de abertura, o conteudo do modal muda para bloco, aparecendo na tela


});