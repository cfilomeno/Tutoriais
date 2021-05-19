#LISTAS list()
#LISTAS list()
#LISTAS list()
#LISTAS list()
#LISTAS list()
#listas são conjuntos de dados em um nome só. Cada
#dimensão de uma lista pode ter conjuntos de dados diferentes
#Por exemplo, na dimensão [[1]] pode estar um vetor, na [[2]]
#uma matriz e na [[3]] um data.frame

#Vetor com números de 1 a 10
meu_vetor <- seq(from=1,to=10,by=1)

# Matrix 3x3 com números de  1 up to 9
minha_matriz <- matrix(1:9, ncol = 3, nrow = 3)

# Primeiras 10 linhas do conjunto de dados mtcars
meu_df <- mtcars[1:10,]

# Construct list with these different elements:
?list
minha_lista <- list(meu_vetor = meu_vetor, #cria uma lista com objetos que já existem, pode colocar matriz, dataframe...
                    minha_matriz = minha_matriz,
                    meu_df = meu_df)
minha_lista

#Essa lista tem 3 dimensões
minha_lista[[1]] #tem o vetor my_vector
minha_lista$minha_matriz #ele pode ser chamado usando $ também
minha_lista[[3]] #tem o data frame
minha_lista[c(1,3)] #primeira e terceira dimensoes

minha_lista$meu_df$cyl
minha_lista$meu_vetor[[10]]







#EXERCÍCIOS
#1. Selecione a primeira coluna do data.frame contido na minha_lista

minha_lista$meu_df[ ,1] #Ok. Apareceu [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2

#2. Cria uma lista, com a primeira dimensão sendo um vetor de TRUE/FALSE,
#a segunda dimensão o data.frame iris, e na terceira um vetor com o 
#seu nome.
d1 <- c(T, F, T, F, F)
d2 <- iris
d3 <- "cleber"
nova_lista <- list(d1,
                   d2,
                   d3)
nova_lista
#3. Modifique o nome da primeira dimensão da sua lista.
#dica use a função names()
names(nova_lista)[1] <- "dimensao1"
