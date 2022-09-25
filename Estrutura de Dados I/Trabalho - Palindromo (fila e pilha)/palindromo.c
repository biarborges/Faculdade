//Nome: Beatriz Ribeiro Borges
//Matrícula: 12021BSI231

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include "Tad_pilha.h"
//#include "Tad_fila.h"
/* arquivo Tad_pilha.h

//Definição
typedef char elem;
typedef struct pilha Pilha;

//1. Criar pilha
Pilha* criarPilha()

//2. Destruir Pilha
void destruirPilha(Pilha *P)

//3. Verificar se Pilha está vazia
int vaziaPilha(Pilha *P)

//4. Empilhar (início)
void push(Pilha *P, elem X)

//5. Desempilhar (início)
void pop(Pilha *P, elem *X)

fim arquivo Tad_pilha.h*/


/* arquivo Tad_pilha.c */

//0. Definição
typedef char elem;

struct pilha {
    int topo;       // indice do topo da pilha
    elem itens[300];  // elementos da pilha
};

typedef struct pilha Pilha;

//1. Criar pilha
Pilha* criarPilha()
{
    Pilha *pi;

    pi = (Pilha *) malloc(sizeof(Pilha));
    if (pi != NULL) pi->topo=-1;

    return pi;
}

//2. Destruir Pilha
void destruirPilha(Pilha *P)
{
    free(P);
}

//3. Verificar se Pilha está vazia
int vaziaPilha(Pilha *P)
{
    if (P->topo == -1)
        return 1;   // true
    else return 0;  // false
}

//4. Empilhar (início)
void push(Pilha *P, elem X)
{

    (P->topo)++;
    P->itens[P->topo] = X;

}

//5. Desempilhar (início)
void pop(Pilha *P, elem *X)
{
    *X = P->itens[P->topo];
    (P->topo)--;
}

/* fim arquivo Tad_pilha.c */

/*=======================================================================*/

/* arquivo Tad_fila.h

//0. Definição
typedef int elem;
typedef struct fila Fila;

//1. Criar Fila
Fila* criarFila()

//2. Destruir Fila
void destruirFila(Fila *F)

//3. Verificar se a Fila está vazia
int vaziaFila(Fila *F)

//4. Inserir no fim da Fila
void enqueue(Fila *F, elem X)

//5. Remover do início da Fila
elem dequeue(Fila *F)

fim arquivo Tad_fila.h*/


/* arquivo Tad_fila.c */

//0. Definição
typedef char elem;

struct fila {
    int ini;        // índice do primeiro elemento da fila
    int fim;        // índice do último elemento da fila
    int tam;        // número de elementos da fila
    elem itens[300];  // elementos da fila
};

typedef struct fila Fila;

//1. Criar Fila
Fila* criarFila()
{
    Fila *fi;

        fi = (Fila *) malloc(sizeof(Fila));
        if (fi != NULL) {
            fi->ini = 0;
            fi->fim = 0;
            fi->tam = 0;
        }


    return fi;
}

//2. Destruir Fila
void destruirFila(Fila *F)
{
    free(F);
}

//3. Verificar se a Fila está vazia
int vaziaFila(Fila *F)
{
    if (F->tam == 0) return 1;   // true
    else return 0;  // false

}

//4. Inserir no fim da Fila
void enqueue(Fila *F, elem X)
{

        F->itens[F->fim] = X;
        F->fim = (F->fim + 1);
        (F->tam)++;
}

//5. Remover do início da Fila
elem dequeue(Fila *F)
{
    elem X;

    if (!vaziaFila(F)) {
        X = F->itens[F->ini];
        F->ini = (F->ini + 1);
        (F->tam)--;
    }
        return X;
}
/* fim arquivo Tad_fila.c */

/*=======================================================================*/

/* arquivo Main.c */

//Função para retirar os espaços da String
//parâmetros: string, tamanho da string, ponteiro para elem para retornar minha string nova
void retira_espaco(elem *X, int tamString, elem *Xcopia){

    int i,j;
    for(i=0,j=0; i<tamString; i++){
        if(X[i]!=' '){
            Xcopia[j]=X[i];
            j++;
        }
    }
    Xcopia[j]='\0';

}

int palindromo (elem *Xcopia, int tamStringCopia, Pilha *Pi, Fila *Fi){

    int i;
    elem tempPi, tempFi;

   for (i=0;i<tamStringCopia;i++){
        pop(Pi,&tempPi);
        if (tempPi=='\n') //como fgets crescenta um \n, essa condição serve para não comparar o \n
            continue;
        tempFi=dequeue(Fi);
        if (tempPi != tempFi)
            return 0;
       }

    return 1;

}

int main()
{

    int i=0,j=0, tamString, tamStringCopia, palin;
    elem ch[300], chCopia[300];
    Pilha* pi;
    Fila* fi;
    fgets(ch, 300, stdin);

    tamString = strlen(ch);
    retira_espaco(ch,tamString, chCopia);
    tamStringCopia = strlen(chCopia);

    pi=criarPilha();
    fi=criarFila();


//PILHA
    while(i < strlen(chCopia)){
        push(pi, chCopia[i]);
        i++;
    }


//FILA
    while(j < strlen(chCopia)){
        enqueue(fi, chCopia[j]);
        j++;
    }


    palin=palindromo(chCopia, tamStringCopia, pi, fi);
    printf("%d\n",palin);

    destruirPilha(pi);
    destruirFila(fi);
}

/* fim arquivo Main.c */
