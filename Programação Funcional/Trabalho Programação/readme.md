Trabalho de programação da disciplina Programação Funcional usando Haskell

Uma biblioteca mantém um registro (uma base de dados) dos livros que empresta aos seus usuários. Cada empréstimo é denotado pelo nome do livro emprestado e pelo nome da pessoa que o pegou emprestado. Você deverá implementar em Haskell um programa que, baseado numa base de empréstimos, apresente as seguintes funcionalidades: • Dada uma pessoa, queremos encontrar o (s) livro (s) que ela pegou emprestado, se houver. • Dado um livro, queremos encontrar o (s) tomador (es) do livro, se houver. (É assumido que pode haver mais de uma cópia de qualquer livro.) • Dado um livro, queremos descobrir se ele foi emprestado; • Dado uma pessoa, podemos querer descobrir o número de livros que foram emprestados a ela OBS: No seu programa deverá existir uma base de dados que permita testar as funcionalidades desejadas; As funcionalidades deverão ser desenvolvidas em duas versões:

a primeira priorizando o uso de recursividade sempre que possível;
a segunda priorizando uso de compreensão de listas sempre que possível.
(há uma versão usando ordem superior em todas as funções)
