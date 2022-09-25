#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

//Grupo 1
//Sistema de Informação para registro dos pacientes do Hospital Universitário da UFU

//0
struct paciente //se acrescentar elementos na struct, tem q aumentar o divisor do tamanho em "quantas_pessoas_cadastradas" - por enquanto são 7
{
    char nome[100];
    char sexo[20];
    char cpf[20];
    char telefone[20];
    int idade;
  //  char internacao[4];
    int qtd_dias_internacao;
    char comorbidade[4];
};

//1
void cadastro(struct paciente T[], int *qtd)
{
    FILE *f;//ponteiro pra file ''f''
    f=fopen ("arquivo_hospital.txt","a"); //append - f=*ponteiro
    //se der certo retorna o ponteiro para o arquivo aberto
    //se der errado, retorna NULL
    if (f==NULL)  //aqui trata, ja avisa o erro e sai
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }

        printf("\nDigite o nome do paciente: \n");
        setbuf(stdin,NULL);
        scanf("%[^\n]s",T[*qtd].nome); //pego o valor e passo para o endereço da struct paciente
        fprintf(f,"%s\n",T[*qtd].nome); //passo para o arquivo

        printf ("\nDigite sexo do paciente: \n");
        setbuf(stdin,NULL);
        scanf ("%s", T[*qtd].sexo);
        fprintf(f,"%s\n",T[*qtd].sexo);

        printf ("\nDigite o CPF do paciente: \n");
        setbuf(stdin,NULL);
        scanf ("%s", T[*qtd].cpf);
        fprintf(f,"%s\n",T[*qtd].cpf);

        printf ("\nDigite o telefone do paciente: \n");
        setbuf(stdin,NULL);
        scanf ("%s", T[*qtd].telefone);
        fprintf(f,"%s\n",T[*qtd].telefone);

        printf("\nDigite a idade do paciente: \n");
        setbuf(stdin,NULL);
        scanf("%d", &T[*qtd].idade);
        fprintf(f,"%d\n",T[*qtd].idade);

     //   printf ("\nPaciente ficara internado? \n");
     //   setbuf(stdin,NULL);
     //   scanf ("%s", T[*qtd].internacao);
     //   fprintf(f,"%s\n",T[*qtd].internacao);

        printf("\nDigite a quantidade de dias de internacao (0,1,2,3...): \n");
        setbuf(stdin,NULL);
        scanf("%d", &T[*qtd].qtd_dias_internacao);
        fprintf(f,"%d\n",T[*qtd].qtd_dias_internacao);

        printf ("\nPaciente tem comorbidades? \n");
        setbuf(stdin,NULL);
        scanf ("%s", T[*qtd].comorbidade);
        fprintf(f,"%s\n",T[*qtd].comorbidade);

        printf("\n");

    (*qtd)++;//conta +1 pra saber quantos cadastros tem -> vai ser usado na mostra todos
    //a declaração ta no menu, se n, zera toda vez aqui
    //() pq se n pega só o valor do qtd, pega o endereço da variavel seguinte. então é precedencia
    fclose(f);
}

//2
void mostra_dados(struct paciente T[], int *qtd)
{
    for(int i=0; i<*qtd; i++) //mostra apenas os q acabei de cadastrar, então faz o laço pra printar. pega o valor correspondente do cadastro
    //o qtd vai pegar o valor do total q ta registrado no ponteiro
    {
        printf("\nNome do paciente: %s\n",T[i].nome);
        printf ("\nSexo do paciente: %s\n", T[i].sexo);
        printf ("\nCPF do paciente: %s\n", T[i].cpf);
        printf ("\nTelefone do paciente: %s\n", T[i].telefone);
        printf("\nIdade do paciente: %d\n",T[i].idade);
     //   printf ("\nInternacao: %s\n", T[i].internacao);
        printf("\nDias de internacao do paciente: %d\n",T[i].qtd_dias_internacao);
        printf ("\nComorbidade: %s\n", T[i].comorbidade);
        printf("\n");
    }
}

//3
void mostra1(struct paciente T[]) //ta no menu a indicação q é a posição 0 do vetor
{
    printf("Nome: %s\n", T->nome);
    printf ("Sexo: %s\n", T->sexo);
    printf ("CPF: %s\n", T->cpf);
    printf ("Telefone: %s\n", T->telefone);
    printf("Idade: %d\n", T->idade);
  //  printf ("Internacao: %s\n", T->internacao);
    printf("Dias de internacao: %d\n", T->qtd_dias_internacao);
    printf ("Comorbidade: %s\n", T->comorbidade);
}

