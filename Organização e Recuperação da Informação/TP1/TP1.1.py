import unidecode
import string

#1) Fazer um programa em Python que receba como entrada um arquivo contendo um texto qualquer e devolva como saída um arquivo de texto contendo o vocabulário (termos de indexação) de tal arquivo

#---------------------------------------------------------------------

#função que normaliza o vacabulario(tira pontuação, acentos, maiúsculas e já retira os repetidos)
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

  
#--------------------------------------------------------------------
  
#função que coloca o vocabulario em um arquivo
def criarArquivoSaida(vocab): #vocabulario é uma lista
  #vocab=criarVocabulario(arquivo)
  saida=open('saida.txt','w')
  #w=write, sobrescreve
  #a=append, acrescenta no final
  
  for x in range(len(vocab)):
    saida.write(vocab[x]+"\n") #escreve no txt e pula linha
  
  saida.close()


#-------------------------------------------------------------------
#MAIN

  
#vocab recebe a lista retornada. Ao chamar a função para criar o vocabulário, passo o nome do arquivo como parâmetro com a extensão
vocab=criarVocabulario('ohorla.txt')

#Para criar o arquivo passo a lista da criarVocabulario
criarArquivoSaida(vocab)
