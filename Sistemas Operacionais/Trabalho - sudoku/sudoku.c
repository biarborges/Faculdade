/*
Trabalho de Sistemas Operacionais
Manipulando Threads - Sudoku

Professor: Marcelo Zanchetta do Nascimento
Alunas: 
Beatriz Ribeiro Borges - 12021BSI231
Laura Rosado Rodrigues Muniz - 12021BSI216
Sara Rosado Rodrigues Muniz - 12021BSI215

Uberlândia, 25 de janeiro de 2023
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#define num_threads 27

/* 
array ‘valida’ de tamanho 27 (tamanho da quantidade de threads) 
usado para a verificação se aquela região do thread é válida (1) ou não (0)
inicializado com 0.
*/
int valida[num_threads] = {0};

//Struct contendo linha e coluna, inteiros, que armazena os dados a serem passados para as threads.
typedef struct {
	int linha;
	int coluna;		
} parametros;

int sudoku[9][9];


void *ehColunaValida(void* param) {
	//recupera os valores de "linha" e "coluna" passados como parâmetros para a thread
    //verifica se os valores de "linha" e "coluna" são válidos
	parametros *params = (parametros*) param;
	int linha = params->linha;
	int col = params->coluna;		
	if (linha != 0 || col > 8) {
        fprintf(stderr, "Linha ou coluna inválida. Linha=%d, Coluna=%d\n", linha, col);
		pthread_exit(NULL);
	}

	// verifica se repete numeros de 1-9
	int validaArray[9] = {0};
	int i;	
	for (i = 0; i < 9; i++) {
		int num = sudoku[i][col];
		if (num < 1 || num > 9 || validaArray[num - 1] == 1) { //se o numero que pegou na posição da matriz for: <1 ou >9 é invalidao, pois tem q ser de 1 a 9, Se a posição do validaArray num-1 for 1 significa q ja visitei, então tem num repetido
			pthread_exit(NULL);
		} else {
			validaArray[num - 1] = 1;		
		}
	}
	//se chegou até aqui, é pq tudo foi valido
	valida[18 + col] = 1;
	pthread_exit(NULL);
}

//mesma logica para as linhas
void *ehLinhaValida(void* param) {
	parametros *params = (parametros*) param;
	int linha = params->linha;
	int col = params->coluna;		
	if (col != 0 || linha > 8) {
		fprintf(stderr, "Linha ou coluna inválida. Linha=%d, Coluna=%d\n", linha, col);
		pthread_exit(NULL);
	}

	int validaArray[9] = {0};
	int i;
	for (i = 0; i < 9; i++) {
		int num = sudoku[linha][i];
		if (num < 1 || num > 9 || validaArray[num - 1] == 1) {
			pthread_exit(NULL);
		} else {
			validaArray[num - 1] = 1;		
		}
	}
	valida[9 + linha] = 1;
	pthread_exit(NULL);
}

	// verifica se repete numeros de 1-9 nas submatrizes 3x3
void *eh3x3Valida(void* param) {
	parametros *params = (parametros*) param;
	int linha = params->linha;
	int col = params->coluna;		
	if (linha > 6 || linha % 3 != 0 || col > 6 || col % 3 != 0) {
		fprintf(stderr, "Linha ou coluna inválida. Linha=%d, Coluna=%d\n", linha, col);
		pthread_exit(NULL);
	}
	int validaArray[9] = {0};
	int i, j;
	for (i = linha; i < linha + 3; i++) {
		for (j = col; j < col + 3; j++) {
			int num = sudoku[i][j];
			if (num < 1 || num > 9 || validaArray[num - 1] == 1) {
				pthread_exit(NULL);
			} else {
				validaArray[num - 1] = 1;		
			}
		}
	}
	
	valida[linha + col/3] = 1; 
	pthread_exit(NULL);
}

int main() {	
	pthread_t threads[num_threads];
	int i, j;

	FILE *arquivo;
	char nome_do_arquivo[10];
	printf("Digite o nome do arquivo desejado com a extensão (ex1.txt, ex2.txt, ex3.txt, ex4.txt): \n");
	scanf("%s",nome_do_arquivo);
	arquivo = fopen(nome_do_arquivo, "r");
	printf("\n");
	if (arquivo == NULL) {
		printf("Erro ao abrir arquivo");
		return 1;
	}

	
	for (i = 0; i < 9; i++) {
		for (j = 0; j < 9; j++) {
			fscanf(arquivo, "%d", &sudoku[i][j]);
		}
	}

	fclose(arquivo);
	
	int threadIndex = 0;	
	//cria 9 threads para 9 submatrizes 3x3, 9 threads para 9 colunas e 9 threads para 9 linhas.
    //27 threads.
	for (i = 0; i < 9; i++) {
		for (j = 0; j < 9; j++) {						
			if (i%3 == 0 && j%3 == 0) {
				parametros *dado = (parametros *) malloc(sizeof(parametros));	
				dado->linha = i;		
				dado->coluna = j;
				pthread_create(&threads[threadIndex++], NULL, eh3x3Valida, dado); // 3x3 submatrizes threads
			}
			if (i == 0) {
				parametros *colunaDados = (parametros *) malloc(sizeof(parametros));	
				colunaDados->linha = i;		
				colunaDados->coluna = j;
				pthread_create(&threads[threadIndex++], NULL, ehColunaValida, colunaDados);	// colunas threads
			}
			if (j == 0) {
				parametros *linhaDados = (parametros *) malloc(sizeof(parametros));	
				linhaDados->linha = i;		
				linhaDados->coluna = j;
				pthread_create(&threads[threadIndex++], NULL, ehLinhaValida, linhaDados); // linhas threads
			}
		}
	}

	for (i = 0; i < num_threads; i++) {
		pthread_join(threads[i], NULL); //espera todas as threads terminarem
	}

	//se alguma entrada do valida for 0, soduko n é valido
	for (i = 0; i < num_threads; i++) {
		if (valida[i] == 0) {
			printf("Sudoku invalido!\n");
			return EXIT_SUCCESS;
		}
	}
	printf("Sudoku valido!\n");
	return EXIT_SUCCESS;
}