//4
void mostra_por_idade (struct paciente T[])  //crescente
{
    FILE *f;
    int i=0,tam,j,id; //tam descobre o tam do arquivo
    struct paciente temp; //struct temporaria pra ajudar na hr de fazer a troca, pq tem q passar toda a struct
    char ch;
    printf("Digite a idade de busca: ");
    setbuf(stdin,NULL);
    scanf("%d",&id);

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }

    while(ch!=EOF) //lê todo o arquivo
    {
        fscanf(f," %[^\n]s",T[i].nome); //ta pegando tudo como está no arquivo, como tenhoq  imprimir tudo, coloco o fscanf pra tudo q é pra imprimir
        fscanf (f,"%s", T[i].sexo);
        fscanf (f,"%s", T[i].cpf);
        fscanf (f,"%s", T[i].telefone);
        fscanf(f,"%d", &T[i].idade);
      //  fscanf (f,"%s", T[i].internacao);
        fscanf(f,"%d", &T[i].qtd_dias_internacao);
        fscanf (f,"%s", T[i].comorbidade);

        i++;//descobre o tamanho do arquivo
        ch=fgetc(f);
    }
    tam=i-1;


    for(i=1; i<tam; i++)//vai aumentando o i até chegar no tamanho, o i serve para ir diminuindo do tamanho do j
        //i=1,j=0,j<tam-1, ou seja, como j começa no [0], vai passar por todo vetor.
        //na troca ele vai 'empurrando' o maior (se for crescente) pro ultimo lugar, dai eu posso diminuir o tamanho do laço (hands o i++ no j<tam-i) e vou comparando só os outros, ate q esteja tudo certo.
        for(j=0; j<tam-i; j++)
            if(T[j+1].idade<T[j].idade)//aqui faz a troca
            {
                temp=T[j];
                T[j]=T[j+1];
                T[j+1]=temp;
            }

    for(i=0; i<tam; i++)
    {
        if (T[i].idade>=id){

        printf("Nome: %s\n",T[i].nome);
        printf("Sexo: %s\n",T[i].sexo);
        printf("CPF: %s\n",T[i].cpf);
        printf("Telefone: %s\n",T[i].telefone);
        printf("Idade: %d\n",T[i].idade);
     //   printf ("Internacao: %s\n", T[i].internacao);
        printf("Dias de internacao: %d\n", T[i].qtd_dias_internacao);
        printf ("Comorbidade: %s\n", T[i].comorbidade);
        printf("\n");

    }
    }


    fclose(f);
}

//5
void mostra_por_nome (struct paciente T[]) //ordem alfabética normal A->Z
{
    FILE *f;
    int i=0,tam,j; //tam descobre o tam do arquivo
    struct paciente temp; //struct temporaria pra ajudar na hr de fazer a troca, pq tem q passar toda a struct
    char ch;

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while(ch!=EOF)
    {
        fscanf(f," %[^\n]s",T[i].nome);
        fscanf (f,"%s", T[i].sexo);
        fscanf (f,"%s", T[i].cpf);
        fscanf (f,"%s", T[i].telefone);
        fscanf(f,"%d", &T[i].idade);
      //  fscanf (f,"%s", T[i].internacao);
        fscanf(f,"%d", &T[i].qtd_dias_internacao);
        fscanf (f,"%s", T[i].comorbidade);

        i++;//descobre o tamanho do arquivo
        ch=fgetc(f);
    }
    tam=i-1;


    for(i=1; i<tam; i++)//vai aumentando o i até chegar no tamanho, o i serve para ir diminuindo do tamanho do j
        //i=1,j=0,j<tam-1, ou seja, como j começa no [0], vai passar por todo vetor.
        //na troca ele vai 'empurrando' o maior (se for crescente) pro ultimo lugar, dai eu posso diminuir o tamanho do laço (hands o i++ no j<tam-i) e vou comparando só os outros, ate q esteja tudo certo.
        for(j=0; j<tam-i; j++)
            if(strcmp(T[j+1].nome,T[j].nome)<0)//aqui faz a troca
            //se é menor retorna negativo
            //se é maior retorna positvo
            //se é igual retorna 0
            {
                temp=T[j];
                T[j]=T[j+1];
                T[j+1]=temp;
            }

    for(i=0; i<tam; i++)//imprime a struct
    {
        printf("Nome: %s\n",T[i].nome); //imprime o que pegou la do fscanf
        printf("Sexo: %s\n",T[i].sexo);
        printf("CPF: %s\n",T[i].cpf);
        printf("Telefone: %s\n",T[i].telefone);
     //   printf("Idade: %d\n",T[i].idade);
     //   printf ("Internacao: %s\n", T[i].internacao);
        printf("Dias de internacao: %d\n", T[i].qtd_dias_internacao);
        printf ("Comorbidade: %s\n", T[i].comorbidade);
        printf("\n");
    }

    fclose(f);
}

