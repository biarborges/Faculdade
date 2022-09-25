Link para o repositório do código (Replit.com)
https://replit.com/@TrizRibeiro/ED2-Trabalho-2-Grafos#main.c

Seja um grafo direcionado representando interações entre usuários de uma rede social. 
Os vértices são usuários e as arestas indicam que houve interação na respectiva direção (envio de mensagens, curtida ou comentário em postagem etc), 
incluindo um contador com o número de interações.

Para este cenário faça:

a) Construa o grafo usando lista de adjacencias e funções básicas de inserção para vértices e arestas. 
Os dados devem ser lidos de arquivo texto, conforme exemplo abaixo. O programa deve fornecer uma função de impressão para o grafo.

b) Dado um usuário U, faça uma função para exibir todas as linhas de interação que se iniciaram em U com até D passos de distância (medida em quantidade de arestas). 

c) Faça uma função que retorne uma lista ligada, contendo, para um usuário U, todos os outros que estão diretamente relacionados a ele (distancia 1), 
tendo realizado (ou recebido) pelo menos K interações para (ou de) U. 

d) Faça uma função que retorne os componentes (usuários) fortemente conectados a um usuário U.   

e) Faça uma função para encontrar o caminho de custo mínimo entre dois vértices (usuários U1 e U2).
