window.onload = function (){
    document.forms.formCadastro.onsubmit = validaForm;
}

function validaForm(e){
    let form = e.target; 
    let formValido = true; 

    const spanNome = form.nome.nextElementSibling;
    const spanCPF = form.cpf.nextElementSibling;
    const spanEmail = form.email.nextElementSibling;
    const spanSenha = form.senha.nextElementSibling;
    const spanTel = form.tel.nextElementSibling;
    const spanTermos = form.termos.nextElementSibling.nextElementSibling;

    spanNome.textContent = "";
    spanCPF.textContent = "";
    spanEmail.textContent = "";
    spanSenha.textContent = "";
    spanTel.textContent = "";
    spanTermos.textContent = "";

    if (form.nome.value == ""){ 
        spanNome.textContent = 'O campo deve ser preenchido';
        form.nome.style.border = '0.5px solid #EC6164';
        form.nome.style.boxShadow = '0 0 10px #EC6164';
        formValido = false; 
    }

    if (form.cpf.value == ""){ 
        spanCPF.textContent = 'O campo deve ser preenchido';
        form.cpf.style.border = '0.5px solid #EC6164';
        form.cpf.style.boxShadow = '0 0 10px #EC6164';
        formValido = false; 
    }

  
    if (form.email.value == ""){ 
        spanEmail.textContent = 'O campo deve ser preenchido';
        form.email.style.border = '0.5px solid #EC6164';
        form.email.style.boxShadow = '0 0 10px #EC6164';
        formValido = false;
    }

    if (form.senha.value == ""){ 
        spanSenha.textContent = 'O campo deve ser preenchido';
        form.senha.style.border = '0.5px solid #EC6164';
        form.senha.style.boxShadow = '0 0 10px #EC6164';
        formValido = false; 
    }

    if (form.tel.value == ""){ 
        spanTel.textContent = 'O campo deve ser preenchido';
        form.tel.style.border = '0.5px solid #EC6164';
        form.tel.style.boxShadow = '0 0 10px #EC6164';
        formValido = false; 
    }

    if (!(document.getElementById('termos').checked)){ 
        spanTermos.textContent = 'Você deve aceitar os termos de serviço';
        form.termos.style.outline = '0.5px solid #EC6164';
        form.termos.style.boxShadow = '0 0 8px #EC6164';
        formValido = false; 
    }

    return formValido;
}