//6
void mostra_arquivo (struct paciente T[])
{
    FILE *f;
    char ch;
    f=fopen ("arquivo_hospital.txt","r"); //apenas leitura
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }

    while (1)
    {
        fscanf(f," %[^\n]s",T->nome); //ta pegando do arquivo
       if (feof(f)) //se acabar o arquivo, break
            break;
        printf("Nome: %s\n",T->nome);
        fscanf (f,"%s", T->sexo);
        printf("Sexo: %s\n",T->sexo);
        fscanf (f,"%s", T->cpf);
        printf("CPF: %s\n",T->cpf);
        fscanf (f,"%s", T->telefone);
        printf("Telefone: %s\n",T->telefone);
        fscanf(f,"%d", &T->idade);
        printf("Idade: %d\n",T->idade);
      //  fscanf (f,"%s", T->internacao);
      //  printf ("Internacao: %s\n", T->internacao);
        fscanf(f,"%d", &T->qtd_dias_internacao);
        printf("Dias de internacao: %d\n", T->qtd_dias_internacao);
        fscanf (f,"%s", T->comorbidade);
        printf ("Comorbidade: %s\n", T->comorbidade);
        printf("\n");

    }
    fclose(f);
}

//7
void procurar_por_nome (struct paciente T[])
{

    FILE *f;
    char nome[100],ch[100]; //ch é a variavel pra armazenar a string do arquivo
    int i=0;

    f=fopen ("arquivo_hospital.txt","r");
    printf("Digite o nome do paciente: ");
    setbuf(stdin,NULL);
    scanf("%[^\n]s",nome);

    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while (fgets(ch, 100, f))//enquanto tem string ta pegando(pq coloquei o tam do vetor alto)
        //fgets vai pegando enquanto chegar no tamanho ou no \n, o q achar primeiro
    {
        if (strstr(ch, nome))  //vê se 'nome'(a string menor) está contida em 'ch'(q no caso é a linha (pq pega toda a linha, ja q o tam é alto)do meu arquivo)
        {
            i++; //itera pra ser !=0, se for =0 imprime dizendo q n ta cadastrado
            printf("\n%sja esta cadastrado(a).\n\n", ch);
            fscanf (f,"%s", T->sexo);
            printf("Sexo: %s\n",T->sexo);
            fscanf (f,"%s", T->cpf);
            printf("CPF: %s\n",T->cpf);
            fscanf (f,"%s", T->telefone);
            printf("Telefone: %s\n",T->telefone);
            fscanf(f,"%d", &T->idade);
            printf("Idade: %d\n",T->idade);
         //   fscanf (f,"%s", T->internacao);
        //    printf ("Internacao: %s\n", T->internacao);
            fscanf(f,"%d", &T->qtd_dias_internacao);
            printf("Dias de internacao: %d\n", T->qtd_dias_internacao);
            fscanf (f,"%s", T->comorbidade);
            printf ("Comorbidade: %s\n", T->comorbidade);
            printf("\n");

        }
    }

    if (i==0)
        printf("\n%s nao esta cadastrado(a).\n",nome);


    fclose(f);

}

//8
void quantas_pessoas_cadastradas (struct paciente T[])  //se acrescentar elementos na struct, tem q aumentar o divisor do tamanho
{
    FILE *f;
    int i=0,tam=0;
    char ch[100],c;

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while (1)
    {
        fgets(ch, 100, f);
        if (feof(f)) //se acabar o arquivo, break
            break;
        i++;
    }
    fclose(f);
    tam=i/7; //8 é a qtd de dados q tem na struct ( 1 por linha)
    printf("Quantidade de pacientes cadastrados: %d",tam);

}

