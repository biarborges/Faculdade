function checkLogin() {

    let xhr = new XMLHttpRequest();
    xhr.open("GET", "../php/checkLogin.php", true);
  
    xhr.onload = function () {
      // verifica o código de status retornado pelo servidor
      if (xhr.status != 200) {
        console.error("Falha inesperada: " + xhr.responseText);
        return;
      }
  
      try {
        // converte a string JSON para objeto JavaScript
        var check = JSON.parse(xhr.responseText);

        if(check){
            
            const linkEntrar = document.querySelector(".linkEntrar");
            linkEntrar.textContent = "Seus Anúncios";
            linkEntrar.href = "/listagemUsuario.html";             
        }

      } catch (e) {
        console.error("String JSON inválida: " + xhr.responseText);
        return;
      }
    };
  
    xhr.onerror = function () {
      console.error("Erro de rede - requisição não finalizada");
    };
  
    xhr.send();
  }
  
  window.checkLogin = checkLogin;
