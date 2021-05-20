#CARREGAR E SALVAR ARQUIVOS
#CARREGAR E SALVAR ARQUIVOS
#CARREGAR E SALVAR ARQUIVOS
#CARREGAR E SALVAR ARQUIVOS
#CARREGAR E SALVAR ARQUIVOS
#CARREGAR E SALVAR ARQUIVOS

#É possível definir o diretório onde os arquivos serão
#salvos ou carregados pera funcão setwd(), ou pelo menu
#Session -> Set Working Directory -> Choose Directory
?setwd
setwd(dir="~/Desktop")
#linux:  setwd("~/")
getwd()
setwd("~/Downloads/Introdução ao R Studio")

#a função dir() lista todos os arquivos no diretório
dir()

#Defina o diretório padrão para onde achar conveniente
#e vamos salvar e carregar um arquivo nesse diretório
setwd("~/Documents/UnB/AULAS/R e GLM/2020-02")
dir()


#Vamos criar uma tabela com os dados:
dados <- data.frame(ID = 1:10,
                  dados1 = rnorm(n=10),
                  dados2 = rnorm(n=10))
head(dados)

?rnorm

#para salvar a tabela usamos a funcao write.table().
#Veja na ajuda os detalhes dessa função:
?write.table()

#agora vamos salvar o arquivo
write.table(x=dados, file="meusdados.txt")

#veja aqui se ''meusdados.txt' foi salvo no diretório
dir()

#é possível também salvar em formato .csv
write.csv(x=dados, file="meusdados.csv",
          row.names = FALSE)
?write.csv
dir()


#para ler os dados usa-se read.table()
#veja o help:
?read.table()


#carregar os arquivos e atribuir a um objeto 'meusdados'
meusdados <- read.table(file="meusdados.txt",
                        header=TRUE)

#a mesma coisa para um csv. Note que em portugues
#o separador de colunas é geralmente ';' e o separador de 
#decimal ','. No entanto o default do R muitas vezes é
#usar ',' como separador de coluna e '.' como separador de
#decimal. Isso pode ser ajustado usando os argumentos
#'sep' e dec=''
meusdados.csv<-read.csv(file="meusdados.csv",
                        sep=",", dec=".")

#Erro por causa dos separadors
#meusdados.csv2<-read.csv(file="meusdados.csv", sep=";", dec=",")


#Exercícios
#Exercícios
#Exercícios

#1. Escolha um conjunto de dados de seu interesse e tente abri-lo no R como um data.frame

df <- iris
df
#2. Selecione parte desse data.frame e salve com outro nome.
especies <- data.frame(df$Species)
write.csv(x = especies,
          file = "especiesiris.csv",
          row.names = F)

#3. Carregue esse data.frame que foi salvo na questão 2.
df_especies = read.csv(file = "especiesiris.csv", sep = ",")
df_especies
