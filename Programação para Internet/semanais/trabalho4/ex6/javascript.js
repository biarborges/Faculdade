window.onload = function (){
    //uma vez carregada a página, executará a função anônima
    document.forms.formCadastro.onsubmit = validaForm;
}//quando clicar em enviar, vai chamar a função validaForm

function validaForm(e){
    let form = e.target; //acesso ao objeto do formulario
    let formValido = true; //coloca a validação inicialmente como true

    const spanUsuario = form.usuario.nextElementSibling;
    //aqui vai pegar o form, dentro dele vai achar o usuario e pegar o proximo irmao q é o span
    const spanSenha = form.senha.nextElementSibling;
    //aqui vai pegar o form, dentro dele vai achar a senha e pegar o proximo irmao q é o span
    const spanEmail = form.email.nextElementSibling;
    //aqui vai pegar o form, dentro dele vai achar o email e pegar o proximo irmao q é o span

    spanUsuario.textContent = "";
    //coloca "" - uma string vazia, no span do usuario
    spanSenha.textContent = "";
    //coloca "" - uma string vazia, no span da senha
    spanEmail.textContent = "";
    //coloca "" - uma string vazia, no span do email

    
    if (form.usuario.value == ""){  //se o campo usuario estiver vazio,
        spanUsuario.textContent = 'O usuário deve ser preenchido'; //coloca a mensagem no span
        formValido = false; // e troca o formValido para false, para que não possa enviar o form
    }

    if (form.senha.value == ""){ //se o campo senha estiver vazio,
        spanSenha.textContent = 'A senha deve ser preenchida'; //coloca a mensagem no span
        formValido = false; // e troca o formValido para false, para que não possa enviar o form
    }

    if (form.email.value == ""){ //se o campo email estiver vazio,
        spanEmail.textContent = 'O e-mail deve ser preenchido'; //coloca a mensagem no span
        formValido = false; // e troca o formValido para false, para que não possa enviar o form
    }

    return formValido;
    //retorna se o formValido é true ou false para ver se o form vai ser enviado ou não
}

