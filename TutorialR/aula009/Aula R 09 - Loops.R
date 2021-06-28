#11.LOOPS
#11.LOOPS
#11.LOOPS
#11.LOOPS
#Um loop (laço) é um comando que gera uma iteração (repetição)
#por um intervalo determinado.
#função for


#LOOP FOR

#Exemplo 1
#Um loop simples
#Em português: para i de 1 a 10, faça:
#mostre o valor de i e escreva Flamengo! ## abaixo será criado o o loop com a palavra flamengo dez vezes 
for (i in 1:10) {
  print(i) #imprima Flamengo quantas vezes vc pedir acima
  print("Flamengo!")
}


#Exemplo 2
#Em português: para i de 1 ao tamanho do vetor dados, faça:
#eleve o componente na posição i a ele mesmo e atribua esse valor a posição i do vetor dados
Dados <- c(2,2,5,6,8,1,3,5,2,4)
length(Dados)

for (i in 1:length(Dados)) { ##a funcao length() vai dar o comprimento de dados automaticamente, isso é bom para caso mude o tamanho dos dados
  
  Dados[[i]] <- Dados[[i]]^Dados[[i]] ##aqui ai pegar a posicao i do conjunto de dados e elevar ao valor da posicao i e vai substituir o valor que calulou e atribuir ao primeiro
  
}
Dados



#Exemplo 3 
#aqui podemos fazer um loop dentro de um loop i é o primeiro loop e k o segundo ##pode ser uma solucao para modidicar matrizes ou quando for manipular tabelas e matrizes
for (i in 1:3) {
  
  print(paste("primeiro loop: i =", i))
  
  for (k in 1:5) {
    
    print(paste("segundo loop: k =", k))
    
  }
}



#Exercícios
#Exercícios
#Exercícios
#Faça um loop para escrever seu nome 5 vezes.

for (i in 1:5) {
  print(i)
  print("Laura")
}

#Faça um loop para modificar a diagonal de uma matrix:
mat<-matrix(rep(x=1,times=5*5), ncol=5,nrow=5)
#

mat1<-matrix(rep(x=1,times=5*5), ncol=5,nrow=5)
mat1

for (i in mat1) {
  
  mat1[row(mat1) == col(mat1)] = "diagonal"
  
}
mat1


#Faça um loop para encontrar o fatorial do número 11 (11*10*9*...*1)
11*10*9*8*7*6*5*4*3*2*1

num <- c(1:11)
fat = 1
for(i in num){
  fat <-fat*((num)[i])
}
print(paste('O fatorial de 11 é', fat))
