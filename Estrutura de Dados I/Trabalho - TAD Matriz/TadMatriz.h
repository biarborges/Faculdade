//Nome: Beatriz Ribeiro Borges

/* arquivo Matriz.h */

//Defini��o do tipo Matriz
typedef struct matriz Matriz;

//0. Imprimir a matriz
void imprime(Matriz *m);

//1. Alocar a mem�ria para a matriz
Matriz* cria(int l, int c);

//2. Liberar a mem�ria associada � matriz
void libera(Matriz* m);

//3. Ler o n�mero de linhas, de colunas e os elementos da matriz
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