//9
void dias_internacao(struct paciente T[]) //decrescente
{
    FILE *f;
    int i=0,tam,j; //tam descobre o tam do arquivo
    struct paciente temp; //struct temporaria pra ajudar na hr de fazer a troca, pq tem q passar toda a struct
    char ch;

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while(ch!=EOF)
    {
        fscanf(f," %[^\n]s",T[i].nome);
        fscanf (f,"%s", T[i].sexo);
        fscanf (f,"%s", T[i].cpf);
        fscanf (f,"%s", T[i].telefone);
        fscanf(f,"%d", &T[i].idade);
      //  fscanf (f,"%s", T[i].internacao);
        fscanf(f,"%d", &T[i].qtd_dias_internacao);
        fscanf (f,"%s", T[i].comorbidade);

        i++;//descobre o tamanho do arquivo
        ch=fgetc(f);
    }
    tam=i-1;

    for(i=1; i<tam; i++)//vai aumentando o i até chegar no tamanho, o i serve para ir diminuindo do tamanho do j
        //i=1,j=0,j<tam-1, ou seja, como j começa no [0], vai passar por todo vetor.
        //na troca ele vai 'empurrando' o maior (se for crescente) pro ultimo lugar, dai eu posso diminuir o tamanho do laço (hands o i++ no j<tam-i) e vou comparando só os outros, ate q esteja tudo certo.
        for(j=0; j<tam-i; j++)
            if(T[j+1].qtd_dias_internacao>T[j].qtd_dias_internacao)//aqui faz a troca
            {
                temp=T[j];
                T[j]=T[j+1];
                T[j+1]=temp;
            }

    for(i=0; i<tam; i++)//imprime a struct
    {
        printf("Nome: %s\n",T[i].nome); //imprime o que pegou la do fscanf
        printf("Sexo: %s\n",T[i].sexo);
        printf("CPF: %s\n",T[i].cpf);
        printf("Telefone: %s\n",T[i].telefone);
        printf("Idade: %d\n",T[i].idade);
      //  printf ("Internacao: %s\n", T[i].internacao);
        printf("Dias de internacao: %d\n", T[i].qtd_dias_internacao);
        printf ("Internacao: %s\n", T[i].comorbidade);
        printf("\n");

    }

    fclose(f);
}
//10
void procura_f_m (struct paciente T[]) //separa por F ou M
{
    FILE *f;
    int i=0,tam,j; //tam descobre o tam do arquivo
    struct paciente temp; //struct temporaria pra ajudar na hr de fazer a troca, pq tem q passar toda a struct
    char ch,c[20];
    printf("Digite F ou M para a busca por sexo: ");
    setbuf(stdin,NULL);
    scanf("%s",&c);
    printf("\n");

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while(ch!=EOF)
    {
        fscanf(f," %[^\n]s",T[i].nome);
        fscanf (f,"%s", T[i].sexo);
        fscanf (f,"%s", T[i].cpf);
        fscanf (f,"%s", T[i].telefone);
        fscanf(f,"%d", &T[i].idade);
       // fscanf (f,"%s", T[i].internacao);
        fscanf(f,"%d", &T[i].qtd_dias_internacao);
        fscanf (f,"%s", T[i].comorbidade);

        i++;//descobre o tamanho do arquivo
        ch=fgetc(f);
    }
    tam=i-1;


    for(i=1; i<tam; i++)//vai aumentando o i até chegar no tamanho, o i serve para ir diminuindo do tamanho do j
        //i=1,j=0,j<tam-1, ou seja, como j começa no [0], vai passar por todo vetor.
        //na troca ele vai 'empurrando' o maior (se for crescente) pro ultimo lugar, dai eu posso diminuir o tamanho do laço (hands o i++ no j<tam-i) e vou comparando só os outros, ate q esteja tudo certo.
        for(j=0; j<tam-i; j++)
            if(strcmp(T[j+1].nome,T[j].nome)<0)//aqui faz a troca
            //se é menor retorna negativo
            //se é maior retorna positvo
            //se é igual retorna 0
            {
                temp=T[j];
                T[j]=T[j+1];
                T[j+1]=temp;
            }


    for(i=0; i<tam; i++)//imprime a struct
    {
        if (strcmp(T[i].sexo,c)==0){
        printf("Nome: %s\n",T[i].nome); //imprime o que pegou la do fscanf
        printf("Sexo: %s\n",T[i].sexo);
        printf("CPF: %s\n",T[i].cpf);
        printf("Telefone: %s\n",T[i].telefone);
        printf("Idade: %d\n",T[i].idade);
        //printf ("Internacao: %s\n", T[i].internacao);
        printf("Dias de internacao: %d\n", T[i].qtd_dias_internacao);
        printf ("Comorbidade: %s\n", T[i].comorbidade);
        printf("\n");
        }
    }

    fclose(f);
}
//11
void comorb (struct paciente T[]) //separa por F ou M
{
    FILE *f;
    int i=0,tam,j; //tam descobre o tam do arquivo
    struct paciente temp; //struct temporaria pra ajudar na hr de fazer a troca, pq tem q passar toda a struct
    char ch,c[20];
    printf("Digite se quer a lista das pessoas com comorbidade: ");
    setbuf(stdin,NULL);
    scanf("%s",&c);
    printf("\n");

    f=fopen("arquivo_hospital.txt","r");
    if (f==NULL)
    {
        printf("Erro na abertura!\n");
        system ("pause");
        exit(1);
    }
    while(ch!=EOF)
    {
        fscanf(f," %[^\n]s",T[i].nome);
        fscanf (f,"%s", T[i].sexo);
        fscanf (f,"%s", T[i].cpf);
        fscanf (f,"%s", T[i].telefone);
        fscanf(f,"%d", &T[i].idade);
//        fscanf (f,"%s", T[i].internacao);
        fscanf(f,"%d", &T[i].qtd_dias_internacao);
        fscanf (f,"%s", T[i].comorbidade);

        i++;//descobre o tamanho do arquivo
        ch=fgetc(f);
    }
    tam=i-1;


    for(i=1; i<tam; i++)//vai aumentando o i até chegar no tamanho, o i serve para ir diminuindo do tamanho do j
        //i=1,j=0,j<tam-1, ou seja, como j começa no [0], vai passar por todo vetor.
        //na troca ele vai 'empurrando' o maior (se for crescente) pro ultimo lugar, dai eu posso diminuir o tamanho do laço (hands o i++ no j<tam-i) e vou comparando só os outros, ate q esteja tudo certo.
        for(j=0; j<tam-i; j++)
            if(strcmp(T[j+1].nome,T[j].nome)<0)//aqui faz a troca
            //se é menor retorna negativo
            //se é maior retorna positvo
            //se é igual retorna 0
            {
                temp=T[j];
                T[j]=T[j+1];
                T[j+1]=temp;
            }


    for(i=0; i<tam; i++)//imprime a struct
    {
        if (strcmp(T[i].comorbidade,c)==0){
        printf("Nome: %s\n",T[i].nome); //imprime o que pegou la do fscanf
        printf("Sexo: %s\n",T[i].sexo);
        printf("CPF: %s\n",T[i].cpf);
        printf("Telefone: %s\n",T[i].telefone);
        printf("Idade: %d\n",T[i].idade);
        //printf ("Internacao: %s\n", T[i].internacao);
        printf("Dias de internacao: %d\n", T[i].qtd_dias_internacao);
        printf ("Comorbidade: %s\n", T[i].comorbidade);
        printf("\n");
        }
    }

    fclose(f);
}

