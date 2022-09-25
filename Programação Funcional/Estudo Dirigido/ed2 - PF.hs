--Programadora: Beatriz Ribeiro Borges
--Data: 01/10/2021

--Produção de Um Recibo Fiscal em um Supermercado

type Nome = String
type Preco = Int
type CodBar = Int
type BaseDeDados = [(CodBar,Nome,Preco)]
--declaração dos tipos a serem usados no programa

listaDeProdutos :: BaseDeDados
listaDeProdutos = [(1234, "Oleo DoBom, 1l", 195),(4756, "Chocolate Cazzeiro, 250g", 180), (3216, "Arroz DoBom, 5Kg", 213),(5823, "Balas Pedregulho, 1Kg", 379), (4719, "Queijo Mineirim, 1Kg", 449),(6832, "Iogurte Maravilha, 1Kg", 499),(1112, "Rapadura QuebraDente, 1Kg", 80),(1111, "Sal Donorte, 1Kg", 221),(1113, "Cafe DoBom, 1Kg", 285),(1115, "Biscoito Bibi, 1Kg", 80),(3814, "Sorvete QGelo, 1l", 695)]
--criação da base de dados a ser acessada

type ListaDeCodigos = [CodBar]
type Recibo = [(Nome,Preco)]
--declaração dos tipos a serem usados no programa

tamLinha :: Int
tamLinha = 30
--aqui é definida a quantidade de caracteres que terá cada linha

--as próximas duas funções são funções feitas para auxiliar na função formataCentavos
valorInt :: Preco -> Int
valorInt x = x`div`100
--aqui pega o preco - que é um inteiro - e divide por 100 para pegar seu quociente - será os 'reais' do preço 

valorCent :: Preco -> Int
valorCent x = x`rem`100
-- --aqui pega o preco - que é um inteiro - e divide por 100 outra vez, mas usando rem pega-se o resto da equação - será os 'centavos' do preço 

formataCentavos :: Preco -> String
formataCentavos x = show (valorInt x) ++"."++ show (valorCent x)
--show é uma função já do Prelude e é uma maneira de transformar um valor inteiro para String. Outra forma que encontrei foi implementando a biblioteca da tabela ASCII para transformar cada int em char, pegando seu valor correspondente e fazendo a soma dos valores recursivamente. Por motivos de simplificação, escolhi usar show. 
--a função em si, por ser string, que é uma lista de char, concatena a parte 'reais' e a parte 'centavos'.
formataCentavos2 :: Preco -> String 
formataCentavos2 x = show (div x 100) ++ "." ++ show (rem x 100)

--as próximas 3 funções são auxiliares em formataLinha e formataTotal. Elas servem para que eu saiba os tamanhos das Strings que trabalharei.
tamanhoNome :: Nome -> Int
tamanhoNome x = length x
--por nome já ser uma string, para saber seu tamanho uso a função length idicada no ED.

tamanhoPreco :: Preco -> Int
tamanhoPreco x = length (formataCentavos x)
--preco é um inteiro, então primeiro converto o valor usando formataCentavos e então uso a função length.

tamanho (x,y) = tamanhoNome x + tamanhoPreco y
--uma vez que tenho os tamanhos separados, basta somá-los para usar em formataLinha.

formataLinha :: (Nome,Preco) -> String
formataLinha (x,y) = x++replicate (tamLinha-tamanho (x,y))'.'++ formataCentavos y++"\n"
--o formataLinha serve para que cada linha com os nomes e valores do recibo saiam padronizados. Pega o nome (uma string) concatena com os pontinhos, concatena com o preço e pula uma linha.
--os pontinhos servem para que os preços fiquem alinhados, assim, é preciso saber o tamanho do nome e o tamanho do preço - aqui entram as chamadas das funções para os tamanhos. 
--replicate replica o caracter indicado x vezes. Essa quantidade é dada pela minha quantidade de linhas menos os tamanhos do nome e preço.
--antes da concatenação do preço é preciso transformar o preço em uma string, por isso há a chamada da função formataCentavos.

formataLinhas :: [(Nome,Preco)] -> String
formataLinhas []=[]
formataLinhas (x:xs) = formataLinha x ++ formataLinhas xs
-- o formataLinhas serve para fazer o que formataLinha fez, mas sendo uma lista, ou seja, várias linhas. Então chama o formataLinha para a cabeça da lista e usa a recursã para passar por toda ela até que chegue em uma lista vazia, ou seja, até acabar todos os elementos das lista.

geraTotal :: Recibo -> Preco
geraTotal []=0
geraTotal (x:xs) = snd(x)+geraTotal xs
--geraTotal é para somar os valores de um recibo (de uma lista de tuplas com string e inteiro). Para conseguir fazer a soma eu pego a cabeça da lista, ou seja, a primeira tupla e, usando snd, pego o segundo elemento da tupla que é o inteiro que preciso somar. Somo como os próximos elementos que são a cauda da lista. Faço recursão para poder passar por toda a lista, assim, em seguida ele pegará a cauda, dessa cauda a próxima cabeça e assim por diante. A condição de parada é uma lista vazia, pois assim terá percorrido toda a lista e como é uma soma, devolve 0, pois 0 é o número neutra da soma na matemática.  

