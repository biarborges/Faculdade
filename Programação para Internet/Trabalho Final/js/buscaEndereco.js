function buscaEndereco(cep) {
  if (cep.length != 9) {
    return;
  }

  let xhr = new XMLHttpRequest();
  xhr.open("GET", "../php/buscaEndereco.php?cep=" + cep, true);

  xhr.onload = function () {
    // verifica o código de status retornado pelo servidor
    if (xhr.status != 200) {
      console.error("Falha inesperada: " + xhr.responseText);
      return;
    }

    try {
      // converte a string JSON para objeto JavaScript
      var endereco = JSON.parse(xhr.responseText);
    } catch (e) {
      console.error("String JSON inválida: " + xhr.responseText);
      return;
    }

    // utiliza os dados retornados para preencher formulário
    let form = document.querySelector("form");
    form.bairro.value = endereco.bairro;
    form.cidade.value = endereco.cidade;
    form.estado.value = endereco.estado;
  };

  xhr.onerror = function () {
    console.error("Erro de rede - requisição não finalizada");
  };

  xhr.send();
}

window.buscaEndereco = buscaEndereco;

// window.onload = function () {
//   const inputCep = document.querySelector("#cep");
//   inputCep.onkeyup = () => buscaEndereco(inputCep.value);
// };
