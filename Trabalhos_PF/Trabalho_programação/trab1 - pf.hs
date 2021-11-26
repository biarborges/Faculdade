--Programadora: Beatriz Ribeiro Borges
--Data: 14/10/2021

type Livro = String
type Nome = String
type BaseDeDados = [(Nome,Livro)]

--"Dom Quixote" = 1
--"Iliada"= 1
--"1984" = 3
--"A Divina Comedia" = 2
--"O Morro dos Ventos Uivantes" = 2
--"O Medico e o Monstro" = 1
--"Hamlet = 1
--"O Homem Invisível" = 1
--"Dracula" = 1
--"O Hobbit" = 1

--Maria = |"Dom Quixote"| + |"Iliada"|
--Joao = |"1984"|
--Mario = |"1984"|
--Roberta = |"A Divina Comedia"| + |"O Morro dos Ventos Uivantes"|
--Robert = |"A Divina Comedia"| + |"O Morro dos Ventos Uivantes"| + |"O Hobbit"|
--Joana = |"Dracula, Bram Stoker"| + |"O Medico e o Monstro"|
--Vilma = |"Hamlet"|
--William = |"O Homem Invisivel"| + |"1984"|
livros :: [Livro]
livros = ["Dom Quixote","Iliada","1984","A Divina Comédia","O Morro dos Ventos Uivantes","O Medico e o Monstro","Hamlet","O Homem Invisivel","Dracula","O Hobbit"]

emprestimos :: BaseDeDados
emprestimos = [("Maria","Dom Quixote"),("Maria","Iliada"),("Joao","1984"),("Mario","1984"),("Roberta","A Divina Comedia"),("Roberta","O Morro dos Ventos Uivantes"),("Robert","A Divina Comedia"),("Robert","O Morro dos Ventos Uivantes"),("Robert","O Hobbit"),("Joana","Dracula"),("Joana","O Medico e o Monstro"),("Vilma","Hamlet"),("William","O Homem Invisivel"),("William","1984")]

-------------------------------------------------------------
--Dada uma pessoa, queremos encontrar o (s) livro (s) que ela pegou emprestado, se houver

--por recursão:
buscaquempegou :: BaseDeDados -> Nome -> [Livro]
buscaquempegou [] z = []
buscaquempegou (x:xs) z
 | fst (x) == z = (snd x):(buscaquempegou xs z)
 | fst (x) /= z = buscaquempegou xs z
--ordem superior:
-- | (fst.head) (x:xs) == z = snd x:(buscaquempegou xs z)
-- | otherwise = buscaquempegou xs z

quempegou :: Nome -> [Livro]
quempegou x = buscaquempegou emprestimos x 
--vou buscar meu x no emprestimos(q é o banco de dados), se tiver, eu passo pra buscaquempegou q retorna o livro


--por compreensão:
buscaquempegou2 :: BaseDeDados -> Nome -> [Livro]
buscaquempegou2 xs z = [snd x|x<-xs,fst x == z]

quempegou2 :: Nome -> [Livro]
quempegou2 x = buscaquempegou2 emprestimos x
------------------------------------------------------------
--Dado um livro, queremos encontrar o (s) tomador (es) do livro, se houver. (É assumido que pode haver mais de uma cópia de qualquer livro.)


--por recursão:
buscaporlivro :: BaseDeDados -> Livro -> [Nome]
buscaporlivro [] z = []
buscaporlivro (x:xs) z 
 | snd (x) == z = ((fst x):(buscaporlivro xs z))
 | snd (x) /= z = buscaporlivro xs z
--ordem superior:
-- | (snd.head) (x:xs) == z = fst x:(buscaporlivro xs z)
-- | otherwise = buscaporlivro xs z
 
buscalivro :: Livro -> [Nome]
buscalivro x = buscaporlivro emprestimos x 


--por compreensão:
buscaporlivro2 :: BaseDeDados -> Livro -> [Nome]
buscaporlivro2 xs z = [fst x | x<-xs, snd x ==z]

buscalivro2 :: Livro -> [Nome]
buscalivro2 x = buscaporlivro2 emprestimos x
------------------------------------------------------------
--Dado um livro, queremos descobrir se ele foi emprestado

--por recursão:
buscalivroemprestado :: BaseDeDados -> Livro -> String
buscalivroemprestado [] z = "nao ha registro"
buscalivroemprestado (x:xs) z
 | snd (x) == z = "foi emprestado"
 | snd (x) /= z = buscalivroemprestado xs z

--ordem superior:
--buscalivroemprestado :: [(String,String)] -> String -> Bool
--buscalivroemprestado xs z = foldr (||) False [snd x==z|x<-xs]

livroemprestado :: Livro -> String
livroemprestado x = buscalivroemprestado emprestimos x

--ou retornando True pra emprestado e False para nao registrado:
buscalivroemprestado2 :: BaseDeDados -> Livro -> Bool
buscalivroemprestado2 [] z = False
buscalivroemprestado2 (x:xs) z
 | snd (x) == z = True
 | snd (x) /= z = buscalivroemprestado2 xs z

{-ordem superior2:
buscalivroemprestado2 :: [(String,String)] -> String -> [Bool]
buscalivroemprestado2 [] z = [False]
buscalivroemprestado2 (x:xs) z
 | (snd.head) (x:xs) == z = [True]
 | (snd.head) (x:xs) /= z = buscalivroemprestado2 xs z
-}

livroemprestado2 :: Livro -> Bool
livroemprestado2 x = buscalivroemprestado2 emprestimos x 
--true se foi emprestado, false se n foi 


--por compreensão:
buscalivroemprestado3 :: BaseDeDados -> Livro -> Bool
buscalivroemprestado3 xs z = foldr (||) False [snd x==z|x<-xs]
--
--foldr (||) vai retornar uma função que retorna o resultado do (||) False com o primeiro item da lista e assim por diante (passando pela condição). Pra no final retornar True ou False.
--vai da esquerda pra direita e depois vai voltando, tipo recursão.
{-
ex.: 1984
Dom Quixote, Iliada, 1984

foldr (||) False [False, False, True]
= False || (foldr (||) False [False, True])
= False || (False || (foldr (||) False [True]))
= False || (False || (True || (foldr (||) False [])))
= False || (False || (True || (False)))
= False || (False || True)
= False || True
= True
-}

livroemprestado3 :: Livro -> Bool
livroemprestado3 x = buscalivroemprestado3 emprestimos x
------------------------------------------------------------
--Dado uma pessoa, podemos querer descobrir o número de livros que foram emprestados a ela

--por recursão:
buscanumlivros :: BaseDeDados -> Nome -> Int 
buscanumlivros [] z = 0
buscanumlivros (x:xs) z 
 | fst (x) == z = 1+(buscanumlivros xs z)
 | fst (x) /= z = buscanumlivros xs z

numlivros :: Nome -> Int
numlivros x = buscanumlivros emprestimos x 


--por compreensão
buscanumlivros2 :: BaseDeDados -> Nome -> Int
buscanumlivros2 xs z = sum [1|x<-xs,fst x == z]
--soma de 1 em 1 na minha lista, se fst x==z

numlivros2 :: Nome -> Int
numlivros2 x = buscanumlivros2 emprestimos x

--ordem superior:
{-
buscanumlivros :: String -> Int
buscanumlivros z = (length.quempegou) z

--ou 
buscanumlivros3 :: String -> Int
buscanumlivros3 z = (length.buscaquempegou emprestimos) z
--aqui é igual à primeira, mas como estou pegando buscaquempegou q tem 2 parametros - o primeiro sendo a base de dados -, ja coloco a base de dados aqui.
-}