formataTotal :: Preco -> String
formataTotal x = "Total"++replicate (tamLinha-5-tamanhoPreco x)'.' ++ formataCentavos x++"\n"
--formataTotal serve para alinhar o valor total e deixar padronizado assim como as outras linhas. 
--Concateno a string "total" com os pontinhos e o valor final da soma dos produtos feito na função geraTotal.
--os pontinhos funcionam da mesma forma que na função formataLinha, mas, dessa vez tiro apenas o tamanho do preço do tamanho da linha e diminuo 5, pois são os 5 caracteres de "Total".
--assim como na formataLinha, tenho que converter o preço em string e para isso chamo a formataCentavos.

formataRecibo :: Recibo -> String
formataRecibo (x:xs) = "Supermercado QLegal"++"\n"++formataLinhas (x:xs) ++ formataTotal (geraTotal (x:xs))
--essa é a última função de formatação das linhas do recibo. O que ela faz é juntar o cabeçalho (a string "Supermercado QLegal"), com o corpo (formataLinhas) e o total. 
--para o total, primero tenho q saber o valor total dessa lista, então chamo a função geraTotal e, sabendo o valor, faço a formatação da última linha do recibo com o formataTotal.

--as próximas duas funções foram feitas para serem usadas na função acha. acha é uma função que recebe uma lista de tuplas-3(código, nome, preço), um int e devolve uma tupla-2 com uma string e um int.
primeiro :: (a, b, c) -> a
primeiro (a,_,_) = a
-- acha precisa pegar o int e comparar com o codigo da tupla-3. Se fosse uma tupla-2 poderia usar o fst, o que pensei em fazer foi criar essa função primeiro que separa o primeiro elemento de uma tupla.

cauda :: (a, b, c) -> (b,c)
cauda (_,b,c) = (b,c)
--o resultado de acha é a cauda de cada tupla-3 da lista BaseDeDados, então fiz a função cauda e retorna a os últimos elementos de uma tupla. 
--como em uma lista todos elementos são iguais (nesse caso tuplas), dá certo para usar na função acha 

acha :: BaseDeDados -> CodBar -> (Nome,Preco)
acha [] z = ("item desconhecido",0) 
acha (x:xs) z
 | primeiro (x) == z = cauda x 
 | primeiro (x) /= z = acha xs z
-- Como dito, essa função recebe uma lista de tuplas-3(código, nome, preço), um int e devolve uma tupla-2 com uma string e um int.
--por ser uma lista que precisa ser analisada por inteiro, é preciso fazer uma recursão. Vou analisar a cabeça da lista, a primeira tupla-3 e dela vou tirar o primeiro elemento usando a função primeiro. Se esse primeiro elemento for igual ao meu z, devolvo o nome e preço dessa tupla-3 analisada usando a função cauda. Se eles não forem igual, eu continuo procurando agora na cauda da lista usando a recursão. Se eu chegar no final (uma lista vazia) e não tiver encontrado nenhum código igual à z, é porque esse item é desconhecido, devolve, então a tupla da condição de parada.

achaItem :: CodBar -> (Nome,Preco)
achaItem x = acha listaDeProdutos x
--achaItem recebe um inteiro e devolve uma string e um inteiro em uma tupla-2. Essa função vai receber um código de barras e, se ele existir no base de dados (na listaDeProdutos) retorna seu nome e preço equivalentes. 
--Para fazer essa função uso a função acha que já verifica se o código existe e retorna a tupla desejada.

fazRecibo :: ListaDeCodigos -> Recibo
fazRecibo []=[]
fazRecibo (x:xs) = achaItem x:fazRecibo xs
--fazRecibo recebe uma lista de inteiros (os códigos de barra) e retorna o Recibo (uma lista com os nomes e preços de cada produto do código de barras em questão).
--por ser uma lista que precisa ser inteira analisada, faço recursão, a condição de parada sendo uma lista vazia significando que passei por toda ela. Analiso a cabeça da lista, o primeiro código com a função achaItem, caso o código exista já retorna seu nome e preço, em seguida faço o mesmo com a cauda.

geraRecibo :: ListaDeCodigos -> String
geraRecibo lc = formataRecibo( fazRecibo lc)
--geraRecibo recebe uma lista de inteiros (os códigos de barra) e devolve uma string (o recibo pronto)
--primeiro faz-se uma lista com os nomes e preços dos codigos de barra do input usando o fazRecibo (pois essa função ja analisa se tem o código e ja retorna a lista).
--com essa lista de nomes e preços, chama-se a função formataRecibo para juntar o cabeçalho (a string "Supermercado QLegal"), com o corpo (formataLinhas) e o total, assim tendo um recibo completo com os elementos do input.

main = putStrLn (geraRecibo[1234,3216,4719,1112,1113,3814])
--putStrLn escreve o recibo na tela com toda sua formatação correta, para isso usa a função geraRecibo com a lista de códigos do input. Ao chamar na main, estará o recibo com o cabeçalho mais os nomes, preços e total dos itens selecionados.

--p.s.: nos códigos de barra dado na última parte há uma repetição do 1234 (Oleo DoBom): [1234,3216,4719,1112,1113,3814,1234]. Para não aparecer o nome duas vezes no recibo, pois podemos assumir que nenhum código de barra aparece mais de uma vez, o retirei. Caso eu deixasse, "o dono das compras" levaria um item de graça, pois aparece na lista, mas não é computado seu valor, fica descrepante com o exemplo dado inicialmente. Desse modo, retirado o item 'extra', fica completamente igual ao mostrado na primeira página do ED2: mesmos nomes, preços e total.
