
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
