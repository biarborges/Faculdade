import unidecode
import string
import os

#cria vocabulário do documento
def criarVocabulario(arquivo):
  texto = ""

  f = open(arquivo, "r")
  
  for linha in arquivo:
    texto += f.read() + " " #add o conteúdo numa string gigante
  
  f.close()
  
  texto = texto.lower()
    
  texto = unidecode.unidecode(texto)#tirar acentos
    
  texto = texto.translate(str.maketrans('', '', string.punctuation))#tirar pontuação
    
  lista = texto.split()
    
  lista = list(set(lista))#remove repetidos
    
  lista.sort()

  return lista

#----------------------------------------------------------------

#lê diretório e cria o vocabulário da coleção
def criarVocabularioColecao(diretorio):
  texto = ""
  arquivos = os.listdir(diretorio)

  for arquivo in arquivos:
    f = open(os.path.join(diretorio, arquivo))
    texto += f.read() + " " #add o conteúdo numa string gigante
    f.close()
  
  texto = texto.lower()
    
  texto = unidecode.unidecode(texto)#tirar acentos
    
  texto = texto.translate(str.maketrans('', '', string.punctuation))#tirar pontuação
    
  lista = texto.split()
    
  lista = list(set(lista))#remove repetidos
    
  lista.sort()

  return lista

#------------------------------------------------------------------------

#cria o arquivo com o vocabulário - vocabulario é uma lista
def criarArquivoSaida(vocab):
  saida=open('saida.txt','w')

  
  for x in range(len(vocab)):
    saida.write(vocab[x]+"\n") #escreve no txt e pula linha
  
  saida.close()

#-------------------------------------------------------------

def criarBagOfWords(vocabularioColecao, diretorio):

  arquivos = os.listdir(diretorio)
  vocabColecao = []

  f = open(vocabularioColecao, "r")
  
  for linha in f:
    for palavra in linha.split():
      vocabColecao.append(palavra) #acrescentar na lista para poder comparar lista (vocab da coleção) com lista (vocab do doc)
      
  f.close()

  for arquivo in arquivos:
    bag=[]
    
    f = open(os.path.join(diretorio, arquivo))
    f.read()
    f.close()

    vocabDocumento = criarVocabulario(diretorio+"/"+arquivo)

    for x in range(len(vocabColecao)):
      if(vocabColecao[x] in vocabDocumento):
        bag.append(1)
      else:
        bag.append(0)
    
    print("Bag of Words do arquivo " + arquivo + ":\n")
    print(bag)
    print("\n")


#------------------------------------
#MAIN

vocab=criarVocabularioColecao("textos")

criarArquivoSaida(vocab)

criarBagOfWords("saida.txt","textos")
