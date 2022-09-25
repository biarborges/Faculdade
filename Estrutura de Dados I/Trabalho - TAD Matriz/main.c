//Nome: Beatriz Ribeiro Borges

#include <stdio.h>
#include <stdlib.h>
#include "TadMatriz.h"

int main()
{
    int l,c,k; //linha, coluna, k para multiplicação escalar
    Matriz* A,*B,*C; //3 matrizes

    scanf("%d",&k);

    scanf("%d%d",&l,&c);
    A=cria(l,c); //cria a matriz
    atribui(A); //pega os valores de cada posição

    scanf("%d%d",&l,&c);
    B=cria(l,c);
    atribui(B);

    scanf("%d%d",&l,&c);
    C=cria(l,c);
    atribui(C);

    imprime(soma(A,B)); //A+B

    imprime(produto(A,C)); //A*C

    imprime(prod_escalar(produto(B,C),k));//k(B*C)

    imprime(soma(transposta(C),B)); //Ct+B ----- Ct=C transposta */

    imprime(soma(transposta(B),transposta(A)));//Bt+At

    libera(A); //libera a memória alocada
    libera(B);
    libera(C);

};
