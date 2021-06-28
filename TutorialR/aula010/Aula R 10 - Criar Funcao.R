#CRIAR UMA FUNÇÃO
#CRIAR UMA FUNÇÃO
#CRIAR UMA FUNÇÃO
#CRIAR UMA FUNÇÃO
#CRIAR UMA FUNÇÃO
#CRIAR UMA FUNÇÃO

#O R permite que você facilmente crie suas próprias
#funções. Isso é feito usando a função function(){}, 
#geralmente atribuída a um objeto.
#Dentro dos () são os argumentos da sua função
#e dentro dos {} o que a função irá fazer
#com esses argumentos.

#nome_da_funcao (argumento1, argumento2)

nome_da_funcao <- function (argumento1, argumento2) {
  r<-argumento1*argumento2
  return(r)
}

nome_da_funcao(argumento1=10, argumento2=2)


#Exemplo 1
#Vamos criar uma função para calcular a média e desvio
#padrao de uma lista.
mean.sd <- function (lista) {  #funcao atribuída a mean.sd, com o argumento 'lista'
  #aplicas funcies mean e sd para cada dimensao da lista:
  
  media<-NULL
  dp<-NULL
  
  for (i in 1:length(lista)) {
    
    media[[i]] <- mean(lista[[i]])
    
      dp[[i]] <- sd(lista[[i]])
      
  }  
  
  r <- list(media, dp)  #cria uma lista com os resultados
  
  names(r)<-c("media", "desvio_padrao")  #nomeia as duas dimensoes da lista
  
  return(r)  #retorna esse resultados para o usuário
}

#Usar a função criada
minha.lista<-list(a=rnorm(n=1000,mean=3,sd=2),
                  b=rpois(n=1000,lambda=3),
                  c=runif(n=1000, min=-100,max=100))

resultados <- mean.sd(lista = minha.lista)

resultados

resultados$media
resultados$desvio_padrao


#Exemplo 2
#Funcao acrescentar determinado valor a valores
#menores que um certo limite escolhido em um vetor de dados:
minha.funcao <- function(vetor, limite=5, valor) {
  #atribuar a funcao, com tres argumentos, ao objeto minha.funcao
  for (i in 1:length(vetor)) { #para i de 1 ao tamanho do vetor, faça
    #if ()
    if (vetor[[i]] < limite) { #se o componente na posição i for menos que o limite, faça:
      vetor[[i]]<-vetor[[i]] + valor #atribua ao componente na posição i o valor do componente mais o argumento valor

    }
  }
  return(vetor) #retorne o vetor modificado
}

meu.vetor<-c(1,4,67,8,3,34,57,4,3,6,8,9,0,4,4,9,0,2234,78)

minha.funcao(vetor=meu.vetor, limite=10, valor=1000)

minha.funcao(vetor=meu.vetor, valor=1000)



#Exercícios
#Exercícios
#Exercícios
#Exercícios
#
#
##1. Crie uma funcao para calcular o índice de diversidade de Shannon e o índice de Simpson para uma lista com dados
#de diferentes áreas em cada uma de suas dimensões #https://en.wikipedia.org/wiki/Diversity_index
#soma da proporcao de i x log da proporcao de i


install.packages("vegan")
library("vegan")

data("BCI")

Simpson <- diversity(BCI, "simpson")
Simpson

Shannon<-diversity(BCI)
Shannon

#2. Crie uma funcao para detectar se um vetor possui numeros (is.numeric()) ou caracteres (is.character()) e
#então acrescentar um valor ou um texto (paste()) aos componentes desse vetor.



