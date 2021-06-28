
###Resolução dos EXERCICIOS####
###Resolução dos EXERCICIOS####
###Resolução dos EXERCICIOS####

#Vetores
#1. Crie dois vetores, cada um com 10 números.
v1<-1:10
v2<-c(8,1,4,6,8,3,2,6,8,9)

#2. Calcule a divisão do vetor 1 pelo 2.
v1/v2 
#note que ele divide cada compomente pelo correspondente no outro vetor.
#se eles tiverem tamanhos diferentes, não vai funcionar. A não ser que
#o segundo vetor tenha apenas 1 componente.

#3. Calcule a soma total dos componentes
#de cada um dos vetores
#dica: use a função sum()
sum(v1)
sum(v2)

?sum

#4. Teste se a soma total do vetor 1 
#é maior do que a do vetor 2. #Veja o resultado no console.
#dica: use > ou < 
sum(v1)>sum(v2)

#5 teste se eles sao iguais.
#dica use ==
sum(v1)==sum(v2)


#6. Selecione o primeiro componente vetor1
v1[[1]]

#7.Selecione o terceiro componente
v1[[3]]

#8.Selecione o terceiro e o quinto componente
v1[c(3,5)]

#9. Atribua nomes a um vetor e selecione um
#componente pelo nome, não pela posição como acima.
names(v1)<-c("p1","p2","p3","p4","p5","p6","p7","p8","p9","p10")
v1[["p5"]]

#10 selecione componentes de um vetor que
#sejam maiores ou iguais (>=) a um determinado valor.
#atribua isso a outro vetor.
v1[v1>=3]

#11. Selecione os componentes do vetor com base no
#resultado de um teste lógico (==, !=, >, <, >=, <=)
#de outro vetor.
v1[v2>3]


#Matrizes
#Matrizes
#Matrizes
#1. Crie uma matriz com 10 colunas e 3 linhas
m<-matrix(ncol=10, nrow=3, data = 1:30)

#2. Use a função t() para transpor a matriz
m<-t(m)

#3. Quantas linhas e colunas ela tem agora?
nrow(m)

#4. Extraia da matriz um vetor com a segunda coluna
v1<-m[,2]

#5. Multiplique apenas a segunda coluna por 3
m[,2]<-m[,2]*3

#6. Extria apenas o triangulo inferior da matriz. Dica: veja ?lower.tri
m[lower.tri(m)]

#7. Crie uma matrix de 2 linhas e 3 colunas com apenas nomes
m2<-matrix(ncol=3,nrow=2,
           data=c("p1","p2","p3","p4","p5","p6"))

#8. Substitua o componente da linha 1 coluna 1 por "Zoologia"
m2[1,1]<-"zoologia"
m2


#FATORES
#FATORES
#FATORES
#1.Faça o mesmo para algum fator que tenha relação com a sua pesquisa
padrao_coloracao<-c("backgroun matching", "diruptive", "aposematic", 
                    "backgroun matching", "diruptive", "aposematic",
                    "backgroun matching", "diruptive", "aposematic",
                    "backgroun matching", "diruptive", "aposematic")
padrao_coloracao<-factor(padrao_coloracao)

#2. Fatores podem ser ordenados:
temp <- c("High", "Low", "High","Low", "Medium")
factor_temp <- factor(x=temp,
                      ordered = TRUE,
                      levels = c("Low", "Medium", "High"))

#Selecione os valores de factor_temp que são maiores
#do que Low. Dica: use a mesma sintaxe que você usou
#nos vetores.
factor_temp[factor_temp>"Low"]


#DATA FRAME
#DATA FRAME
#DATA FRAME
#DATA FRAME
#1. Usando o data.frame planetas, selecione a primeira linha
#das colunas 2 e 5
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planetas <- data.frame(name, type, diameter, rotation, rings)

planetas[1,c(2,5)]

#2. Selecione apenas os planetas que tem diâmetro menor do que 0.6
planetas[,planetas$diameter<0.6]

#3. A função order() retorna um novo vetor com a posição
#ordeneda. Por exemplo
v1<-c(10,50,20,70,90,40,20)
ordem.v1<-order(v1)
ordem.v1 #indica a ordem ascendente do vetor v1.
#se eu quiser reordená-lo:
v1<-v1[ordem.v1]
v1 #agora v1 está em ordem crescente

#Agora ordene o data.frame
#planetas com base no diâmetro
planetas<-planetas[order(planetas$diameter),]

#4. Crie um data.frame com três colunas. A primeira coluna com números,
#a segunda, com um fator e a terceira com TRUE/FALSE.
massa <- c(0.10,0.15,0.20,0.05,0.30)
instar <- c("segundo","segundo","terceiro","primeiro","quarto")
instar <- factor(instar, levels = c("primeiro","segundo","terceiro","quarto"),
       ordered = TRUE)
parasita <- c(TRUE,TRUE,TRUE,FALSE,FALSE)

dados <- data.frame(massa,instar,parasita)
dados


#LISTAS list()
#LISTAS list()
#LISTAS list()
#LISTAS list()
#LISTAS list()
#EXERCÍCIOS
#1. Selecione a primeira coluna do data.frame contido na minha_lista
meu_vetor <- seq(from=1,to=10,by=1)
minha_matriz <- matrix(1:9, ncol = 3, nrow = 3)
meu_df <- mtcars[1:10,]
minha_lista <- list(meu_vetor = meu_vetor,
                    minha_matriz = minha_matriz,
                    meu_df = meu_df)

minha_lista$meu_df[,1]


#2. Cria uma lista, com a primeira dimensão sendo um vetor de TRUE/FALSE,
#a segunda dimensão o data.frame iris, e na terceira um vetor com o 
#seu nome.
logica<-c(TRUE,FALSE,TRUE,FALSE,FALSE,FALSE,FALSE)
data("iris")
iris
meu_nome<-"felipe"

resposta<-list(logica=logica, iris=iris, meu_nome=meu_nome)
resposta

#3. Modifique o nome da primeira dimensão da sua lista.
#dica use a função names()
names(resposta)[[1]]<-"novo_nome"