void menu()
{
    int opcao;
    struct paciente P[30];
    int qtd=0;

    while(1)
    {
        printf("\n\n\nBem vindo ao Sistema de Informacao para registro dos pacientes do Hospital Universitario da UFU\n");
        printf("\n1- Cadastrar ");
        printf("\n2- Mostrar todos os pacientes recem cadastrado");
        printf("\n3- Mostrar primeiro paciente recem cadastrado");
        printf("\n4- Mostrar todos os pacientes por ordem crescente de idade");
        printf("\n5- Mostrar todos os pacientes por ordem alfabetica dos nomes");
        printf("\n6- Mostrar arquivo com todos os pacientes cadastrados");
        printf("\n7- Procurar se um paciente ja esta cadastrado");
        printf("\n8- Mostrar o total de pacientes cadastrados");
        printf("\n9- Mostrar todos os pacientes por ordem decrescente de dias de internacao");
        printf("\n10- Mostrar todos os pacientes por sexo F ou M");
        printf("\n11- Mostrar todos os pacientes por comorbidade");
        printf("\n12- Sair ");
        printf("\nDigite a opcao: ");
        scanf("%d", &opcao);
        printf("\n");

        if(opcao == 1) cadastro(P,&qtd);
        if(opcao == 2) mostra_dados(P,&qtd);
        if(opcao == 3) mostra1(&P[0]);
        if(opcao == 4) mostra_por_idade(P);
        if(opcao == 5) mostra_por_nome(P);
        if(opcao == 6) mostra_arquivo(P);
        if(opcao == 7) procurar_por_nome(P);
        if(opcao == 8) quantas_pessoas_cadastradas(P);
        if(opcao == 9) dias_internacao(P);
        if(opcao == 10) procura_f_m(P);
        if(opcao == 11) comorb(P);
        if(opcao == 12) return;
    }
}


int main()
{
    menu();
}

