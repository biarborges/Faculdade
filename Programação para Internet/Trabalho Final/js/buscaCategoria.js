function buscaCategoria(select) {
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "../php/buscaCategoria.php", true);

  xhr.onload = function () {
    // verifica o código de status retornado pelo servidor
    if (xhr.status != 200) {
      console.error("Falha inesperada: " + xhr.responseText);
      return;
    }

    try {
      // converte a string JSON para objeto JavaScript
      var categoriaVar = JSON.parse(xhr.responseText);
    } catch (e) {
      console.error("String JSON inválida: " + xhr.responseText);
      return;
    }

    // Adiciona as options no select
    categoriaVar.forEach((categoria) => {
      const option = document.createElement("option");
      option.value = categoria.codigo;
      option.innerHTML = categoria.nome;
      select.appendChild(option);
    });
  };

  xhr.onerror = function () {
    console.error("Erro de rede - requisição não finalizada");
  };

  xhr.send();
}

window.buscaCategoria = buscaCategoria;

// window.onload = function () {
//   const inputCategoria = document.querySelector("#categoria");
//   buscaCategoria(inputCategoria);
//   /*forEach(item => {
//       let opcao = inputCategoria.createElement("option");
//       option.value = item.codigo;
//       option.text = item.nome;
//       select.appendChild(opcao);
//     });*/
// }
