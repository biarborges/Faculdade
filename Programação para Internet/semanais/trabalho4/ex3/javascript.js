document.addEventListener('DOMContentLoaded', function(){
    //uma vez carregada a árvore dom fará as seguintes ações:

    const modal  = document.querySelector(".modal");
    //guarda uma constante que se refere a classe modal
    const buttonClose = document.getElementById("buttonCloseModal");
    //guarda uma constante que se refere à id buttonCloseModal, ela indica o botão de fechamento da janela modal

    buttonClose.addEventListener("click",function(){
        //quando clicado no botão de fechamento,
        modal.style.display = 'none';
        //o conteudo do modal muda para nenhum, desaparecendo da tela
    });
     
    const buttonOpen = document.getElementById("buttonOpenModal");
    //guarda uma constante que se refere à id buttonOpenModal, ela indica o botão de abertura da janela modal
    buttonOpen.addEventListener("click",function(){
        //quando clicado no botão de abertura,
        modal.style.display = 'block';
        //o conteudo do modal muda para bloco, aparecendo na tela
    });


});