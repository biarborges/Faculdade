function buscaCadastro() {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "../php/buscaCadastro.php", true);
  
    xhr.onload = function () {
      // verifica o código de status retornado pelo servidor
      if (xhr.status != 200) {
        console.error("Falha inesperada: " + xhr.responseText);
        return;
      }
  
      try {
        // converte a string JSON para objeto JavaScript
        var dados = JSON.parse(xhr.responseText);
      } catch (e) {
        console.error("String JSON inválida: " + xhr.responseText);
        return;
      }
  
      let form = document.querySelector("form");
      form.email.value = dados.email;
      form.nome.value = dados.nome;
      form.cpf.value = dados.cpf;
      form.telefone.value = dados.telefone;
    };
  
    xhr.onerror = function () {
      console.error("Erro de rede - requisição não finalizada");
    };
  
    xhr.send();
  }
  
  window.onload = buscaCadastro;
