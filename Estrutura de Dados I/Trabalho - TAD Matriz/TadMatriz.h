//Nome: Beatriz Ribeiro Borges

/* arquivo Matriz.h */

//Definição do tipo Matriz
typedef struct matriz Matriz;

//0. Imprimir a matriz
void imprime(Matriz *m);

//1. Alocar a memória para a matriz
Matriz* cria(int l, int c);

//2. Liberar a memória associada à matriz
void libera(Matriz* m);

//3. Ler o número de linhas, de colunas e os elementos da matriz
void atribui(Matriz* m);

//4. Transpor uma matriz dada
Matriz* transposta(Matriz *m);

//5. Retornar a soma de duas matrizes
Matriz* soma(Matriz *m1, Matriz *m2);

//6. Retornar o produto de duas matrizes
Matriz* produto(Matriz *m1, Matriz *m2);

//7. Retornar o produto escalar de uma matriz por um inteiro
Matriz* prod_escalar(Matriz *m,int k);

/* fim arquivo Matriz.h */
