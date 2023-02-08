function sendForm(form) {
      
    let xhr = new XMLHttpRequest();
    
    // O formulário será enviado como um objeto FormData
    // A requisição deve utilizar o método POST
    xhr.open("POST", form.getAttribute("action"));
    xhr.responseType = 'json';

    xhr.onload = function () {
      // xhr.response será null caso a resposta não possa ser convertida
      // em objeto JS (por ex. quando a string JSON é inválida)
      if (xhr.status != 200 || xhr.response === null) {
        console.log("A resposta não pode ser obtida ");
        console.log(xhr.status);
        return;
      }

      let loginResponse = xhr.response;
      // utiliza os dados da resposta
      if (loginResponse.success)
        window.location = loginResponse.detail;
      else {
        document.querySelector("#loginFailMsg").style.display = 'block';
        form.senha.value = "";
        form.senha.focus();
      }
    }      

    xhr.onerror = function () {
      console.error("Erro de rede - requisição não finalizada");
    };

    // envia o formulário de login utilizando a interface FormData
    xhr.send(new FormData(form));
  }

  window.onload = function () {
    const form = document.querySelector("#formLogin");
    form.onsubmit = function (e) {
      sendForm(form);
      e.preventDefault(); //mtos objs tem uma ação padrão, o submite tem a ação de enviar de fato. mas como estou enviando com ajax, o prevent impede q seja enviado da forma tradicional depois, enviando só uma vez com ajax
    }
  }