#2) Fazer um programa (ou ajustes no seu programa anterior) que recebe como entrada o arquivo de vocabulário e um arquivo de texto representando um documento. O programa deve devolver como saída a representação "bag of words" (presença/ausência de termos) de tal arquivo texto.

import unidecode
import string

#igual ao exercício 1
def criarVocabulario(entrada):
  vocab=[]
  arq=open(entrada, "r")
  
  for linha in arq:
    for palavra in linha.split():
      p=palavra.lower() #minusculo
      p2=unidecode.unidecode(p) #tirar acentos
      p2=p2.translate(str.maketrans('','',string.punctuation)) #tirar pontuação
      vocab.append(p2) #acrescentar na lista
  
  arq.close()
  
  vocab.sort()
  
  vocabset=set(vocab) #transforma em set para não ter repetido
  vocab=list(vocabset) #transforma de volta em lista para ordenar alfabeticamente
  vocab.sort()
  
  return vocab #retorna a lista com o vocabulário


#------------------------------------------------------------------

#recebe um doc já com o vocabulario e outro documento sem tratar
def criarBagOfWords(vocabulario, documento):

  vocablista=[] #vai servir pra colocar o vocabulario dado em uma lista, vai ajudar na comparação depois
  bow=[] #vai ser a saida da bag of words

  vocabdoc=criarVocabulario(documento) #cria o vocabulario do documento novo e coloca numa lista
  
  vocab=open(vocabulario,'r')

  #coloca o vocabulario dado em uma lista
  for linha in vocab:
    for palavra in linha.split():
      vocablista.append(palavra) #acrescentar na lista
  
  vocab.close()

#escreve no console a saida da bag of words
  for i in vocablista:
    if(i in vocabdoc):
      bow.append(1)
    else:
      bow.append(0)

  print(bow)

  
  #esceve em um arquivo a saida da bag of words
  #saida=open('saida.txt','w')
  
  #saida.write(str(bow))
  
  #saida.close()


#---------------------------------------------------------------------
#MAIN

#basta chamar a função e passar primeiro o vocabulario e depois o documento bruto
criarBagOfWords("vocabulario.txt","frankenstein.txt")

  
