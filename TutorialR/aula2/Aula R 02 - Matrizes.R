#MATRIZES
#MATRIZES
#MATRIZES
#linhas e colunas; função matrix()
#Criar uma
#matriz com 3 linhas e 3 colunas
?matrix
matrix()
mat <- matrix(nrow = 3, ncol = 3)
mat

#Atribuir números de 1 a 9 a essa matriz
mat<-matrix(data= c(1,2,3,4,5,6,7,8,9) ,
            nrow=3,ncol=3) #nrow = 
mat

#ou
mat[,]<-c(1,2,3,4,5,6,7,8,9) #se quiser colocar linha ou coluna tem que descrever
mat

#ou #e possivel fazer assim tambem, de um jeito mais simplificado
1:9
mat[,] <- 1:9 #preenche toda a matriz com numeros de 1 a 9, mais pratico fazer assim
mat

#Dar nomes as colunas e linhas da matriz
#rownames() e colnames(). dica: use c()
rownames(mat) #atribuir nomes aos nomes das linhas da matriz
rownames(mat) <- c("um","dois","tres")
mat

colnames(mat) <- c("um","dois","tres") #nome das colunas ver console
mat

#Calcular a soma das colunas e das linhas
#rowSums() e colSums()
rowSums(mat) #soma os numeros das linhas
colSums(mat) #soma os numeros das colunas
#?rowSums #help sobre as funcoes
rowMeans(mat) #Funcao para calcular as medias das linhas
colMeans(mat) #Funcao para calcular as medias das colunas

#Adicionar uma nova coluna e uma nova linha
#cbind() e rbind(). dica: use cbind(mat,c(algo aqui)) #cbind e funcao de juntar colunas rbind e de juntar linhas
vetor1<-c(1,2)
vetor2<-c(3,4)
c(vetor1,vetor2)

mat
v1<-c(100,100,100)
mat <- cbind(mat , v1)

v2<-c(10,10,10,10)
mat<-rbind(mat,v2)

matrix(data, nrow = rows, ncol = cols)
#Selecionando elementos de uma matriz.
#Selecione os elementos na linha 2 e coluna 3
mat[2,3]

#Selecionar os elementos das linhas 2 e 3. e 
#colunas 1 e 2
mat[c(2,3), c(1,2)]

#6.6.Excluir uma coluna #na verdade nao exclui, apenas extrai as colunas ou linhas de interesse
mat[1:4,-4] #ou
mat[ ,c(1,2,3)] #ou
mat[ ,1:3] #ou

#6.7.Adicionar uma coluna no meio usando o cbind
v3<-c(10,10,10,10)

cbind(mat[,1], v3, mat[,2:3])

#Aritmética com matrizes
#Somar um número
mat1<-matrix(data = c(1,2,3,4,5,6,7,8,9),
             nrow=3, ncol=3)
mat1

#Soma 10 a todos os elementos da matrix
mat1+10

#multiplica por 2 todos os elemetos da matrix
2*mat1


#Multiplicar elementos de duas matrizes aritmeticamente ##OBS:sempre TEM que ter o mesmo tamanho
mat1<-matrix(data=c(1,2,3,4,5,6,7,8,9),
             nrow=3, ncol=3)
mat2<-matrix(data=c(1,2,3,4,5,6,7,8,9),
             nrow=3, ncol=3)
mat1*mat2 

#Note que isso é diferente de multiplicação de matrizes em
#algebra linear (matrix multiplication): ##segundo o prof esta e diferente da funcao acima, esta e multiplicacao de matriz por matriz
mat1 %*% mat2 #este e um processo diferente do anterios, utilizaremos este no futuro para modelos lineares


###EXERCICIOS####
###EXERCICIOS####
###EXERCICIOS####
###EXERCICIOS####
#1. Crie uma matriz com 10 colunas e 3 linhas
mat = matrix(nrow = 3, ncol = 10)
mat[,] = 2:31
mat
#2. Use a função t() para transpor a matriz
t(mat)
#3. Quantas linhas e colunas ela tem agora?
# R: mat tem 3 colunas e 10 linhas

#4. Extraia da matriz um vetor com a segunda coluna
vet <- mat[,2]
vet
#5. Multiplique apenas a segunda coluna por 3
3*mat[,2]
#6. Extria apenas o triangulo inferior da matriz. Dica: veja ?lower.tri
?lower.tri
lower.tri(mat)
#7. Crie uma matrix de 2 linhas e 3 com apenas nomes
mat2 <- matrix(nrow=2,ncol=3)
rownames(mat2) <- c("vermelho", "azul")
colnames(mat2) <- c("preto", "rosa", "verde")
mat2
#8. Substitua o componente da linha 1 coluna 1 por "Zoologia"
mat2[1,1] <- "Zoologia"