//Nome: Beatriz Ribeiro Borges

#include <stdio.h>
#include <stdlib.h>
#include "TadMatriz.h"

/* arquivo Matriz.c */
//Definição da estrutura de dados
typedef struct matriz
{
    int linhas;
    int colunas;
    double **mat;
} Matriz;

//0. Imprimir a matriz
void imprime(Matriz *m)
{
    if(m==NULL)
    {
        return;
    }
    else
    {
        int l,c,i,j;
        l=m->linhas;
        c=m->colunas;
        for(i=0; i<l; i++)
        {
            for(j=0; j<c; j++)
            {
                printf("%.lf\n",m->mat[i][j]);
            }
        }
        return;
    }

}

//1. Alocar a memória para a matriz
Matriz* cria(int l, int c)
{
    int i;
    Matriz *m=(Matriz*)malloc(sizeof(Matriz*)); //aloca a matriz
    if(m==NULL)
    {
     //   printf("Erro: Memória insuficiente!\n");
        exit(1);
    }
    else
    {
        if(l<1 || c<1)
        {
          //  printf("Matriz invalida: eh preciso ser ao menos 1x1!\n");
            exit(1);
        }
        else
        {
            m->colunas=c;
            m->linhas=l;
            m->mat=(double**)malloc(l*sizeof(double*)); //primeiro aloca as linhas
            if(m->mat==NULL)
            {
              //  printf("Erro: Memória insuficiente!\n");
                exit(1);
            }
            else
            {
                for(i=0; i<l; i++)
                {
                    m->mat[i]=(double*)malloc(c*sizeof(double)); //dentro de cada linha, aloca as colunas
                    if(m->mat[i]==NULL)
                    {
                       // printf("Erro: Memória insuficiente!\n");
                        exit(1);
                    }
                }
                return m;
            }
        }
    }
}

//2. Liberar a memória associada à matriz
void libera(Matriz* m)
{
    free(m->mat); //libera primeiro o que é alocado por último
    free(m);
}

//3. Ler o número de linhas, de colunas e os elementos da matriz
void atribui(Matriz *m)
{
    int l,c,i,j;
    double aux;
    l=m->linhas;
    c=m->colunas;
    if(m!=NULL)
    {
        for(i=0; i<l; i++)
        {
            for(j=0; j<c; j++)
            {
                scanf("%lf",&aux);
                m->mat[i][j]=aux;
            }
        }
    }
    return;
}

//4. Transpor uma matriz dada
Matriz* transposta(Matriz *m)
{
    if(m==NULL)
    {
        //   printf("Erro\n");
        return NULL;
    }
    else
    {
        int l,c,i,j;
        Matriz *T;
        l=m->linhas;
        c=m->colunas;
        T=cria(c,l); //cria "ao contrário", pois troca as linhas pelas colunas
        for(i=0; i<l; i++)
        {
            for(j=0; j<c; j++)
                T->mat[j][i]=m->mat[i][j];
        }
        return T;
    }
}

//5. Retornar a soma de duas matrizes
Matriz* soma(Matriz *m1, Matriz *m2)
{
    Matriz *S;
    int l_m1,c_m1,l_m2,c_m2,i,j;
    l_m1=m1->linhas;
    c_m1=m1->colunas;
    l_m2=m2->linhas;
    c_m2=m2->colunas;
    if(l_m1!=l_m2 || c_m1!=c_m2)
    {
        // printf("Erro: Matrizes incompativeis para soma!\n");
        return NULL;
    }
    else
    {
        S=cria(l_m1,c_m1);
        for(i=0; i<l_m1; i++)
        {
            for(j=0; j<c_m1; j++)
                S->mat[i][j]=m1->mat[i][j]+m2->mat[i][j];
        }
        return S;
    }
}

//6. Retornar o produto de duas matrizes
Matriz* produto(Matriz *m1, Matriz *m2)
{
    int l1,c1,c2,i,j,k;
    double aux=0;
    Matriz *P;
    l1=m1->linhas;
    c1=m1->colunas;
    c2=m2->colunas;
    if(l1!=c2)  //linha 1, coluna 2, pois multiplica a linha da primeira matriz pela coluna da segunda. Logo, se for de tamanho diferente, não tem como
    {
        //printf("Erro: Matrizes incompativeis para multiplicacao!\n");
        return NULL;
    }

    else
    {
        P=cria(l1,c2);
        for(i=0; i<l1; i++)
        {
            for(k=0; k<c2; k++)
            {
                for(j=0; j<c1; j++)
                    aux=aux+(m1->mat[i][j])*(m2->mat[j][k]);

                P->mat[i][k]=aux;
                aux=0;
            }
        }
        return P;
    }
}

//7. Retornar o produto escalar de uma matriz por um inteiro
Matriz* prod_escalar(Matriz *m,int k)
{
    if(m==NULL)
    {
        // printf("Erro matrizes incompativeis para produto escalar de uma matriz por um inteiro \n");
        return NULL;
    }
    else
    {
        int l,c,i,j;
        Matriz *PE;
        l=m->linhas;
        c=m->colunas;
        PE=cria(l,c);
        for(i=0; i<l; i++)
        {
            for(j=0; j<c; j++)
                PE->mat[i][j]=m->mat[i][j]*k;
        }
        return PE;
    }
}
/* fim arquivo Matriz.c */
