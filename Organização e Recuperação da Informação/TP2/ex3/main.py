import unidecode
import string
import os
import math
import datetime



#coloca todas as palavras do doc em uma lista
def listarDocumento(documento):
  docLista = []

  f = open(documento, "r")
    
  for linha in f:
    for palavra in linha.split():
      docLista.append(palavra) #acrescentar na lista para poder comparar lista (vocab da coleção) com a outra lista (vocab do doc)
        
  f.close()

  return docLista

#--------------------------------------------------------------------

#def listarDiretorio():

def normalizarTexto(arquivo):
  texto = ""

  f = open(arquivo, "r")
  
  for linha in arquivo:
    texto += f.read() + " " #add o conteúdo numa string gigante
  
  f.close()
  
  texto = texto.lower()
    
  texto = unidecode.unidecode(texto)#tirar acentos
    
  texto = texto.translate(str.maketrans('', '', string.punctuation))#tirar pontuação
    
  lista = texto.split()

  return lista

#-----------------------------------------------------------

def contarFrequencia(vocabularioColecao,arquivo):
  
  vocabColecao = listarDocumento(vocabularioColecao)
  
  #garante que o vocabulario dado está normalizado
  vocabColecao = normalizarTexto(vocabularioColecao)



  freq = 0
  freq_lista=[]
    
  f = open(arquivo,"r")
  f.read()
  f.close()

  doc_lista = normalizarTexto(arquivo)

    #conta a frequencia na ordem do vocabulario da coleção
  for x in range(len(vocabColecao)):
    freq = doc_lista.count(vocabColecao[x])
    if(freq != 0):
      freq_lista.append(freq)
    else:
      freq_lista.append(0)

    
  return freq_lista

#----------------------------------------------------------------

def calcularTF(vocabularioColecao,arquivo):

  tf=[]

  listaColecao = listarDocumento(vocabularioColecao)

    
  f = open(arquivo,"r")
  f.read()
  f.close()

  listaFrequencia = contarFrequencia(vocabularioColecao,arquivo)

  for x in range(len(listaColecao)):
    if(listaFrequencia[x] != 0):
      tf.append(1+(math.log(listaFrequencia[x],2)))
    else:
      tf.append(0)


  return tf
  

#----------------------------------------------------------------

def calcularIDF(vocabularioColecao,diretorio):

  idf = []
  #Conta quantos arquivos tem no diretório
  countArquivos = 0

  listaColecao = listarDocumento(vocabularioColecao)

  listaNi = [0 for i in range(len(listaColecao))]
  
  for arquivo in os.listdir(diretorio):
    if os.path.isfile(os.path.join(diretorio, arquivo)):
      countArquivos += 1
      
    listaFrequencia = contarFrequencia(vocabularioColecao,diretorio+"/"+arquivo)

  
    for x in range(len(listaColecao)):
      if(listaFrequencia[x] != 0):
        listaNi[x] +=1



  for x in range(len(listaColecao)):
    if listaNi[x] == 0:
      idf.append(0)  # ou qualquer outro valor padrão que você queira usar
    else:
      idf.append(math.log((countArquivos/listaNi[x]),2))

  return idf
#----------------------------------------------------------------
def calcularTFIDF(vocabularioColecao,diretorio):

  tfidf = []


  vocabColecao = listarDocumento(vocabularioColecao)

  print("TF-IDF:")
  print("\n")
  for arquivo in os.listdir(diretorio):
    if os.path.isfile(os.path.join(diretorio, arquivo)):
      idf = calcularIDF(vocabularioColecao,diretorio)
      tf = calcularTF(vocabularioColecao,diretorio+"/"+arquivo)

      tfidf = [a * b for a, b in zip(tf, idf)]
        
    #zip junta as duas listas e o dict coloca num dicionário
    dic_tfidf = dict(zip(vocabColecao, tfidf))
    
    print("Documento: "+arquivo)
    print()
    print(dic_tfidf)
    print("\n")
      
#----------------------------------------------------------------
def calcularMaiorTFIDF(vocabularioColecao,diretorio):

  nomeArquivo = []
  chaveMaior = []
  tfidf = []
  dicMaior = {}

  vocabColecao = listarDocumento(vocabularioColecao)

  for arquivo in os.listdir(diretorio):
    if os.path.isfile(os.path.join(diretorio, arquivo)):
      idf = calcularIDF(vocabularioColecao,diretorio)
      tf = calcularTF(vocabularioColecao,diretorio+"/"+arquivo)

      tfidf = [a * b for a, b in zip(tf, idf)]
        
    #zip junta as duas listas e o dict coloca num dicionário
    dic_tfidf = dict(zip(vocabColecao, tfidf))
    
    nomeArquivo.append(arquivo)
    
    maior_tfidf = max(dic_tfidf, key=dic_tfidf.get)
    
    for key in dic_tfidf:
      if (key == maior_tfidf):
        dicMaior[key] = dic_tfidf[key]
        chaveMaior.append(key)

  chave_nomeArquivo = dict(zip(chaveMaior, nomeArquivo))
  
  maior_valor = max(dicMaior.values())
  maior_chave = max(dicMaior, key=dicMaior.get)
  print("Termo: ",maior_chave)
  print("TF-IDF: ",maior_valor)

  print("Documento: ", chave_nomeArquivo[maior_chave])


#tenho um dicionario que armazena os maiores valores e as chaves são os termos (dicMaior)
#tenho um dicionario que armazena os nomes dos arquivos e as chaves são os termos (chave_nomeArquivo)
#maior_valor pega o maior valor no dicMaior





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

#------------------------------------------------------------------

#calcularMaiorTFIDF("saida.txt","textos")

inicio = datetime.datetime.now()

vocab=criarVocabularioColecao("textos")
criarArquivoSaida(vocab)

#calcularTFIDF("saida.txt","textos")

fim = datetime.datetime.now()

print(fim-inicio)