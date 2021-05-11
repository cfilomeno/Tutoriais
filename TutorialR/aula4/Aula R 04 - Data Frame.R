#DATA FRAME
#DATA FRAME
#DATA FRAME
#DATA FRAME
#Vetores e matrizes só aceitam elementos de um mesmo tipo. Em um
#data frame cada coluna pode conter um conjunto de dados
#diferente. Na prática funciona como se fosse
#uma tabela do Excel.
#Existe no R alguns data.frame de exemplo. Veja iris:
iris
?iris
#ou
View(iris)

#As colunas e linhas podem ser acessadas do mesmo jeito que a matriz
#Selecionar a segunda coluna
iris [ ,2]
novo_vetor<-iris[ ,2]

#Selecionar a segunda linha
iris[2, ]

#Selecionar mais de uma linha
iris[c(2,4), ]

#Mas podem ser acessadas pelo nome das colunas também, usando o $
colnames(iris) #ver o nome das colunas com funcao colnames
iris$Species #o $ extrai os dados, aqui pedimos os dados de especies
iris$Petal.Length #extrai os dados de tamanhos de petalas

#Data frames são criados com a função data.frame():
#Nesse exemplo primeiro são criados uma série de vetores:
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

##Esses vetores são unidos em um data.frame chamado planetas
?data.frame
planetas <- data.frame(name, type, diameter, rotation, rings)
planetas
View(planetas)

#Manipulando um data.frame
planetas[planetas$rings==FALSE, ]
planetas[planetas$diamete>=5, ]


############
#EXERCÍCIOS#
#EXERCÍCIOS#
#EXERCÍCIOS#
############
#1. Usando o data.frame planetas, selecione a primeira linha
#das colunas 2 e 5

#2. Selecione apenas os planetas que tem diâmetro menor do que 0.6

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

#4. Crie um data.frame com três colunas. A primeira coluna com números,
#a segunda, com um fator e a terceira com TRUE/FALSE.