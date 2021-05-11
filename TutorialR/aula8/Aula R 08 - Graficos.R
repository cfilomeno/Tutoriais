#PLOTAR DADOS
#PLOTAR DADOS
#PLOTAR DADOS
#PLOTAR DADOS
#PLOTAR DADOS
#PLOTAR DADOS
#No R é possível fazer figuras prontas para a publicacao.
#Além disso, para uma análise estatística é indispensável
#visualizar os dados. As principais funcoes para plotar dados
#sao plot(), points() e lines(), mas há infinitas outras.
#Há também pacotes para isso: 'lattice' e 'ggplot2'


#Funcao plot()
#Vamos criar uma data.frame com valores de x e y e um certo erro
x<-seq(1:100)
y<-2*x 
y<- y + rnorm(n=100, mean=0, sd = mean(x) )
dados<-data.frame(y=y, x=x)

#nesse caso, a coluna y de 'dados' sera plotada
#contr a coluna 'x'
?plot
plot(y = dados$y , x = dados$x,
     xlab="X", ylab="Y") #coloca nome nos eixos X e Y

#a função par() contém a lista de argumentos
#que podem ser usados para modificar um plot.
#Por exemplo, vou plotar os dados acima na cor
#azul:
?par()
plot(dados$y~dados$x, col="blue",
     xlab="X", ylab="Y") #muda a cor 


#É possível acrescentar novos dados ao gráfico
#usando, por exemplo, as funcões points() e lines():
plot(dados$y~dados$x, col="blue",
     xlab="X", ylab="Y")

dados2 <- dados
dados2$y <- dados2$y + 10

#acrescenta novos pontos, dados
#?points
points(y = dados2$y, x = dados2$x, col="red")

#notação de formula é o mesmo que escrever a linha 46, so que usando formula
#dados2$y ~ dados2$x
plot(dados$y~dados$x, col="blue",
     xlab="X", ylab="Y")
points(dados2$y ~ dados2$x, col="red")

points(x=60,y=150,col="green")
text("meu texto", x=60,y=150, col="black") #acrescenta texto

#colocar linha no  plot
#?par
lines(x=c(50,80), y=c(130,240), col="red",
      lwd = 3, lty = 2)


#Até certo ponto a funcao plot() detecta o tipo
#de dados e tenta produzir um plot de acordo com eles.
#Por exemplo, vamos criar dados separados em duas categorias:
massa <- c(rnorm(n=50,mean=80,sd=20), rnorm(n=50,mean=60,sd=15))

?gl
sexo <- gl(n=2, k=50, labels=c("masculino","feminino"))

plot(massa ~ sexo) #a função usada automaticamente é a boxplot

#veja:
?boxplot
boxplot(massa~sexo, ylab="massa (Kg)", xlab = "Sexo") #modificou o nome do eixo Y


#Outras funcoes que podem ser úteis:
#?coplot() ##funcao coplot plota seu grafico com certos niveis que vc estabelece. arui usamos lat e long 
coplot(lat ~ long | depth, data = quakes) #exemplo mostra a variacao dos seus dados em 3 dimensoes e nao 2

#?dotchart() ##util para verificar dados fora do padrao e ate erros no seus dados, como erro de digitacao
dotchart(VADeaths, main = "Death Rates in Virginia - 1940")

#?abline() ##tracar uma regressao nos seus dados 
#vamos acrescentar uma coluna tempo
tempo<-c(rep(24,50), rep(25,50)) #criou um vetor tempo, com 100 num, e pediu p repetir o num 24 e 25 por 50 vezes
tempo
dados<-cbind(dados,tempo) #acrescentamos isso no seu dataframe

#abaixo iremos plotar os dados da coluna Y (apenas onde o tempo = 24) em funcao dos dados da coluna X(apenas onde o tempo = 24)  
plot(dados$y[dados$tempo==24] ~ dados$x[dados$tempo==24],
     type="p")
#?abline #abaixo criamos uma linha de regressao onde de inclinacao 
abline(a=0, #interseccao
       b=2, #coeficiente de inclinacao
       col="red") #cor vermelha



#Exercício
##13.3. Veja a ajuda em par() para plotar os dados
#acima com outros nomes para o eixo-x e o eixo-y

boxplot(dados$y~dados$x, ylab="24Y", xlab = "24X")


#13.6
#Plote os dados1 abaixo com a cor azul,
#depois acrescente os pontos do segundo conjunto de 
#dados (dados2) na cor verde
x1<-seq(1:100)
y1<-2*x + rnorm(n=100, mean=0, sd=mean(x)/2)
dados1<-data.frame(y=y,x=x)

x2<-seq(1:100)
y2<-2+3*x + rnorm(n=100, mean=0, sd=mean(x)/2)
dados2<-data.frame(y=y2,x=x2)

#Pesquise na função par() como plotar dois
#gráficos lado a lado e plote os dados acima dessa forma
#Veja:
?par


#Descubra como mudar os limites de um gráfico
#e plote os dados acima com o limite y de -100 a 350
#e x de -20 a 120
#Veja:
?plot.default
