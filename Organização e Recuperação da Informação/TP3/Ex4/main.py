import os
import math
import nltk
import re

nltk.download('stopwords')
print()


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
def normalizarTexto(arquivo):
  texto = ""

  f = open(arquivo, "r")
  
  for linha in arquivo:
    texto += f.read() + " " #add o conteúdo numa string gigante
  
  f.close()
  
  texto_letras_min =  re.findall(r'\b[A-zÀ-úü]+\b', texto.lower())
  
  stopwords = nltk.corpus.stopwords.words('english')
  
  list_stopwords_ingles = set(stopwords)
  
  texto_letras_min_semstop = [w for w in texto_letras_min if w not in list_stopwords_ingles]

  porter = nltk.PorterStemmer()

  texto_letras_min_semstop_stem = [porter.stem(t) for t in texto_letras_min_semstop]


  return texto_letras_min_semstop_stem

#-----------------------------------------------------------
def criarVocabularioColecao(diretorio):
    texto = ""
    arquivos = os.listdir(diretorio)

    for arquivo in arquivos:
        texto += " ".join(normalizarTexto(os.path.join(diretorio, arquivo))) + " "  # Adiciona o conteúdo normalizado

    lista = sorted(set(texto.split()))

    # Salvar a lista em um arquivo de texto
    with open("vocabulario.txt", "w") as file:
        for item in lista:
            file.write(item + "\n")

  
#-----------------------------------------------------------------------

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

  for arquivo in os.listdir(diretorio):
    if os.path.isfile(os.path.join(diretorio, arquivo)):
      idf = calcularIDF(vocabularioColecao,diretorio)
      tf = calcularTF(vocabularioColecao,diretorio+"/"+arquivo)

      tfidf = [a * b for a, b in zip(tf, idf)]

  return tfidf
      
#----------------------------------------------------------------
def escreverConsultaArquivo(consulta):
  
  f = open("consulta.txt", "w")
  f.writelines(consulta)
  f.close()
#-----------------------------------------------------------------
def calcularTFIDFConsulta(diretorio,vocabulario,consulta):
  
  escreverConsultaArquivo(consulta)
  tf=calcularTF("vocabulario.txt","consulta.txt")
  idf=calcularIDF("vocabulario.txt","musicas")

  tfidf = [a * b for a, b in zip(tf, idf)]

  #print(tf)
  #print(idf)
  #print(tfidf)

  return tfidf
#-------------------------------------------------------------------
def similaridade(diretorio, vocabulario, consulta):
  
    print(consulta)
    print()

    tfidfConsulta = calcularTFIDFConsulta(diretorio, vocabulario, consulta)

    # Cálculo da norma do vetor de consulta
    normaVetorConsulta = math.sqrt(sum(x ** 2 for x in tfidfConsulta))

    similaridades = {}  # Dicionário para armazenar as similaridades

    for arquivo in os.listdir(diretorio):
        if os.path.isfile(os.path.join(diretorio, arquivo)):
            idf = calcularIDF(vocabulario, diretorio)
            tf = calcularTF(vocabulario, os.path.join(diretorio, arquivo))

            tfidfDoc = [a * b for a, b in zip(tf, idf)]

            # Cálculo do produto interno
            produtoInterno = sum(a * b for a, b in zip(tfidfConsulta, tfidfDoc))

            # Cálculo da norma do vetor do documento
            normaVetorDoc = math.sqrt(sum(x ** 2 for x in tfidfDoc))

            # Cálculo da norma do vetor (produto das normas)
            normaVetor = normaVetorConsulta * normaVetorDoc

            # Cálculo da similaridade
            sim = produtoInterno / normaVetor

            similaridades[arquivo] = sim  # Adiciona a similaridade ao dicionário

     # Ordenar as similaridades em ordem decrescente
    similaridade_descrescente = sorted(similaridades.items(), key=lambda x: x[1], reverse=True)
  
    for arquivo, similaridade in similaridade_descrescente:
      print("Grau de similaridade do " + arquivo + ":")
      print(similaridade)
      print()
#--------------------------------------------------------------------

criarVocabularioColecao("musicas")

similaridade("musicas","vocabulario.txt","i'll work hard for money or for a pizza that i love")