window.onload = function () {
  const inputCategoria = document.querySelector("#categoria");
  window.buscaCategoria(inputCategoria);

  const inputCep = document.querySelector("#cep");
  inputCep.onkeyup = () => window.buscaEndereco(inputCep.value);
};
