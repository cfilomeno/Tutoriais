=============================================
##OS TIPOS DE OBJETO: CRIAÇÃO E MANIPULAÇÃO##
=============================================

###Vetor numérico###
********************

a<-1

c(1,2,3,4,5)->b

dados.campo=seq(1,10,2)   #cria uma sequência de números de 1 até 10 de 2 em 2

x=seq(3,10)   #cria seq de 3 até 10

sample(x, 2, replace=T)   #sorteia dois números do vetor x, com reposição do número sorteado

mata.1=rep(1:2,c(10,3))   #repete o número 1 dez vezes e o número 2 três vezes

exemplo=c(1:10)   #cria uma seq de 1 até 10

length(exemplo)   #dá o número de itens do vetor


###Vetor de caracter###
***********************

dados.pessoais=c(nome="fulano", nascimento="08/10/1934", estadocivil="solteiro")
dados.pessoais

###Vetor lógico###
******************

is.factor(x)   #diz se x é fator (FALSE)

is.matrix(x)   #diz se x é uma matriz (FALSE)

is.vector(x)   #diz se x é um vetor (TRUE)

a<-1
a<1   # 'a' é menor que 1? (FALSE)
a==1   # 'a' é igual a 1? (TRUE) **utilizar dois símbolos de igual(=) para que não seja criado um novo objeto com o nome 'a'
a>=1   # 'a' é maior e/ou igual a 1? (TRUE)
a!=2   #o objeto 'a' não é igual a dois? (TRUE) (!=negação)

###Fator###
***********

dados=c("baixo", "menos baixo", "médio", "alto")   #cria um vetor com variáveis categóricas

as.factor(dados)   #transforma o vetor num fator

is.factor(dados)   #testa a conversão

###Matriz###
************

xy=matrix(1:12, nrow=3)   #cria uma matriz de 3 linhas, com números de 1 a 12 

rownames(xy)=LETTERS[1:3]   #renomeia as linhas com as letras A, B e C em maiúsculas (LETTERS)

colnames(xy)=c("mata.1", "mata.2", "mata.3", "mata.4")   #renomeia as colunas com os nomes mata.1, mata.2.....

xy

t(xy)   #transpõe a matriz

class(xy)  #mostra o que é o objeto xy (matrix)

xy[,1]   #acessa a primeira coluna da matriz

xy[1,]   #acessa a primeira linha da matriz

  	#### As chaves significam [linha, coluna]

head(xy)   #acessa as primeiras linhas da matriz
								####útil para matrizes muito extensas
tail(xy)   #acessa as últimas linhas da matriz

fix(xy)   #edita uma matriz ou data frame

str(xy)   #avalia a estrutura do objeto

summary(xy)   #fornece um resumo do objeto


###Data frame### (semelhante a uma matriz, mas aceita vetores de tipos diferentes)
****************

comunidade= data.frame(especies=c("D.nanus", "S.alter", "I.guentheri", "A.callipygius"), habitat=factor(c("Folhiço",
 "Arbóreo", "Riacho", "Poça")), altura=c(1.1, 0.8, 0.9, 1), distancia=c(1, 1.7, 0.6, 0.2))

as.data.frame(xy)   #converte num data frame

class(xy)   #testa a conversão

str(comunidade)   #avalia a estrutura do objeto

fix(comunidade)   #edita o objeto

edit(comunidade)   #edita o objeto

###Lista###
***********

Lista.ex=list(name="Toyoyo", wife="Rafaela", no.children=2, child.ages=c(2,6))   #cria uma lista

Lista.ex$name   #extrai parte da lista (a parte depois do $)


###################################################################################################################
###################################################################################################################

====================================
##IMPORTAÇÃO E EXPORTAÇÃO DE DADOS##
====================================  
  
#Exercício 1#
*************
?rnorm

a=rnorm(30, mean=1, sd=2.5)   #cria um conjunto de dados com distribuição normal, 30 unidades, média = 1 e desvio-padrão = 2.5
b=rnorm(30, mean=1, sd=2.5)

?t.test

t.test(a,b)   #realiza um teste t entre os conjuntos 'a' e 'b'

#Exercício 2#
*************

vetor1=c(1,3,5,6,4,2,7)

vetor2=c(seq(1,32))   #cria uma sequência de 1 a 32

vetor3=c(seq(1,32,2))   #cria uma sequência de 1 a 32 de 2 em 2

vetor4=c(980:345)   #cria uma sequência decrescente de 980 a 345

###2_a
a=length(vetor1)   #calcula o comprimento do vetor1
b=length(vetor2)
c=length(vetor3)
d=length(vetor4)

###2_b
a1=sum(vetor1)   #soma os componentes do vetor
a2=sum(vetor2)
a3=sum(vetor3)
a4=sum(vetor4)

###2_c
m1=a1/a
m2=a2/b
m3=a3/c
m4=a4/d

#Exercício 3#
*************
m13=mean(vetor1)
m23=mean(vetor2)
m33=mean(vetor3)
m43=mean(vetor4)

#Exercício 4#
*************
dados.campo=seq(1,10,2)

###4_a
dados.campo[1:5]   #seleciona os cinco primeiro elementos

###4_b
dados.campo [-(1:2)]   #seleciona todos com exceção dos dois primeiros

###4_c
dados.campo[3]   #seleciona o terceiro elemento

###4_d
dados.campo[(dados.campo<4)]   #seleciona os elementos menores que 4

#Exercício 5#
*************

ex5=seq(1,20)   #cria uma sequência de 1 até 20
l1=letters[ex5]   #transforma os números em letras, na sequência do alfabeto

#Exercício 6#
*************
l2=LETTERS[ex5]

#Exercício 7#
*************

cbind(l1,l2)   #une os dois vetores

#Exercício 8#
*************
xy=matrix(1:12, nrow=3)

###8_a
xya=xy*3   # multiplica todos os elementos por 3

###8_b
xyb=xya/4   #divide os elementos por 4

###8_c
xy[3,1]   #acessa o elemento da terceira linha e primeira coluna
  
###################################################################################################################
###################################################################################################################

==========================================
##CRIAÇÃO E MANIPULAÇÃO DE GRÁFICOS NO R##
==========================================

#Exercício 1#
*************

library("lattice")# carrega o pacote lattice
data(quakes)  #carrega o dado "quakes", que já está no pacote
head(quakes)
xyplot(lat~long, data=quakes)	#plota a latitude em função da longitude, retirando os dados de "quakes"

#Exercício 2#
*************

library(MASS)
data(melanoma)
head(melanoma)
plot(melanoma$incidence, melanoma$year, cex=24,xlab="Frequência", ylab="Anos",bty="L", data=melanoma)
	# plota a incidência de melanoma em função dos anos
	# cex muda o tamanho dos pontos
	# xlab e ylab renomeiam os eixos
	# bty="L" retira as bordas direita e superior

#Exercício 3#
*************

a=c(1,3,4,5,6)  # cria um vetor com o conjunto entre parênteses
b=c(2,2,4,5,7)
plot(a,b)	
rl=lm(a~b)	# calcula uma regressão de 'a' em função de 'b'
abline(rl)	# plota no gráfico a reta ajustada à regressão


#Exercício 4#
*************

dados=rnorm(1000,0,1)	#cria um conjunto de dados com 1000 números, média igual a zero e desvio padrão igual a 1
hist(dados,xlab="Observações", ylab="Frequência", col="gray")

##a)
points(mean(dados),0,pch=21,bg="red")	## plota a média do conjunto 'dados' (eixo x)
							## o número zero corresponde ao local no eixo y onde vai ser colocado o ponto
							## 'pch' especifica o tipo de símbolo a ser utilizado (para maiores detalhes verificar em ?points)
							## 'bg' escolhe a cor a ser utilizada no preenchimento do símbolo quando este é aberto

##b)
points(quantile(dados,c(0.05,0.95)),c(0,0),pch=25,bg="green")	## plota os quantis (em y=0 para os dois)

##c e d)
legend("topleft",c("média", "quantis"), pch=c(21,25),pt.bg=c("red", "green"))
		## insere a legenda no canto superior esquerdo
		## ver '?legend' para explorar as várias opções possíveis para a legenda

###################################################################################################################
###################################################################################################################

==============================
##DISTRIBUIÇÕES ESTATÍSTICAS##
==============================
  
 
## DISTRIBUIÇÃO BINOMIAL
************************

help (Binomial) ## Ajuda com as funções

## DEFINIÇÃO E CONCEITOS

dbinom(x, size, prob)## Probabilidade da variável X

pbinom(q, size, prob)## Probabilidade dos valores menores que X
  		   ##	É a curva de probabilidade acumulada

qbinom(p, size, prob) ## Você dá um valor de probabilidade e ele retorna
			    ## número determinado pela probabilidade acumulada 

rbinom(n, size, prob) ## gera números de sucessos aleatórios para 
			    ## a distribuição binomial

## EXEMPLO DA AULA

dbinom(5, size = 12, prob = 0.5) ## Exato valor de 5 caras

pbinom(5, size = 12, prob = 0.5) ## Valores igual ou menores que 5

pbinom(5, size = 12, prob = 0.5, lower.tail = F)## Valores igual ou maiores 
								## que 5 	

qbinom(0.38, size = 12, prob = 0.5)## Valor acumulado - Inverso do anterior

rbinom(5, size = 12, prob = 0.5) ## Não são iguais sempre - aleatórios


## VALOR ESPERADO E MÉDIA
 
 ## E = n * p
 
       12 * 0.5

## VARIÂNCIA

  ## V = n * p *(1 - p)

     12 * 0.5 *(1 - 0.5)

## GRAFICO MOSTRANDO A DISTRIBUIÇÃO BINOMIAL

plot(dbinom(seq(0,12, by =1), size = 12, prob = 0.5), type ="h",
	xlab = "Sucesso", ylab = "Probabilidade",
	main = "Função distribuição de probabilidade")

plot(pbinom(seq(0,12, by =1), size = 12, prob = 0.5), type ="h",
	xlab = "Sucesso", ylab = "Probabilidade", 
	main = " Função de distribuição acumulada")


## EXEMPLO BROMÉLIA

dbinom(40, size = 100, prob = 0.5)## Probabilidade de ser encontrada em 40 
					    ## cidades no total de 100 
					    ## com probabilidade de 0.5

sum(dbinom(46:54, 100, 0.5))## Pode determinar um intervalo


## GRAFICO BROMELIA
 
plot(dbinom(seq(0,100, by =1), size = 100, prob = 0.5), type ="h",
	xlab = "Presença", ylab = "Probabilidade",
	main = "Função distribuição de probabilidade")

plot(pbinom(seq(0,100, by =1), size = 100, prob = 0.5), type ="h",
	xlab = "Presente", ylab = "Probabilidade", 
	main = " Função de distribuição acumulada")



## DISTRIBUIÇÃO POISSON
***********************

## DEFINIÇÃO E CONCEITOS

dpois(x, lambda)     ## Probabilidade da variável X

ppois(q, lambda)     ## Probabilidade dos valores menores que X
			   ##	É a curva de probabilidade acumulada

qpois(p, lambda)      ## Você dá um valor de probabilidade e ele retorna
			    ## número determinado pela probabilidade acumulada 

rpois(n, lambda)      ## gera números de sucessos aleatórios para 
			    ## a distribuição poisson



## GRAFICO MOSTRANDO A DISTRIBUIÇÃO POISSON

plot(dpois(seq(1,15, by =1), lambda = 10), type ="h",
	xlab = "Número de visitas", ylab = "Probabilidade",
	main = "Função distribuição de probabilidade")

plot(ppois(seq(0,10, by =1), lambda = 2), type ="h",
	xlab = "Número de visitas", ylab = "Probabilidade", 
	main = " Função de distribuição acumulada")


## EXEMPLOS

dpois (0, 2)
dpois (1, 2)
dpois (2, 2)
ppois (2, 2, lower.tail = F)

plot(dpois(seq(1,10, by =1), lambda = 10), type ="h",xlab = 
"Número de visitas", ylab = "Probabilidade",  main = "Função 
massa de probabilidade")

plot(ppois(seq(1,10, by =1), lambda = 10),type ="h", xlab = 
"Número visitas",  ylab = "Probabilidade",  main = "Função de 
probabilidade acumulada")

plot(dbinom(seq(1,50, by =1), size =50, prob = 0.09), type 
="h",  ylab = "Probabilidade",  main = "Distribuição Binomial")

plot(dpois(seq(1,50, by =1), lambda = 50*0.09), type ="h", ylab 
= "Probabilidade", main = "Distribuição Poisson")


## EXERCICIO TIPOS SANGUINEOS

dbinom(2, size = 5, prob = 0.4) * dbinom(1, size = 5, prob = 0.45)*
	 dbinom(1, size = 5, prob = 0.1)* dbinom(1, size = 5, prob = 0.05)



## DISTRIBUIÇÃO NORMAL
**********************

## EXEMPLO DA AULA

## Qual é a probabildiade que um peixe capturado aleatóriamente
## tenha 20.15 cm ou mais? MÉDIA = 17.1; Desvio = 1.21


## PRIMEIRAMENTE VAMOS VER A DISTRIBUIÇÃO DOS DADOS

x = seq(12,22,by=0.1)

y=dnorm(x,mean = 17.1,sd = 1.21)

plot(x, y, type = "l", lwd = 2, col = "red", xlab = "Tamanho do peixe")

## O QUE QUEREMOS ??

area = seq(20.15, 22, by = 0.1)
y1 = dnorm(area, mean = 17.1, sd = 1.21)
polygon(c(20.15,area,22),c(0,y1,0),col="gray")

pnorm(20.15, mean = 17.1, sd = 1.21, lower.tail = F)


## EXEMPLO 2
************

x = seq(70,130,length = 200)
y = dnorm(x, mean=100, sd=10)
plot(x, y, type="l", lwd=2, col="red")
x = seq(70, 90, length=100)
y = dnorm(x, mean=100, sd=10)
polygon(c(70,x,90),c(0,y,0), col="gray")


pnorm(90, mean = 100,sd = 10)## Probabilidade de valores menores que 90


## EXEMPLO 3
************

x = seq(70,130,length=200)
y = dnorm(x, mean = 100, sd = 10)
plot(x, y, type="l", lwd=2, col="red")
x=seq(90, 100, length = 200)
y = dnorm(x, mean = 100, sd = 10)
polygon(c(90,x,100), c(0,y,0), col = "gray")


pnorm(100, mean=100, sd=10)- pnorm(90,mean = 100,sd = 10)


## TESTAR AS PREMISSAS DA DISTRIBUIÇÃO NORMAL
###############################################

## 1 DESVIO PADRAO
####################

x = seq(70, 130, length=200)
y = dnorm(x, mean = 100, sd=10)
plot(x, y, type="l", lwd=2, col="red")
x = seq(90, 110, length=200)
y = dnorm(x, mean = 100, sd = 10)
polygon(c(90,x,110),c(0,y,0),col="gray")


pnorm(110, mean=100, sd=10)-pnorm(90, mean=100, sd=10)


## 2 DESVIOS PADRÕES
#####################

x=seq(70, 130, length=200)
y=dnorm(x, mean=100, sd=10)
plot(x, y, type="l", lwd=2, col="red")
x=seq(80, 120, length=200)
y=dnorm(x, mean=100, sd=10)
polygon(c(80,x,120), c(0,y,0), col = "gray")



pnorm(120, mean=100, sd=10)- pnorm(80, mean=100, sd=10)



## DESCOBRIR UM VALOR DESCONHECIDO A PARTIR DA PROBABILIDADE
#############################################################

x = seq(70, 130, length=200)
y = dnorm(x, mean=100, sd=10)
plot(x, y, type="l", lwd=2, col="red")
x = seq(70, 116.44, length=200)
y = dnorm(x, mean=100, sd=10)
polygon(c(70,x,116.44), c(0,y,0), col = "gray")
text(100, 0.015, "0.95%", font = 2)


qnorm(0.95, mean = 100, sd = 10)



## DETALHES
###############

x = seq(70, 130, length=200)
y = dnorm(x, mean=100, sd=10)
plot(x, y, type="l", lwd=2, col="red")
x = seq(70, 91.58, length=200)
x1 = seq(91.58,130, length=200)
y = dnorm(x, mean=100, sd=10)
y1 = dnorm(x1, mean=100, sd=10)
polygon(c(70,x,91.58), c(0,y,0), col = "gray")
text(87, 0.006, "0.20%", font = 2)
polygon(c(91.58,x1,130), c(0,y1,0), col = "yellow")
text(103, 0.015, "0.80%", font = 2)


qnorm(0.2, mean = 100, sd = 10, lower.tail = T)
qnorm(0.8, mean = 100, sd = 10, lower.tail = F)


##EXEMPLO
#############

## ALTURA MÉDIA DE ÁRVORES NO CERRADO É DE 2.8 METROS COM DESVIO PADRÃO DE
## 0.5 METROS. A PARTIR DE QUAL ALTURA ESTARÃO OS 5% MAIS ALTOS?

x = seq(1, 4.6, by = 0.1)
y = dnorm(x, mean = 2.8, sd = 0.5)
plot(x, y, type="l", lwd=2, col="red", xlab = "Altura", 
	ylab = "Probabilidae")
x = seq(3.62, 4.6, by = 0.1)
y = dnorm(x, mean = 2.8, sd = 0.5)
polygon(c(3.62,x,4.6), c(0,y,0), col = "gray")
text(3.8, 0.04, "0.05%", font = 2, cex = 0.8)




qnorm(0.05, mean = 2.8, sd = 0.5, lower.tail = F)


## QUERO SABER OS 5% MAIS BAIXOS.. COMO FAZER ??
#################################################



qnorm(0.05, mean = 2.8, sd = 0.5, lower.tail = T)


## EXERCICIOS
*************

#Exercício 1#
*************
##  X = número de presas consumidas 2
##       média = 5

dpois (2, 5)


#Exercício 2#
*************
  
## a) X = número de ovos predados 3
##      média = 6 ovos


dpois (3, 6)


## b) 3 ou menos ovos predados

ppois (3, 6)



#Exercício 3#
*************

## a) p = 0.01
##         n = 30
##         k > 1

pbinom(1, size = 30, prob = 0.01, lower.tail = F)

## b) média = n.p = 30*0.01

ppois(1, 0.3, lower.tail = F) ## Valor muito parecido com o Binomial


#Exercício 4#
*************

##    média = 10
##         x = menor que 4

ppois(4, 10)


#Exercício 5#
*************
  
##	p = 0.25
##         n = 6
##         k = 3

dbinom(3, size = 6, prob = 0.25)


#Exercício 6#
*************

## p = 0.3
##         n = 4
##         k > 3

pbinom(3, size = 4, prob = 0.3, lower.tail = F)


#Exercício 7#
*************

##    p = 0.85
##         n = 15
##         k = 10

dbinom(10, size = 15, prob = 0.85)
dbinom(5, size = 15, prob = 0.15)


#Exercício 8#
*************

##    média = 400
##         desvio = 50
##         390 < x < 450


x = seq(300, 500, by = 0.01)
y = dnorm(x, mean = 400, sd = 50)
plot(x, y, type="l", lwd=2, col="red", xlab = "Comprimento", 
	ylab = "Probabilidae")
x1 = seq(390, 450, by = 0.1)
y1 = dnorm(x1, mean = 400, sd = 50)
polygon(c(390, x1 ,450), c(0,y1 ,0), col = "gray")
text(410, 0.004, "Prob = ?", font = 2, cex = 0.8)



pnorm(450, mean = 400, sd = 50)- pnorm(390, mean = 400, sd = 50)


#Exercício 9#
*************

## a) média = 4
##         desvio = 0.25
##         10% mais compridos

x = seq(3.2, 4.8, by = 0.01)
y = dnorm(x, mean = 4, sd = 0.25)
plot(x, y, type="l", lwd=2, col="red", xlab = "Altura", 
	ylab = "Probabilidae")
x1 = seq(4.32, 4.8, by = 0.1)
y1 = dnorm(x1, mean = 4, sd = 0.25)
polygon(c(4.32,x1 ,4.8), c(0,y1 ,0), col = "gray")
text(4.4, 0.25, "0.1%", font = 2, cex = 0.8)


qnorm(0.1, mean = 4, sd = 0.25, lower.tail = F)


#Exercício 10#
**************

##   média = 8
##         desvio = 2

## a  - menos que 5 mintuos

pnorm(5, mean = 8, sd = 2)


## b - Mais que 9.5 minutos

pnorm(9.5, mean = 8, sd = 2, lower.tail = F)

## c entre 7 e 10 minutos

pnorm(10, mean = 8, sd = 2) - pnorm(7, mean = 8, sd = 2)


#Exercício 11#
**************

##   média = 5
##         desvio = 0.9

## a  - 15% mais leves

qnorm(0.15, mean = 5, sd = 0.9)


## b - 50% médios não considerando os 15% mais leves

qnorm(0.65, mean = 5, sd = 0.9)

## c - 20% pesados

qnorm(0.85, mean = 5, sd = 0.9)

leves = 4,1 kg
médios = 4.1 < X < 5.4 Kg
pesado = 4.9 < X < 5.9 Kg
Extras = > 5.9 Kg

##################################################################################################################
##################################################################################################################

===================================
##GENERALIZED LINEAR MODELS (GLM)##
===================================

#    Mixed Effects Models and Extensions in Ecology with R (2009)
#    Zuur, Ieno, Walker, Saveliev and Smith.    Springer
#    This file was produced by Alain Zuur (highstat@highstat.com)
#    www.highstat.com


## CARREGANDO PACOTES NECESSÁRIOS PARA AS ANÁLISES
###################################################

install.packages("HH")
install.packages("multcomp")
install.packages("languageR")
install.packages("nlme")
install.packages("glmmML")
install.packages("lme4")
install.packages("AICcmodavg")
install.packages("bestglm")
install.packages("mgcv")
install.packages("MuMIn")
install.packages("pscl")
install.packages("MASS")
install.packages("bbmle")
install.packages("lattice")


library(HH)
library(multcomp)
library(languageR)
library(nlme)
library(glmmML)
library(lme4)
library(AICcmodavg)
library(bestglm)
library(mgcv)
library(MuMIn)
library(pscl)
library(MASS)
library(bbmle)
library(lattice)
library(AED)## Esse pacote tem que ser baixado da págia
  	## http://www.highstat.com/book2.htm

## CARREGANDO DADOS
#####################

data(RoadKills) ## Carregando dados - Os dados consistem do número de mortes
		    ## de anfíbios em uma rodovia em 52 sítios em Portugal


RK <- RoadKills ## Renomeando para facilitar

head(RK)

## TEORIA - Ecologia de Paisagem
## VARIÁVEL RESPOSTA  - Número de anfíbios mortos em um rodovia
## QUESTÃO - Quais variáveis da paisagem melhor explicam
## a mortalidade de anfíbios? 

## TRANSFOMO ALGUMAS VARIÁVEIS POR CAUSA DOS ALTOS VALORES
***********************************************************

RK$SQ.POLIC <- sqrt(RK$POLIC)
RK$SQ.WATRES <- sqrt(RK$WAT.RES)
RK$SQ.URBAN <- sqrt(RK$URBAN)
RK$SQ.OLIVE <- sqrt(RK$OLIVE)
RK$SQ.LPROAD <- sqrt(RK$L.P.ROAD)
RK$SQ.SHRUB <- sqrt(RK$SHRUB)
RK$SQ.DWATCOUR <- sqrt(RK$D.WAT.COUR)


## VERIFICANDO COLINEARIDADE ENTRE AS VARIÁVEIS INDEPENDENTES
###############################################################

## COLINEARIDADE é a existencia de correlação entre as covariáveis

Z1 <-cbind(RK$OPEN.L, RK$SQ.OLIVE, RK$MONT.S,RK$MONT, RK$SQ.POLIC,
     RK$SQ.SHRUB, RK$SQ.URBAN, RK$SQ.WATRES, RK$L.WAT.C,
     RK$L.D.ROAD, RK$SQ.LPROAD,RK$D.WAT.RES, RK$SQ.DWATCOUR,
     RK$D.PARK, RK$N.PATCH, RK$P.EDGE, RK$L.SDI)
     
corvif(Z1)



## Usamos valor de VIF = 3 para encontrar um conjunto de variáveis 
## explicativas que não contém colinearidade, foram retirados
## uma variável de cada vez, recalculados os valores de VIF,
## e repetiu o processo até todos os valores de VIF foram inferiores a 3.


Z2 <-cbind(RK$OPEN.L, RK$MONT.S, RK$SQ.POLIC, RK$SQ.SHRUB, RK$SQ.WATRES, 
	RK$L.WAT.C, RK$SQ.LPROAD, RK$SQ.DWATCOUR, RK$D.PARK)
     
corvif(Z2)

## MODELO GLOBAL
*****************

M1 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, family = poisson, data= RK)

summary(M1)


## AKAIKE INFORMATION CRITERION
**************************************

step(M1)


## AKAIKE INFORMATION CRITERION
************************************
M1 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, family = poisson, data= RK)

M2 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data=RK)
summary(M2)

M3 <- glm(TOT.N ~ MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data=RK)

M4 <- glm(TOT.N ~ L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data=RK)

## AKAIKE INFORMATION CRITERION
********************************

AIC <- ICtab(M1, M2, M3, M4, type = c("AIC"), weights = TRUE, 
	delta = TRUE, sort = TRUE)
AIC


## WEIGHT = são usados para medir a força da evidência em favor
##          de cada um dos modelos

## n/k < 40 

AICc <- ICtab(M1, M2, M3, M4, type = c("AICc"), weights = TRUE, 
	delta = TRUE, sort = TRUE, nobs = 52)
AICc


## Configura sub-modelos em uma lista
**************************************

Modelos <- list()
Modelos [[1]] <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, family = poisson (link = "log"), data=RK)
Modelos [[2]] <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson (link = "log"), data=RK)
Modelos [[3]] <- glm(TOT.N ~ MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson (link = "log"), data=RK)
Modelos [[4]] <- glm(TOT.N ~ L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data=RK)


## Cria um vetor com nomes dos modelos
***************************************

(Modnames <- paste("Mod", 1:length(Modelos), sep=""))


## Gera uma tabela com valores de AIC 
****************************************

(res.table <- aictab(cand.set = Modelos, modnames = Modnames, 
	second.ord = FALSE)) ## FALSE ele mostra AIC

(res.table <- aictab(cand.set = Modelos, modnames = Modnames, 
	second.ord = TRUE)) ## TRUE ele mostra AICc



## TESTE DE HIPÓTESES - Likelihood rate test (LRT)
###################################################

## DEVIANCE = RESIDUAL DEVIANCE = É 2 x a diferença entre
## o log likelihood do modelo que apresenta um ajuste perfeito (modelo
## saturado) e o modelo em questão. Quanto melhor o residual deviance
## melhor o modelo.
 

drop1(M1,test = "Chi") ## A diferença entre as deviance dos modelos
			     ## apresenta uma distribuição chi-square com
	                 ## p1 - p2 graus de liberdade

DM1 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data = RK)

drop1(DM1, test = "Chi") 

anova(DM1, M1, test = "Chi") 

## Confirmando esses informação com o que aprendemos anteriormente
*******************************************************************

pchisq (2.269, 1, lower.tail = F)

1 - pchisq (2.269, 1)



## CONTUDO A VIDA NÃO É TÃO SIMPLES
#####################################

## ANTES DE ANALISAR OS RESULTADOS E REALIZAR AS ANÁLISES DE SELEÇÃO
## VOCÊ PRECISA CHECAR SEUS DADOS PARA OVERDISPERSÃO

## OVERDISPERSÃO =  significa que a variância é maior que a média

## COMO SABER SE OS DADOS APRESENTAM OVERDISPERSÃO

M1 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, family = poisson, data=RK)

summary(M1)


## OVERDISPERISON
*********************

(Over <- 270.23/42)



## QUASI-POISSON
#################


M4 <- glm (TOT.N ~ OPEN.L + MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         SQ.DWATCOUR + D.PARK, family = quasipoisson, data = RK)

summary(M4)


## Não escrever na sua dissertação ou artigo que usou uma distribuição
## Quasi-Poisson. Quasi-Poisson não é uma distribuição.
## Basta dizer que você fez GLM com distribuição Poisson, 
## detectou overdispersão, e corrigiu os erros padrões usando um modelo
## quasi-GLM, onde a variância é dada por f × µ, onde µ é a média 
## e f o parâmetro de dispersão.

## Veja que o parâmetro de dispersão f é estimado em 5,93. 
## Isto significa que todos os erros padrões foram multiplicados por 2,43
## (a raiz quadrada de 5,93), e como resultado, a maioria dos parâmetros
## não são mais significativas.


## SELEÇÃO MODELOS EM QUASI-POISSON
**************************************

## Sob a hipótese nula, os parâmetros de regressão da variável independente
## omitidos são iguais a zero, e os F-ratio segue uma distribuição F com
## p1 - p2 e n - p1 graus de liberdade (n é o número de observações)

drop1(M4, test = "F")


M5 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         D.PARK, family = quasipoisson, data = RK)

drop1(M5, test = "F")


M6 <- glm(TOT.N ~ MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         D.PARK, family = quasipoisson, data = RK)

drop1(M6, test = "F")


M7 <- glm(TOT.N ~ MONT.S + SQ.POLIC+
         SQ.SHRUB + L.WAT.C + SQ.LPROAD+
         D.PARK, family = quasipoisson, data = RK)

drop1(M7, test = "F")


M8 <- glm(TOT.N ~ MONT.S + SQ.POLIC+
         SQ.SHRUB + L.WAT.C + 
         D.PARK, family = quasipoisson, data = RK)

drop1(M8, test = "F")


M9 <- glm(TOT.N ~ MONT.S + SQ.POLIC+ L.WAT.C + 
         D.PARK, family = quasipoisson, data = RK)

drop1(M9, test = "F")


M10 <- glm(TOT.N ~ MONT.S + L.WAT.C + 
         D.PARK, family = quasipoisson, data = RK)

drop1(M10, test = "F")


M11 <- glm(TOT.N ~ L.WAT.C + 
         D.PARK, family = quasipoisson, data = RK)

drop1(M11, test = "F")


M12 <- glm(TOT.N ~ D.PARK, family = quasipoisson, data = RK)

drop1(M12, test = "F")

summary(M12)



## GRAFICO COM OS DADOS AJUSTADO PARA A CURVA QUASI POISSON-GLM E 95% IC
###########################################################################

G <- predict(M12, newdata = RK, type = "link",
	se = TRUE)
F <- exp(G$fit)
FSEUP <- exp(G$fit + 1.96 * G$se.fit)
FSELOW <- exp(G$fit - 1.96 * G$se.fit)
plot(RK$D.PARK, RK$TOT.N, xlab = "Distância até o parque",
ylab = "Número de anfíbios mortos")
lines(RK$D.PARK, F, lty = 1, col = "red")
lines(RK$D.PARK, FSEUP, lty = 2, col = "red")
lines(RK$D.PARK, FSELOW, lty = 2, col = "red")


## Em Quasi-Poisson - AIC não é calculado

## QUASI-AIC
***************

dd1 <- dredge(M4, rank = "QAICc", chat = summary(M4)$dispersion)
MQP1 <- get.models(dd1, 1:8)
model.avg(MQP1)


## Os usuários devem ter em mente os riscos que tal "abordagem 
## impensada" de avaliação de todos os modelos possíveis possue. 
## Embora este procedimento é útil em certos casos e justificado,
## ele pode resultar na escolha de um  "melhor" modelo espúrio.

## "Deixar o computador descobrir" é uma pobre estratégia e geralmente reflete
## o fato de que o pesquisador não se preocupou em pensar claramente 
## sobre o problema de interesse  e sua configuração científica
## (Burnham e Anderson, 2002).


## Configura sub-modelos em uma lista
**************************************

MQP <- list()
MQP [[1]] <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         SQ.DWATCOUR + D.PARK, family = poisson, data = RK)
MQP [[2]] <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         D.PARK, family = poisson, data = RK)
MQP [[3]] <- glm(TOT.N ~ MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         D.PARK, family = poisson, data = RK)
MQP [[4]] <- glm(TOT.N ~ MONT.S + SQ.POLIC +
         SQ.SHRUB + L.WAT.C + SQ.LPROAD + D.PARK, family = poisson, 
	   data = RK)
MQP [[5]] <- glm(TOT.N ~ MONT.S + SQ.POLIC+
         SQ.SHRUB + L.WAT.C + D.PARK, family = poisson, data = RK)
MQP [[6]] <- glm(TOT.N ~ MONT.S + SQ.POLIC+ L.WAT.C + 
         D.PARK, family = poisson, data = RK)
MQP [[7]] <- glm(TOT.N ~ MONT.S + L.WAT.C + 
         D.PARK, family = poisson, data = RK)
MQP [[8]] <- glm(TOT.N ~ L.WAT.C + 
         D.PARK, family = poisson, data = RK)
MQP [[9]] <- glm(TOT.N ~ D.PARK, family = poisson, data = RK)


## Cria um vetor com nomes dos modelos
***************************************

(Modnames <- paste("MQP", 1:length(MQP), sep=""))

## OVERDISPERISON
******************

c_hat(MQP[[1]])

## Gera uma tabela com valores de AIC 
****************************************

(res.table <- aictab(cand.set = MQP, modnames = Modnames, 
	second.ord = TRUE, c.hat = 4)) ## TRUE ele mostra AICc

##############################################################################

## COMPARANDO BINOMIAL NEGATIVA COM POISSON
**********************************************

## odTest = Compara o log-likelihood do modelo de regressão binomial negativa
## com modelo regressao Poisson
 

NB <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, link="log", data=RK)

odTest(NB)

## Outra maneira de comparar BINOMIAL NEGATIVA com POISSON
**********************************************************

llhNB = logLik(NB)
llhPoisson  = logLik(M1)
d <- 2 * (llhNB - llhPoisson)
pchisq(as.numeric(d), df = 1, lower.tail = FALSE)/2 ## Binomial negativa 
								    ## é melhor


## BINOMIAL NEGATIVA
############################################################################

NB1 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         SQ.DWATCOUR + D.PARK, link="log", data=RK)
NB2 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC+
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD+
         D.PARK, link = "log", data = RK)
NB3 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.SHRUB + SQ.WATRES +
         L.WAT.C + SQ.LPROAD + D.PARK, link = "log", data = RK)
NB4 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.SHRUB + L.WAT.C + 
	SQ.LPROAD + D.PARK, link = "log", data = RK)
NB5 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + L.WAT.C + SQ.LPROAD + D.PARK, 
	link = "log", data = RK)
NB6 <- glm.nb(TOT.N ~ OPEN.L + L.WAT.C + SQ.LPROAD +  D.PARK, 
	link = "log", data = RK)
NB7 <- glm.nb(TOT.N ~ OPEN.L + L.WAT.C + D.PARK, link = "log", data = RK)

NB8 <- glm.nb(TOT.N ~ OPEN.L + D.PARK, link = "log", data = RK)


## Seleção automática
************************

AIC <- stepAIC(NB1)
AIC


## SELECAO MODELO AICc
***********************

AICc <- ICtab(NB1, NB2, NB3, NB4, NB5, NB6, NB7, NB8, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 52)
AICc


## TESTE DE HIPÓTESE
**********************

drop1(NB1,test="Chi")

NB2 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, link="log", data=RK)

drop1(NB2,test="Chi")


NB3 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.SHRUB + SQ.WATRES + L.WAT.C + 
	SQ.LPROAD + D.PARK, link="log", data=RK)

drop1(NB3,test="Chi")


NB4 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + SQ.SHRUB + L.WAT.C + 
	SQ.LPROAD + D.PARK, link="log", data=RK)

drop1(NB4,test="Chi")


NB5 <- glm.nb(TOT.N ~ OPEN.L + MONT.S + L.WAT.C + 
	SQ.LPROAD + D.PARK, link="log", data=RK)

drop1(NB5,test="Chi")


NB6 <- glm.nb(TOT.N ~ OPEN.L + L.WAT.C + 
	SQ.LPROAD + D.PARK, link="log", data=RK)

drop1(NB6,test="Chi")


NB7 <- glm.nb(TOT.N ~ OPEN.L + L.WAT.C + 
	D.PARK, link="log", data=RK)

drop1(NB7,test="Chi")


NB8 <- glm.nb(TOT.N ~ OPEN.L + D.PARK, link="log", data = RK)

drop1(NB8,test="Chi") ## Autores argumentaram que o valor de L.WAT.C
			    ## estavam muito próximos do mágico valor de 0.05


summary(NB8)
plot(NB8)



               ## NEGATIVE BINOMIAL
*********************

op <- par(mfrow = c(1, 2))
muNB <- predict(NB8, type = "response")
ENB <- resid (NB8, type = "deviance")
plot(x = muNB, y = ENB, main = "Negative Binomial", ylab = "residuos", 
	xlab = "predito")
abline( h = 0, v = 0)


QUASI-POISSON
***************

mu <- predict(M12, type = "response")
E <- RK$TOT.N - mu
EP2 <- E / sqrt(7.630148 * mu)
plot(x = mu, y = EP2, main = "Quasi-Poisson", ylab = "residuos", 
	xlab = "predito")
abline( h = 0, v = 0)

par(op)


############################################################################
#############################################################################

GLM BINOMIAL
**************

## Agora mostrarei um exemplo bem simples com dados de presença e ausência.
## GLM com dados binários ou proporção são também chamados de 
## regressão logística

## Analisar a distribuição de tuberculose em javalis. Modelou a ocorrência
## da tuberculose como uma função do comprimento do javali (cabeça-tronco).

data(Boar)
head(Boar)

B1 = glm (Tb ~ LengthCT, family = binomial, data = Boar)
summary(B1)

MyData <- data.frame(LengthCT = seq(from = 46.5, to = 165, by = 1))
Pred <- predict(B1, newdata = MyData, type = "response")
plot(x = Boar$LengthCT, y = Boar$Tb, xlab = "Comprimento", 
	ylab = "Probabilidade de tuberculose")
lines(MyData$LengthCT,Pred)

## Likelihood rate test
************************

drop1(B1, test="Chi")



###########################################################################
## Segundo exemplo
*********************

## Parasita de veados

data(Tbdeer)
head(Tbdeer)

## Colinearidade
*****************

Z <- cbind(Tbdeer$OpenLand,Tbdeer$ScrubLand,Tbdeer$QuercusPlants,Tbdeer$QuercusTrees,
        Tbdeer$ReedDeerIndex,Tbdeer$EstateSize,Tbdeer$Fenced)

corvif(Z)

## Transforma em vetor
***************************

Tbdeer$fFenced <- factor(Tbdeer$Fenced)

## Proporção
*************

Tbdeer$DeerPosProp <- Tbdeer$DeerPosCervi / Tbdeer$DeerSampledCervi

## Modelo Geral
****************

Deer2 <- glm(DeerPosProp ~ OpenLand + ScrubLand + QuercusPlants +
        QuercusTrees + ReedDeerIndex + EstateSize + fFenced,
        family = binomial,weights = DeerSampledCervi,data = Tbdeer)

summary(Deer2)


########################################################################

## Quasi-Binomial
*******************

Deer2 <- glm(DeerPosProp ~ OpenLand + ScrubLand + QuercusPlants +
        QuercusTrees + ReedDeerIndex + EstateSize + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
summary(Deer2)

drop1(Deer2,test="F")


Deer3 <- glm(DeerPosProp ~ OpenLand + ScrubLand + QuercusPlants +
        ReedDeerIndex + EstateSize + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer3,test="F")


Deer4 <- glm(DeerPosProp ~ OpenLand + ScrubLand + 
        ReedDeerIndex + EstateSize + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer4,test="F")


Deer5 <- glm(DeerPosProp ~ OpenLand + ReedDeerIndex + EstateSize + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer5,test="F")
summary(M5)


Deer6 <- glm(DeerPosProp ~ OpenLand + ReedDeerIndex + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer6,test="F")


Deer7 <- glm(DeerPosProp ~ OpenLand + fFenced,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer7,test="F")


Deer8 <- glm(DeerPosProp ~ OpenLand,
        family = quasibinomial,weights = DeerSampledCervi,data = Tbdeer)
drop1(Deer8,test="F")



## Grafico
************

MyData <- data.frame(OpenLand = seq(from = min(Tbdeer$OpenLand),
                                to = max(Tbdeer$OpenLand),by=0.01))
P1 <- predict(Deer8, newdata = MyData, type = "link", se = TRUE)
plot(MyData$OpenLand,exp(P1$fit)/(1+exp(P1$fit)),
     type="l",ylim=c(0,1),
     xlab="Porcentagem de área aberta",
     ylab="Probabilidade de infecção por E. cervi")
lines(MyData$OpenLand,exp(P1$fit+1.96*P1$se.fit)/
       (1+exp(P1$fit+1.96*P1$se.fit)),lty=2)
lines(MyData$OpenLand,exp(P1$fit-1.96*P1$se.fit)/
       (1+exp(P1$fit-1.96*P1$se.fit)),lty=2)
points(Tbdeer$OpenLand,Tbdeer$DeerPosProp)


## Esse resultado sugere que quanto maior a porcentagem de área aberta
## menor a probabilidade de amostrar um veado com infecção por E. cervi.


## Visualização dos resíduos
******************************

EP = resid(Deer8,type = "pearson")
mu = predict(Deer8,type = "response")
E = Tbdeer$DeerPosProp - mu
plot(x = mu,y = EP, xlab = "Predito", ylab = "Residuos",
	main= "Quasi-Binomial")


plot(Deer8)


###########################################################################
###########################################################################

## Generalized Mixed Effects Models
***********************************

## São usados para modelos mais complexos com design em blocos e dados aninhados.

## Aprensenta dois efeitos
******************************

## EFEITO FIXO - depende somente da média

## EFEITO ALEATÓRIO - depende somente da variância (não queremos 
## medir o efeito


data(RIKZ)
head(RIKZ)


## Riqueza de animais marinhos bentônicos em nove praias, 
## cada praia com cinco amostras.
## NAP = altura da estação de amostral em relação ao nível da maré

## Questão é se existe relação entre a riqueza e a NAP

## Transformo praia em fator
*******************************

RIKZ$fBeach <- factor(RIKZ$Beach)

## Modelo
**************

Mlme1 <- lme(Richness ~ NAP, random = ~ 1 | fBeach, data = RIKZ)
summary(Mlme1)

## Grafico
*************

F0 <- fitted(Mlme1,level=0)
F1 <- fitted(Mlme1,level=1)
I <- order(RIKZ$NAP)
NAPs <- sort(RIKZ$NAP)
plot(NAPs,F0[I],lwd=4,type="l",ylim=c(0,22),
     ylab="Riqueza de espécies",xlab="NAP")
for (i in 1:9){
   x1<-RIKZ$NAP[RIKZ$Beach==i]
   y1<-F1[RIKZ$Beach==i]
   K<-order(x1)
   lines(sort(x1),y1[K])
}
text(RIKZ$NAP,RIKZ$Richness,RIKZ$Beach,cex=0.9)

## Se StdDev random effect fosse 0 todos os interceptos cariam
## na linha predita


## Suponha que a relação entre riqueza de espécies e NAP é diferente em
## cada praia. Isto implica que temos que incluir um interação entre
## NAP * Beach no modelo. Mas isso tem um custo muito alto elevando o 
## modelo para 17 parâmetros. E não estamos interessados no efeito da praia.
## Contudo, se existe variação entre praias e na interação NAP * Praias, nós
## não podemos ignorar esses termos. Se fizermos isso, a variação sistemática
## vai aparecer nos resíduos, levando a inferências erradas.
## Nós podemos aplicar o Mixed Effects Model com random intercept e 
## random slope.

Mlme2 <- lme(Richness ~ NAP,
             random = ~ 1 + NAP | fBeach, data = RIKZ)
summary(Mlme2)

## 3.54 quantidade de variação no intercepto da população
## 1.71 variação no slope (inclinação) na nove praias
## Correlação fala que praias com interceptos mais altos também tem 
## inclinação negativa mais alta...


## Grafico
*************

F0 <- fitted(Mlme2,level=0)
F1 <- fitted(Mlme2,level=1)
I <- order(RIKZ$NAP)
NAPs <- sort(RIKZ$NAP)
plot(NAPs,F0[I],lwd=4,type="l",ylim=c(0,22),
     ylab="Riqueza de espécies",xlab="NAP")
for (i in 1:9){
   x1<-RIKZ$NAP[RIKZ$Beach==i]
   y1<-F1[RIKZ$Beach==i]
   K<-order(x1)
   lines(sort(x1),y1[K])
}
text(RIKZ$NAP,RIKZ$Richness,RIKZ$Beach,cex=0.9)



## Precisamos falar de Likelihood em Mixed Models

## MAXIMUM LIKELIHOOD (ML) - escolhe os parâmetros tal que L é máxima. 
## O problema é que ML ignora o fato que intercepto e slope são estimados 
## também...

## RESTRICTED MAXIMUM LIKELIHOOD (REML)  - corrige o grau de liberdade


RIKZ$fExp <- RIKZ$Exposure
RIKZ$fExp[RIKZ$fExp==8]<- 10
RIKZ$fExp <- factor(RIKZ$fExp,levels = c (10,11))

M0.ML <- lme(Richness ~ NAP, data = RIKZ,
              random = ~1| fBeach, method = "ML")

M0.REML <-lme(Richness ~ NAP, random = ~1|fBeach,
              method = "REML", data = RIKZ)

M1.ML <- lme(Richness ~ NAP+fExp, data = RIKZ,
              random = ~1| fBeach, method = "ML")

M1.REML <- lme(Richness ~NAP+fExp, data = RIKZ,
              random = ~1|fBeach, method = "REML")


## PROTOCOLO 
**************

## 1 - Comece com um modelo onde o componente fixo contem todas as variáveis
## independentes e tantas interações possíveis. 

## 2 -  Ache a melhor estrutura para o modelo aleatório. Você precisa 
## comporar os modelos com REML tanto para LRT como para AIC ou BIC...

## 3 - Depois de achar o modelo aleatório, temos que comparar os modelos
## fixos.. Para isso temos que usar ML...

## 4 - Apresente o modelo final com REML...


## PASSO 1 e 2 - Selecionando efeito aleatório
***********************************************

 B1 <- gls(Richness ~ NAP * fExp,
            method = "REML", data = RIKZ)

 B2 <- lme(Richness ~ NAP * fExp, data = RIKZ,
        random = ~1 | fBeach, method = "REML")

 B3 <- lme(Richness ~ NAP * fExp,data = RIKZ,
        random = ~1 + NAP | fBeach, method = "REML")


## seleção 
*************

AIC(B1, B2, B3)


anova (B1, B2, B3)


## PASSO 3 - Selecionando efeito fixo
*****************************************


 B2 <- lme(Richness ~ NAP * fExp, data = RIKZ,
        random = ~1 | fBeach, method = "ML")
summary(B2)

## Realçam a interpretação de valores de p próximo a 0.05
## Retira a interação

 B3 <- lme(Richness ~  NAP + fExp, data = RIKZ,
        random = ~1 | fBeach, method = "ML")


 B3a <- lme(Richness ~  NAP , data = RIKZ,
        random = ~1 | fBeach, method = "ML")

 B3b <- lme(Richness ~  fExp , data = RIKZ,
        random = ~1 | fBeach, method = "ML")


AICc <- ICtab(B2, B3, B3a, B3b, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 45)
AICc


## PASSO 4 - Modelo Final
*****************************************

B2 <- lme(Richness ~ NAP * fExp, data = RIKZ,
        random = ~1 | fBeach, method = "REML")

summary(B2)

############################################################################
############################################################################

## BEES - Os dados são aninhados com multiplas observações da mesma colméia
## são 24 colméias com 3 medidas por colméia..

## Mostrar VarIdent

data(Bees)
tail(Bees)

## Como variável dependente temos densidade de esporos medido em cada
## colméia.. A variável independente infection quantifica o grau de infecção,
## com valores 0, 1, 2 e 3. Embora mixed effects modelling podem 
## lidar com um certo grau de dados desbalanceados, neste caso, é melhor
## converter a variável infection em 0 (sem infecção) e 1 (infectado)
## porque existes poucas observações com valores 2 e 3.

Bees$Infection01 <- Bees$Infection
Bees$Infection01[Bees$Infection01 > 0] <- 1
Bees$fInfection01 <- factor(Bees$Infection01)

## Transformo colméia em fator
******************************

Bees$fHive <- factor(Bees$Hive)
Bees$LSpobee <- log10(Bees$Spobee + 1)

## Ploto os dados por colméia
********************************

op <- par(mfrow = c(1, 2), mar = c(3, 4, 1, 1))
dotchart(Bees$Spobee, groups = Bees$fHive, main = "Dados sem transformar")
dotchart(Bees$LSpobee, groups = Bees$fHive, main = "Dados transformado")
par(op)


## Começar com uma regressão linear e plotarei os residuos por colméia
************************************************************************

M1 <- lm(LSpobee ~ fInfection01 * BeesN, data = Bees)
E1 <- rstandard(M1)
plot(E1 ~ Bees$fHive, ylab = "Resíduos", xlab = "Colméias")
abline(0, 0)

## Opção de colocar colméia como random effect
************************************************

## Vantagens

## (1) requer um extra parâmetro (variância do intercepto), comparado
## com liner regressão que requer 23 parâmetros extras 

## (2) Nós podemos fazer afirmações para colméias em geral não só para as 
## 24 colméias do estudo


## Selecionando random effect
*********************************

M1 <- lme(LSpobee ~ fInfection01 * BeesN,
          random = ~ 1 | fHive, method = "REML", data = Bees)
M2 <- lme(LSpobee ~ fInfection01 * BeesN,
          random = ~ 1 + BeesN | fHive, method = "REML", data = Bees)
M3 <- lme (LSpobee ~ fInfection01 * BeesN,
          random = ~ 1 + fInfection01 | fHive, method = "REML", data = Bees)

anova(M1,M2)
anova(M1,M3)

## Verificando o modelo
**************************

plot(M1, col = 1)


## plota por infecção
************************

boxplot(LSpobee ~ fInfection01, data = Bees, varwidth = TRUE)


## Inserimos um comando para dizer que as variâncias para infecção
## são diferentes

## varIdent = permite modelar diferentes variâncias para variáveis 
## categóricas

M1 <- lme(LSpobee ~ fInfection01 * BeesN,
          random = ~ 1 | fHive, method = "REML", data = Bees)

M4 <- lme(LSpobee ~ fInfection01 * BeesN,
          random = ~ 1 | fHive, method = "REML", data = Bees,
	weights = varIdent(form = ~ 1 | fInfection01))

anova(M1,M4)


## Selecionando estrutura fixa
********************************

M7full<- lme (LSpobee ~ fInfection01 * BeesN,
         random = ~ 1|fHive,
         weights = varIdent(form = ~ 1 | fInfection01),
         method = "ML", data = Bees)

M7sub <- update(M7full, .~. -fInfection01 : BeesN )
anova(M7full,M7sub)


M8full<-lme(LSpobee ~ fInfection01 + BeesN,
          random = ~ 1|fHive, method = "ML", data = Bees,
          weights = varIdent(form =~ 1 | fInfection01))

M8sub1 <- update(M8full, .~. -fInfection01 )
M8sub2 <- update(M8full, .~. -BeesN )
anova(M8full,M8sub1)
anova(M8full,M8sub2)


M9full<-lme(LSpobee ~ fInfection01,
          random = ~ 1|fHive, method="ML", data = Bees,
          weights = varIdent(form =~ 1 | fInfection01))

M9sub1<-update(M9full, .~. -fInfection01 )
anova(M9full,M9sub1)


## Modelo final
******************

Mfinal <-lme(LSpobee ~ fInfection01,
          random =~ 1|fHive, data = Bees,
          weights = varIdent(form =~ 1 | fInfection01),
          method = "REML")
summary(Mfinal)

LSpobee = 1.75 + 2.9 x fInfection + a + E

onde a ~ N(0, 0.98) e E ~  N(0, 0.36)

plot(Mfinal)


###########################################################################
###########################################################################

data (ergoStool)
head(ergoStool)


## Esforço requirido por 4 diferentes mandíbulas para rasgar
## 9 diferentes objetos

fm1Stool <- lme (effort ~ Type, data = ergoStool, random = ~ 1 | Subject) 

summary(fm1Stool)


## Tentar exemplicar

(mean <- tapply(ergoStool$effort, ergoStool$Type, mean))

## O primeiro parâmetro (intercepto) é a média da primeira categoria
## definida por ordem alfabética

## O segundo parâmetro é a diferença entre o segundo parâmetro e o 
## intercepto

mean[2] - mean [1]


## O terceiro parâmetro é a diferença entre o terceiro parâmetro e o 
## intercepto

mean[3] - mean [1]

mean[4] - mean [1]


contrasts(ergoStool$Type)<- cbind( c(3,-1,-1,-1),
                                    c(0,2,-1,-1),
                                    c(0,0,1,-1))

fm2Stool <- lme (effort ~ Type, data = ergoStool, random = ~ 1 | Subject) 

summary(fm2Stool)

anova(fm1Stool)
anova(fm2Stool)

comparacao <- glht(fm1Stool, linfct = mcp(Type = "Tukey"))
summary(comparacao)

############################################################################
#GLMM
##### EXERCÍCIOS ######


data(Owls)
head(Owls)


## Arrumando os dados

Owls$NCalls<-Owls$SiblingNegotiation
Owls$LBroodSize<-log(Owls$BroodSize)
Owls$fNest<-factor(Owls$Nest)


O1.lmer <- lmer(NCalls ~ offset(LBroodSize) +
              SexParent * FoodTreatment +
              SexParent * ArrivalTime + (1|fNest), data=Owls,
              family = poisson)

summary(O1.lmer)

print(O1.lmer, sigma = T, corr = F)

## Retiro Interação
*********************

O2.lmer<-lmer(NCalls ~ offset(LBroodSize)+
              SexParent * FoodTreatment +
              SexParent + ArrivalTime +(1|fNest), data=Owls,
              family = poisson)

anova(O1.lmer,O2.lmer)

## Retiro interação
**********************

O3.lmer<-lmer(NCalls ~ offset(LBroodSize) +
              FoodTreatment + ArrivalTime + (1|fNest), data = Owls,
              family = poisson)

anova(O2.lmer, O3.lmer,test="F")

summary(O3.lmer)


AICc <- ICtab(O1.lmer, O2.lmer, O3.lmer, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 599)
AICc


#############################################################################
#############################################################################

## EXERCICIOS


## 1 - Owls
##############

data(Owls)
names(Owls)

## log Neg
***************

Owls$LogNeg<-log10(Owls$NegPerChick + 1)


#Step 2 of protocol
**********************

Form <- lme(LogNeg ~ SexParent*FoodTreatment + SexParent*ArrivalTime,
	random = ~1|Nest, method = "ML", data=Owls)

summary(Form)


M1.A = update(Form,.~.-SexParent:FoodTreatment)
M1.B = update(Form,.~.-SexParent:ArrivalTime)
anova(Form,M1.A)
anova(Form,M1.B)


Form3 <- formula(LogNeg ~ SexParent + FoodTreatment + ArrivalTime, 
	random = ~1|Nest, method = "ML", data=Owls)

M3.Full <- lme(Form3, random= ~1| Nest, method = "ML", data = Owls)
M3.A <- update(M3.Full, .~. -FoodTreatment)
M3.B <- update(M3.Full, .~. -SexParent)
M3.C <- update(M3.Full, .~. -ArrivalTime)
anova(M3.Full,M3.A)
anova(M3.Full,M3.B)
anova(M3.Full,M3.C)


Form4 <- formula(LogNeg ~ FoodTreatment + ArrivalTime)
M4.Full <- lme(Form4, random= ~1| Nest, method = "ML", data = Owls)
M4.A <- update(M4.Full, .~. -FoodTreatment)
M4.B <- update(M4.Full, .~. -ArrivalTime)
anova(M4.Full,M4.A)
anova(M4.Full,M4.B)


M5 <- lme(LogNeg ~ FoodTreatment + ArrivalTime, random= ~1 | Nest,
	 method = "REML", data = Owls)
summary(M5)


AICc <- ICtab(Form, M4.A, M4B, M5, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 599)
AICc



coplot(fitted(M5) ~ ArrivalTime | FoodTreatment , data = Owls,
	 ylab = "Número de piados", xlab = "Tempo de chegada")


E2<-resid(M5,type="normalized")
F2<-fitted(M5)
op<-par(mfrow=c(2,2),mar=c(4,4,3,2))
MyYlab="Residuals"

plot(x=F2,y=E2,xlab="Fitted values",ylab=MyYlab)
boxplot(E2~SexParent,data=Owls,main="Sex of parent",ylab=MyYlab)
boxplot(E2~FoodTreatment,data=Owls,main="Food treatment",ylab=MyYlab)
plot(x=Owls$ArrivalTime,y=E,main="Arrival time",ylab=MyYlab,xlab="Time (hours)")
par(op)

*****************************************************************************
### 2 ##################################################################

teste1 <- read.csv(file.choose(), header=T)

head(teste1)


GLM.1 <- glm (exclusao ~ volume, family = binomial, data = teste1)
summary (GLM.1)

GLM.2 <- glm (exclusao ~ 1, family = binomial, data = teste1)


## SELECAO MODELO AICc
***********************

AICc <- ICtab(GLM.1, GLM.2, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 41)
AICc


MyData <- data.frame(volume = seq(from = 0.1,
	to = 3, by = 0.1))
Pred <- predict(GLM.1, newdata = MyData, type = "response")
plot(x = teste1$volume, y = teste1$exclusao)
lines(MyData$volume, Pred)

## GRAFICO ERRO PADRAO
############################

P1 <- predict(GLM.1, newdata = MyData, type = "link",
	se = TRUE)
plot(MyData$volume, exp(P1$fit) / (1 + exp(P1$fit)),
	type = "l", ylim = c(0, 1),
	xlab = "Volume",
	ylab = "Probabilidade de exclusão")
lines(MyData$volume, exp(P1$fit + P1$se.fit)/
	(1 + exp(P1$fit + P1$se.fit)), lty = 2)
lines(MyData$volume, exp(P1$fit - P1$se.fit)/
	(1 + exp(P1$fit - P1$se.fit)),  lty = 2)
points(teste1$volume, y = teste1$exclusao)


## GRAFICO INTERVALO DE CONFIANÇA
############################

P1 <- predict(GLM.1, newdata = MyData, type = "link",
	se = TRUE)
plot(MyData$volume, exp(P1$fit) / (1 + exp(P1$fit)),
	type = "l", ylim = c(0, 1),
	xlab = "Volume",
	ylab = "Probabilidade de exclusão")
lines(MyData$volume, exp(P1$fit+1.96*P1$se.fit) /
	(1 + exp(P1$fit + 1.96 * P1$se.fit)), lty = 2)
lines(MyData$volume, exp(P1$fit-1.96*P1$se.fit) /
	(1 + exp(P1$fit - 1.96 * P1$se.fit)), lty = 2)
points(teste1$volume, y = teste1$exclusao)

plot(M5)

****************************************************************************
*****************************************************************************

## 3- SOLEA SOLEA
####################

Solea <- read.csv (file.choose(),header = TRUE)

head(Solea)

## Abundância do peixe Solea Solea em um estuário em Portugal
## Identificar quais fatores ambientais influênciam na escolha
## do bercário pela espécie. Os dados de abunância foram coletados
## em amostras mensais conduzidas em 4 áreas durante 1995 e 1996.


## Temos 11 variáveis.. Muitas comparado com o número de amostras

## Colinearidade
*****************

Z <- cbind(Solea$depth,Solea$temp,Solea$sal,Solea$transp,
        Solea$large.sand,Solea$med.fine.sand,Solea$mud)

corvif(Z)

Y <- cbind(Solea$depth,Solea$temp,Solea$sal,Solea$transp,
        Solea$large.sand,Solea$mud)

corvif(Y)


W <- cbind(Solea$depth,Solea$temp,Solea$sal,Solea$transp,
        Solea$mud)

corvif(W)


#     Figure 21.2
*********************

par(mar = c(4.5, 4.5, 0.5, 0.5), cex.lab = 1.3, cex.axis = 1.3)

plot(Solea[, 9:12], lower.panel = panel.cor, 
     upper.panel = panel.smooth2)

## Retira large.sand e med.fine.sand, mantêm somente mud entre 
## as variáveis correlacionadas. Tenham em mente que isso é uma escolha
## ecológica, não estatística.
 


#     Figure 21.4
*********************

data_solea <- data.frame(Solea.solea = Solea$Solea.solea,
                         season = as.factor(Solea$season), 
                         month = as.factor(Solea$month), 
                         area = as.factor(Solea$Area))

plot.design(Solea.solea ~ season + month + area, 
            data = data_solea, axes = T, xtick = T)
 
 
## Uma vez que Season é um classificação dos meses e são colineares
## retiramos season e mantemos month por ser mais informativa.

 
## Modelo Global
**********************

solea_glm <- glm(Solea.solea ~ temp + sal + gravel + factor(month) + mud,
                data = Solea, family = binomial)

summary(solea_glm)

## Seleção variáveis
***********************

drop1(solea_glm, test="Chi")


solea_glm1 <- glm(Solea.solea ~ temp + sal + gravel + factor(month),
                data = Solea, family = binomial)

drop1(solea_glm1, test="Chi")



solea_glm2 <- glm(Solea.solea ~ temp + sal + factor(month),
                data = Solea, family = binomial)

drop1(solea_glm2, test="Chi")

summary(solea_glm2)


#     Figure 21.5
******************

coplot(Solea.solea ~ sal | month, data = Solea, overlap = 0, 
	 panel = panel.smooth2, number= 5)

## S. solea prefere relativamente baixa salinidade, e existe uma probabilidade
## maior de capturar S. solea nos meses 6 e 7.


###############################################################################################################
###############################################################################################################

===================================
##CURVA DE ACUMULAÇÃO DE ESPECIES##
===================================


library (vegan)
library(BiodiversityR)

## COMANDOS RAREFAÇÃO
########################

## rarefy(x, sample, se = FALSE, MARGIN = 1)

## X = COMUNIDADE
## sample = tamanho da sub-amostra
## se = desvio padrão
## MARGIN = # MARGIN 1 = espécies na coluna
  	# MARGIN 2 = espécies nas linhas


## ABRINDO O ARQUIVO COM O EXEMPLO
######################################

rare <- read.csv(file.choose(),	header=T)
rare

## Soma abundancia total para cada comunidade
**********************************************

sum(rare$roedores)## Abundância total
sum(rare$roedores1)## Abundância total
sum(rare$roedores2)## Abundância total


## Riqueza de espécie total para cada comunidade
**************************************************

specnumber(rare, MARGIN =  2)# número de espécies por comunidade


## Rarefação para amostras de 30 individuos
**********************************************

rarefy(rare$roedores, sample = 30, MARGIN = 2)
rarefy(rare$roedores1, sample = 30, MARGIN = 2)
rarefy(rare$roedores2, sample = 30, MARGIN = 2)


## Para realizar rarefação para diferentes valores de sub-amostras
## eu crio um comando com diversos tamanhos de amostras

amostras1 <- c(seq(5, 40, by = 1))
amostras2 <- c(seq(5, 80, by = 1))
amostras3 <- c(seq(5, 70, by = 1))


## Rarefação para varias amostras 
**********************************************

roedor1 <- rarefy(rare$roedores, sample = amostras1, se = T, MARGIN = 2)
roedor2 <- rarefy(rare$roedores1, sample = amostras2, se = T, MARGIN = 2)
roedor3 <- rarefy(rare$roedores2, sample = amostras3, se = T, MARGIN = 2)


## GRAFICO
############

plot(amostras2, roedor2[1,], ylab = "Riqueza de espécies",
	xlab = "No. de Individuos",
	ylim = c(1, 9), xlim = c(1,
	90), type= "n")
text(30, 9, "Rarefação comunidade de roedores")

lines(amostras1, roedor1[1, ], type = "b", col = "red", lwd = 1.7)
lines(amostras2 + 0.2, roedor2[1, ], type = "b", col = "blue", lwd = 1.7)
lines(amostras3 + 0.4, roedor3[1, ], type = "b", col = "black", lwd = 1.7)

## Legenda
************

labs<-c("Comunidade 1","Comunidade 2", "Comunidade 3")
legend(locator(1), labs, lty = c(1,2,3), col = c("red", "blue", "black") , 
	bty = "n")

abline(h = 0, v = 40, col = "yellow")

## desvio padrao
***********************

lines(amostras1, roedor1[1, ] + roedor1[2, ], lwd = 1.7,
	lty = 1, col = "red")
lines(amostras1, roedor1[1, ] - roedor1[2, ], lwd = 1.7,
	lty = 1, col = "red")
lines(amostras2, roedor2[1, ] + roedor2[2, ], lwd = 1.7,
	lty = 2, col = "blue")
lines(amostras2, roedor2[1, ] - roedor2[2, ], lwd = 1.7,
	lty = 2, col = "blue")
lines(amostras3, roedor3[1, ] + roedor3[2, ], lwd = 1.7,
	lty = 3, col = "black")
lines(amostras3, roedor3[1, ] - roedor3[2, ], lwd = 1.7,
	lty = 3, col = "black")



## EXEMPLO DO VEGAN
####################

data(BCI) ##  CARREGA DADOS DO VEGAN - 50 PLOTS DE 1 ha e 225 especies
head (BCI) ## para facilitar a visualização da planilha


## Diminuir o tamanho da planilha para facilitar
*************************************************

bci <- BCI[seq(5, 50, by = 5), ] ## SEPARA 10 PLOTS PARA FACILITAR VISUALIZAZAO
bci


## Número de espécies em cada amostra amostra
***********************************************

specnumber(bci, MARGIN =  1)


## Soma abundancia total para cada espécie
******************************************

(N <- colSums(bci))


## Soma total de indivíduos
******************************

sum(N)


## Valores de sub-amostras 
*****************************

(subs3 <- c(seq(500, 4500, by = 500), sum(N)))


## Analise de rarefação para a comunidade
*******************************************

(rar3 <- rarefy(N, sample = subs3, se = T, MARG = 2))


## GRAFICO
############

plot(subs3, rar3[1, ], ylab = "Riqueza de espécies",
	axes = FALSE, xlab = "No. de Individuos",
	type = "n", ylim = c(80, 200), xlim = c(500,
	5000))
axis(1, at = 1:5 * 1000)
axis(2)
box()
text(2500, 200, "Rarefação (10 plots)")

lines(subs3, rar3[1, ], type = "b", col = "red")
lines(subs3, rar3[1, ] + 2 * rar3[2, ], lty = 3, col = "red")
lines(subs3, rar3[1, ] - 2 * rar3[2, ], lty = 3, col = "red")


## Curva rarefação
***************************

Coletor.curva <- specaccum(bci)


## Inserir a linha da curva com rarefação
*******************************************

names(Coletor.curva)

plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
	 ylab = "Riqueza de espécies")

lines(Coletor.curva$sites, Coletor.curva$richness, type = "b", lwd = 1.7,
	lty = 1, col = "red")
lines(Coletor.curva$sites, Coletor.curva$richness + Coletor.curva$sd, 
	lwd = 1.7, lty = 4, col = "red")
lines(Coletor.curva$sites,  Coletor.curva$richness - Coletor.curva$sd, 
	lwd = 1.7,lty = 4, col = "red")

#########################################################################
#########################################################################

## ESTIMADORES DE RIQUEZA
############################


## Abrir a planilha
**********************

est <- read.csv(file.choose(),	header=T)
est


## Renomear linha
*******************

row.names(est)= c("A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
	"A11", "A12", "A13" , "A14")
est


## Primeiramente vamos criar uma Curva coletor
************************************************

Coletor <- specaccum(est, method = "collector")

## Gráfico de uma curva do coletor
***********************************

names(Coletor)

plot(Coletor$sites, Coletor$richness,  xlab = "Amostras",
	 ylab = "Riqueza de espécies")

## Curva de acumulação
***************************

Coletor.curva <- specaccum(est)


## Inserir a linha da curva com rarefação
*******************************************

names(Coletor.curva)

plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
	 ylab = "Riqueza de espécies", ylim = c(0,14), col = "red")

lines(Coletor.curva$sites, Coletor.curva$richness, type = "b", lwd = 1.7,
	lty = 1, col = "red")
lines(Coletor.curva$sites, Coletor.curva$richness + Coletor.curva$sd, 
	lwd = 1.7, lty = 4, col = "red")
lines(Coletor.curva$sites,  Coletor.curva$richness - Coletor.curva$sd, 
	lwd = 1.7,lty = 4, col = "red")

arrows(Coletor.curva$sites, Coletor.curva$richness,
	Coletor.curva$sites, Coletor.curva$richness - Coletor.curva$sd, 
	lwd = 1.7, angle = 90, length = 0.1, lty = 1, col = "red")

arrows(Coletor.curva$sites, Coletor.curva$richness,
	Coletor.curva$sites, Coletor.curva$richness + Coletor.curva$sd, 
	lwd = 1.7, angle = 90, length = 0.1, lty = 1, col = "red")

## ESTIMADORES COM INCIDENCIA DE ESPECIES
###########################################

## Duas maneiras para ter o valor geral de cada estimador
**********************************************************

## 1 - comando specpool

(testeInc <- specpool(est))## Valor geral

## 2 - comando diversityresult

(ER.1 <- diversityresult(est, index = "chao"))
(ER.2 <- diversityresult(est, index = "jack1"))
(ER.3 <- diversityresult(est, index = "jack2"))
(ER.4 <- diversityresult(est, index = "boot"))

## Esse outro comando mostra dados mais completos, 
## com valores para cada amostra
*********************************************************

## comando poolaccum

testeInc1 <- poolaccum(est, permutations = 100, minsize = 1)
summary(testeInc1, display = "jack1")


## Gráfico
*************

plot(seq(1, 14, by = 1), testeInc1$means[,4], ylab = "Riqueza de espécies",
	xlab = "No. de Individuos", type = "n",
	ylim = c(1, 20), xlim = c(1,
	15))
text(4, 20, "Estimadores de Riqueza")

lines(seq(1, 14, by = 1), testeInc1$means[,4],lty = 3, type = "b", col = "red")
lines(seq(1, 14, by = 1), testeInc1$means[,2], type = "b", col = "blue")

labs<-c("Jackknife 1", "Sobs")
legend(locator(1), labs, lty = c(3, 1),
	col = c("red", "blue") , 
	bty = "n")

## Desvio padrão
*****************

l1 <- sd(as.vector(testeInc1$jack1[1,]))
l2 <- sd(as.vector(testeInc1$jack1[2,]))
l3 <- sd(as.vector(testeInc1$jack1[3,]))
l4 <- sd(as.vector(testeInc1$jack1[4,]))
l5 <- sd(as.vector(testeInc1$jack1[5,]))
l6 <- sd(as.vector(testeInc1$jack1[6,]))
l7 <- sd(as.vector(testeInc1$jack1[7,]))
l8 <- sd(as.vector(testeInc1$jack1[8,]))
l9 <- sd(as.vector(testeInc1$jack1[9,]))
l10 <- sd(as.vector(testeInc1$jack1[10,]))
l11 <- sd(as.vector(testeInc1$jack1[11,]))
l12 <- sd(as.vector(testeInc1$jack1[12,]))
l13 <- sd(as.vector(testeInc1$jack1[13,]))
l14 <- sd(as.vector(testeInc1$jack1[14,]))

## Loop
**********

jacksd <- c()
for (i in 1:14) {
	jacksd [i] <-  c(sd(as.vector(testeInc1$jack1[i,])))
	}

Sobs <- c()
for (i in 1:14) {
	Sobs [i] <-  c(sd(as.vector(testeInc1$S[i,])))
	}

## mais fácil
***************

jacksd <- apply(X = testeInc1$jack1, MARGIN = 1, FUN = sd)
Sobs <- apply(X = testeInc1$S, MARGIN = 1, FUN = sd)


lines(seq(1, 14, by = 1), testeInc1$means[,4] + jacksd, 
	lty = 3, col = "red")
lines(seq(1, 14, by = 1), testeInc1$means[,4] - jacksd,
	 lty = 3, col = "red")
lines(seq(1, 14, by = 1), testeInc1$means[,2] + Sobs, 
	lty = 3, col = "blue")
lines(seq(1, 14, by = 1), testeInc1$means[,2] - Sobs,
	 lty = 3, col = "blue")



## ESTIMADORES COM A ABUNDANCIA DAS ESPECIES
#############################################

## comando estaccumR

testeAbund <- estaccumR(est, permutations = 100)
summary(testeAbund)## mostra Chao 1, ACE

## Só mostrar o estimador que você deseja
*******************************************

summary(testeAbund, display = "ace")


## Grafico ACE
***************

plot(seq(1, 14, by = 1), testeAbund$means[,3], ylab = "Riqueza de espécies",
	xlab = "No. de Individuos", type = "n",
	ylim = c(1, 20), xlim = c(1,
	15))
text(4, 20, "Estimadores de Riqueza")

lines(seq(1, 14, by = 1), testeAbund$means[,4], lty = 3, 
	type = "b", col = "red")
lines(seq(1, 14, by = 1), testeAbund$means[,2], type = "b", col = "blue")

labs<-c("ACE", "Sobs")
legend(locator(1), labs, lty = c(4, 3),
	col = c("red", "blue") , 
	bty = "n")

## Loop calcular o desvio padrão
*********************************

ACE <- c()
for (i in 1:14) {
	ACE [i] <-  c(sd(as.vector(testeAbund$ace[i,])))
	}

Sobs1 <- c()
for (i in 1:14) {
	Sobs1 [i] <-  c(sd(as.vector(testeAbund$S[i,])))
	}


## Linha com os desvios padrões
*********************************

lines(seq(1, 14, by = 1), testeAbund$means[,2] + Sobs, 
	lty = 3, col = "blue")
lines(seq(1, 14, by = 1), testeAbund$means[,2] - Sobs,
	 lty = 3, col = "blue")
lines(seq(1, 14, by = 1), testeAbund$means[,4] + ACE, 
	lty = 4, col = "red")
lines(seq(1, 14, by = 1), testeAbund$means[,4] - ACE,
	 lty = 4, col = "red")

## Outro comando só que a planilha deve ser de outra maneira
*************************************************************

(est1 <- colSums(est)) ## SOMA ABUNDÂNCIA DE CADA LINHA

## Abundancia total por coleta
********************************

## estimateR é baseada na abundância de um único sítio de amostragem

(testeAbund1 <- estimateR(est1))


## ESSES  COMANDO SÓ CALCULAM OS VALORES FINAIS DOS ESTIMADORES OU 
## VALORES ACUMULADOS POR AMOSTRAS, CONTUDO COMO COMENTADO NA AULA
## ALGUMAS VEZES QUEREMOS ESTIMAR A RIQUEZA DE ESPÉCIES PELA ABUNDANCIA


## Soma da abundancia total em cada amostra
*********************************************

(Total <- rowSums(est))

## Mudo o nome da planilha que estava usando
*********************************************

(Nest <- est) 


## Crio uma nova coluna com a abundancia total
## por amostra nessa nova planilha 

Nest$Total <- Total
Nest

## Calculando estimadores finais por abundancia
*************************************************

(Accum.1 <- accumresult(est, y = Nest , scale = "Total",
	 method = "exact", conditioned=TRUE))


accumplot(Accum.1, xlab = "Abundância")

(Accum.2 <- accumresult(est, y = Nest,
	scale = "Total", method = "rarefaction")) ## USANDO METODOS DIFERENTES


accumplot(Accum.2, xlab = "Individuos")

(Accum.3 <- accumresult(est, method = "rarefaction")) ## RAREFACAO POR AMOSTRA
accumplot(Accum.3)


## EXERCICIOS##
***************

#Exercício 1#
*************

exer <- read.csv(file.choose(),	header=T)
exer

## a ##

sum(exer$Fragmento)## Abundância total
sum(exer$Pasto)## Abundância total
sum(exer$Borda)## Abundância total
sum(exer$Cana)## Abundância total

## b ## 

specnumber(exer, MARGIN =  2)# número de espécies por comunidade

## c ##

rarefy(exer$Fragmento, sample = 30, MARGIN = 2)
rarefy(exer$Pasto, sample = 30, MARGIN = 2)
rarefy(exer$Borda, sample = 30, MARGIN = 2)
rarefy(exer$Cana, sample = 30, MARGIN = 2)

## Cria sub-amostras para rarefação
*************************************

am1 <- c(seq(5, 91, by = 5))
am2 <- c(seq(5, 60, by = 5))
am3 <- c(seq(5, 106, by = 5))
am4 <- c(seq(5, 152, by = 5))

Frga <- rarefy(exer$Fragmento, sample = am1, se = T, MARGIN = 2)
Pasto <- rarefy(exer$Pasto, sample = am2, se = T, MARGIN = 2)
Borda <- rarefy(exer$Borda, sample = am3, se = T, MARGIN = 2)
Cana <- rarefy(exer$Cana, sample = am4, se = T, MARGIN = 2)


## GRAFICO
############

plot(am4, Cana[1,], ylab = "Riqueza de espécies",
	xlab = "No. de Individuos",
	ylim = c(1, 20), xlim = c(1,
	153), type= "n")
text(15, 19, "Rarefação")

lines(am1, Frga[1, ], type = "b", col = "red", lwd = 1.7)
lines(am2, Pasto[1, ], type = "b", col = "blue", lwd = 1.7)
lines(am3, Borda[1, ], type = "b", col = "black", lwd = 1.7)
lines(am4, Cana[1, ], type = "b", col = "gray", lwd = 1.7)


## Legendas
**************

labs<-c("Borda", "Fragmento","Pasto", "Cana")
legend(locator(1), labs, lty = c(3, 1,2,4),
	col = c("black", "red", "blue","gray") , 
	bty = "n")

## comparando riqueza com amostras de 60 individuos
***************************************************

abline(h = 0, v = 60)

## Linhas com desvio padrão
******************************

lines(am1, Frga[1, ] + Frga[2, ], lwd = 1.7,
	lty = 1, col = "red")
lines(am1, Frga[1, ] - Frga[2, ], lwd = 1.7,
	lty = 1, col = "red")
lines(am2, Pasto[1, ] + Pasto[2, ], lwd = 1.7,
	lty = 2, col = "blue")
lines(am2, Pasto[1, ] - Pasto[2, ], lwd = 1.7,
	lty = 2, col = "blue")
lines(am3, Borda[1, ] + Borda[2, ], lwd = 1.7,
	lty = 3, col = "black")
lines(am3, Borda[1, ] - Borda[2, ], lwd = 1.7,
	lty = 3, col = "black")
lines(am4, Cana[1, ] + Cana[2, ], lwd = 1.7,
	lty = 4, col = "gray")
lines(am4, Cana[1, ] - Cana[2, ], lwd = 1.7,
	lty = 4, col = "gray")

abline(h = 0, v = 90, col = "yellow")


#EXERCICIO 2#
*************

japi <- read.table("http://www.ecologia.ufrgs.br/~adrimelo/div/japi.txt",
	 h=T) 

head(japi)

## Curva coletor
***************************

japi.curva.1 <- specaccum(japi, method = "collector")

## Gráfico de uma curva do coletor
***********************************

names(japi.curva.1)

plot(japi.curva.1$sites, japi.curva.1$richness,  xlab = "Amostras",
	 ylab = "Riqueza de espécies")


## Curva de acumulação
***************************

japi.curva <- specaccum(japi)


## Inserir a linha da curva com rarefação
*******************************************

names(japi.curva)

lines(japi.curva$sites, japi.curva$richness, type = "b", lwd = 1.7,
	lty = 1, col = "red")

## Rarefação por amostra
****************************

(Accum.japi <- accumresult(japi, method = "rarefaction")) 
accumplot(Accum.japi, ci.type = "polygon", col = "gray")


#Exercício 3#
*************
  
## a ##
Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de espécies", ylim = c(0,14), col = "red")


boot <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho mínimo que vai começar a amostragem, neste caso 1
summary(boot, display = "boot")


lines(seq(1, 14, by = 1), boot$means[,2], type = "b", col = "blue")


## b ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de espécies", ylim = c(0,14), col = "red")

chao <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho mínimo que vai começar a amostragem, neste caso 1
summary(testeInc1, display = "chao")


lines(seq(1, 14, by = 1), chao$means[,2], type = "b", col = "blue")


## c ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de espécies", ylim = c(0,14), col = "red")

j1 <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho mínimo que vai começar a amostragem, neste caso 1
summary(testeInc1, display = "jack1")

lines(seq(1, 14, by = 1), j1$means[,2], type = "b", col = "blue")


## d ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de espécies", ylim = c(0,14), col = "red")

j2 <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho mínimo que vai começar a amostragem, neste caso 1
summary(testeInc1, display = "jack2")


lines(seq(1, 14, by = 1), j2$means[,2], type = "b", col = "blue")


########################################################################################################################
########################################################################################################################

==========================
##ÍNDICES DE DIVERSIDADE##
==========================

library(vegan)# pacote com a função "diversity"
mata.atlantica=read.table(file.choose(), header=T)# ler conjunto de dados
mata.atlantica
sum(mata.atlantica[1,])# mudem o numero 1 por outra linha que queira testar
sum(mata.atlantica[2,])# mudem o numero 2 por outra linha que queira testar
# Notem que todas as comunidades possuem 100 indivíduos

H=diversity(mata.atlantica, index="shannon")# calcula índice de Shannon para
# cada comunidade 
H

D=diversity(mata.atlantica, index="simpson")# calcula índice de Simpson para
# cada comunidade. Este cálcula o Simpson 1-D 
D

D.inv=diversity(mata.atlantica, index="invsimpson")# calcula índice de 
D.inv # Símpson para cada comunidade. Este cálcula o Simpson 1 / D. 

riqueza=specnumber(mata.atlantica) # riqueza de cada localidade
riqueza.freq=specnumber(mata.atlantica, M=2) # riqueza de cada localidade
riqueza.freq # este cálculo (inserindo M=2 na fórmula)implementa
# a frequência das espécies em relação a todas as amostras
# com um calculo simples podemos calcular a frequencia relativa que nos
# dá uma noção de distribuição da espécie nas amostras

freq.relativa=(riqueza.freq*100)/(nrow(mata.atlantica)) # o comando nrow 
# mostra o número de linhas (ou seja, de amostras) da matriz. Uma espécie
# que ocorrer em todas as amostras terá a freq.relativa = 100%
freq.relativa

diversidade.MA=cbind(riqueza, H, D, D.inv)# cria uma 
# matriz com os índices calculados e a riqueza de cada local.
diversidade.MA
# muitos autores mostram que os índices trazem respostas muito similares
# veja o gráfico abaixo com a relação da riqueza com os índices e dos 
# índices entre si.
pairs(cbind(riqueza, H, D, D.inv), pch="+", col="black")

##EXEMPLO 1##
brom=read.table(file.choose()) ##carregar o arquivo bromelias.txt
brom
brom1=read.table(file.choose())  ## carregar o arquivo bromelia1.txt
brom1

##Pergunta 1##
**************
divsp1=diversity(brom, index="simpson") ##calcula a diversidade das especies das bromélias
                                        ##utilizando o índice Simpson
divsp1

##Pergunta 2##
**************
div.vol.simpson=diversity(brom1, index="simpson")
div.vol.simpson

div.vol.shannon=diversity(brom1, index="shannon")
div.vol.shannon


## Species Abundance Distributions (SADs): McGill et al. 2007, Ecol Lett. 10:995
*********************************************************************************
  
library(vegan) # pacote que possui a função radfit

rios=read.table(file.choose(), h=T)#ler a planilha de interesse
rios # conferir se os dados estão OK.

rad.rio1=radfit(rios[1,])# implementa o teste somente para o Rio 1.
rad.rio1 # conferir resultados da análise
# NOTA: o menor valor de AIC representa o modelo teórico que melhor explica os
# dados reais. No exemplo rad.rio1 o menor valor de AIC (119.52) é do modelo 
# Null, que representa o modelo "Broken Stick" 
plot(rad.rio1, xlab="Ordem das espécies", ylab="Abundância", pch=19)
# faz o gráfico com todas as curvas e os dados reais. A linha destacada 
# representa o modelo que menos desvia dos seus dados (círculos pretos)
# o argumento pch=19 representa os seus dados e como serão representados
# modifique o valor do pch e escolha o símbolo de sua preferência

rad.rio2=radfit(rios[2,])# implementa o teste somente para o Rio 2.
rad.rio2
plot(rad.rio2, xlab="Ordem das espécies", ylab="Abundância", pch=19)

rad.rio3=radfit(rios[3,])# implementa o teste somente para o Rio 3.
rad.rio3
plot(rad.rio3, xlab="Ordem das espécies", ylab="Abundância", pch=19)

par(mfrow=c(2, 2))# este comando permite que os gráficos sejam apresentados
# na mesma janela
plot(rad.rio1, main="Rio 1", xlab="Ordem das espécies", ylab="Abundância", pch=19)
plot(rad.rio2, main="Rio 2", xlab="Ordem das espécies", ylab="Abundância", pch=19)
plot(rad.rio3, main="Rio 3", xlab="Ordem das espécies", ylab="Abundância", pch=19)


##Praticando 1##
praiaf=read.table(file.choose())
praiaf
rad.praiaA=radfit(praiaf[1,])#plota a distribuição de abundância
rad.praiaA
plot(rad.praiaA)

rad.praiaB=radfit(praiaf[2,])
rad.praiaB
plot(rad.praiaB)

##nestes comandos tem que fazer para cada praia

praias=radfit(praiaf)##roda a distribuição de abundância para todas as praias de uma só vez
praias
summary(praias)#aparece o akaike de todas as praias

plot(praias)#plota todos os gráficos juntos



# ÍNDICES DE DIVERSIDADE BETA
*****************************

library(vegan)
betadiver(help=TRUE)# lista dos índices de diversidade beta discutidos em
# Koleff et al. 2003, J.An.Ecol. 72: 367-382.

# Índice clássico de Whittaker (beta w)
salinidade=read.table(file.choose(), header=T)#importando o conjunto de dados
salinidade # gradiente de salinidade (linhas) e espécies nas colunas (n=50)
diversidade.beta=betadiver(salinidade, "w")
diversidade.beta # matriz triangular com os valores de diversidade beta entre 
# todos os pares possíveis

# Índices de Jaccard e Sorensen (binários)
jaccard=betadiver(salinidade, "j")# índice de jaccard entre todas amostras
sorensen=betadiver(salinidade, "sor")# índice de sorensen entre todas amostras

# se você tiver interessado em um par específico de amostras use "scores"
scores(jaccard)
scores(sorensen)

# como alternativa use o pacote "fossil"

library(fossil)


# notem que os valores dos índices por si trazem somente a informação de
# semelhança/diferença entre as amostras. Porém não nos informa o que causa essa
# a variação desse valor. Veja as funções "betadisper", "adonis" e "mantel" para
# testar hipóteses específicas sobre diversidade beta

Índices de Bray-Curtis e Morisita-Horn (baseado na abundância)
library(vegan)
data(mite)# ácaros associados a 70 amostras de solo
bray=vegdist(mite, "bray")#análise similaridade de Bray-Curtis
bray
morisita.horn=vegdist(mite, "horn")#análise de similaridade de Morisita-Horn
morisita.horn

# um exemplo de extensão das análises de similaridade para testar hipóteses é
# utilizar uma análise de mantel para correlacionar a matriz (p.ex. bray) 
# triangular de similaridade de espécies com uma matriz de similaridade ambiental

library(vegan)
data(varespec)# espécies de árvores coletadas em 24 localidades
data(varechem)# características químicas dos solos das 24 localidades
dist.species=vegdist(varespec, "bray")# implementa a função bray-curtis
dist.chemical=vegdist(scale(varechem), "euclidean")# a função scale padroniza as
# variáveis ambientais que estão em unidade muito diferentes
associacao=mantel(dist.species, dist.chemical)
associacao
# valores significativo indicam que a composição de espécies é determinada pelas
# variáveis ambientais (neste caso)

# Índices Chao-Jaccard e Chao-Sorensen
library(fossil)

CSoren.dist=ecol.dist(ilhas, chao.sorenson, type="dis")
CSoren.simi=ecol.dist(ilhas, chao.sorenson, type="sim")
CJaccar.dist=ecol.dist(ilhas, chao.jaccard, type="dis")
CJaccar.simi=ecol.dist(ilhas, chao.jaccard, type="sim")

# usando o argumento type="dis" e type="sim" você calcula a matriz de
# dissimilaridade ("dis") e similaridade ("sim")

# se optar por calcular a similaridade entre duas localidades use a seguinte 
# função:
library(fossil)

IlhaA=ilhas[,1]
IlhaB=ilhas[,2]
CSoren.A.B=chao.sorenson(IlhaA, IlhaB)
CJaccar.A.B=chao.jaccard(IlhaA, IlhaB)
CSoren.A.B
CJaccar.A.B
# outros índices disponíveis no pacote "fossil"

Comunidade.A <- c(1,0,4,3,5,0,0,7)
Comunidade.B <- c(2,1,3,0,0,1,0,6)
bray.curtis(Comunidade.A, Comunidade.B)
jaccard(Comunidade.A, Comunidade.B)
simpson(Comunidade.A, Comunidade.B)
sorenson(Comunidade.A, Comunidade.B)
morisita.horn(Comunidade.A, Comunidade.B)

# Teste de homogeneidade de dispersões multivariadas (vamos chamar de "HDM")
library(vegan)# possui as funções betadisper que faz a análise HDM e vegdist
# que calcula a dissimilaridade com seu índice de interesse
cafe=read.table(file.choose(), header=T)# ler a planilha de interesse
head(cafe)#conferir parte da planilha que você importou no R
tipo.matriz=factor(c(rep(1,16), rep(2,8)), labels = c("com.mata","sem.mata"))
# o comando acima cria os fatores. Ou seja, os grupos que você quer comparar
# neste exemplo você que testar se a diversidade beta dos "polinizadores"
# do café é maior em plantações rodeadas por mata atlântica ou por pasto.
tipo.matriz
dissimilaridade=vegdist(cafe, "bray")
head(dissimilaridade)
HDM=betadisper(dissimilaridade, tipo.matriz)# função que faz a HDM
HDM
valor.P=permutest(HDM, pairwise = F)
valor.P
plot(HDM)

####EXERCÍCIOS####
******************
  
##Exercício 01
    
clone1=read.table(file.choose())
clone1
dissimilaridade=vegdist(clone1, "jaccard")####lembrar que o vegdist sempre calcula a DISSIMILARIDADE
dissimilaridade


##Exercício 02

bw=read.table(file.choose(), header=T)
head(bw)
?factor

matrizbw=factor(c(rep(1,10), rep(2,10)), labels = c("trilhas.bloqueadas","trilhas.liberadas"))
matrizbw
diss.bw=vegdist(bw, "bray")
head(diss.bw)
HDMbw=betadisper(diss.bw, matrizbw)
HDMbw
valor.P=permutest(HDMbw, pairwise = F)
valor.P
plot(HDMbw)

#########################################################################################################################
#########################################################################################################################

=========================================
##INTRODUÇÃO À ESTATÍSTICA MULTIVARIADA##
=========================================

##Análise de agrupamento
************************

##Exercício 1

library(vegan)
data(mite)##exemplo
matriz<-vegdist(mite, method="bray")##trans. numa matriz de dissimilaridade
matriz1<-hclust(matriz, method="complete")
plot(matriz1)

outroindice<-vegdist(mite, method="jaccard")##transforma a matriz com outro 
  						  #índice
outro<-hclust(outroindice, method="complete")
plot(outro)
#############
##com pvclust

##Exercício 2

library("pvclust")
dist<- function(x,...){
vegdist(x,...)
}###acrescenta as funções do vegdist no dist
bocaina<-read.table(file.choose())#######procura arquivo (TXT)
boc=t(bocaina)##para transpor a matriz
mz<-pvclust(boc, method.hclust="average", method.dist="horn")##análise
plot(mz)
pvrect(mz)###agrupa


##Exercício 3

install.packages("ade4")
library("ade4")
data(dunedata)
ddveg=dunedata$veg
an.dd=pvclust(ddveg, method.hclust="average", method.dist="bray")##análise
plot(an.dd)
pvrect(an.dd)###agrupa

***********
##IndVal
***********

library(labdsv)

##Exemplo
mam.cerrado=read.table(file.choose(), h=T)
?indval
fitofis=c(rep(1,4), rep(2,4), rep(3,4), rep(4,4), rep(5,4))
resultado=indval(mam.cerrado, fitofis)
summary(resultado)
#para apresentar uma tabela dos resultados
resultado$maxcls
resultado$indcls
resultado$pval
tab.resultado=cbind(resultado$maxcls,resultado$indcls,resultado$pval)
colnames(tab.resultado)<-c("maxgrp", "ind. value","P")
tab.resultado

##EXERCÏCIOS##

##Exercício1

indval=read.table(file.choose(),h=T)
turb=indval[,1]###selecionando apenas a primeira coluna; no caso, as espécies 
		  ###que indicam essas classes de turbidez
turb
sp=indval[,-1]
sp

resul=indval(sp, turb)###1º vem a matriz(sp);2º a variável agrupante (turb)
summary(resul)
summaryresul$maxcls
resul$maxcls
resul$indcls
resul$pval
tab.resul=cbind(resul$maxcls, resul$indcls, resul$pval)
colnames(tab.resul)<-c("maxgrp", "ind. value","P")
tab.resul

####Outro exercício (IndVal)

anuro=read.table(file.choose())
grupo=read.table(file.choose())
anuros=t(anuro)
grupo
anuros
g1=sort(grupo[,1], decreasing=FALSE)
resultado=indval(anuros, g1)###1º vem a matriz(anuros);
					 ###2º a variável agrupante (grupo)
summary(resultado)

***************
##ANOSIM e MRPP
***************

##EXERCÍCIOS##

##Exercício1

lagos=read.table(file.choose())
lagos
lagospa=decostand(lagos,"pa")#transforma os dados em presença/ausência
lagospa
conec=factor(c(rep(1,8), rep(2,8)),labels=c("conect","isol"))
conec
ans=anosim(lagospa,conec)
ans

##Exercício2

ans2=anosim(lagos,conec)
summary(ans2)
plot(ans2)
names(ans2)
?names

##Exercício3

art=read.table(file.choose())
head(art)
mp=factor(c(rep(1,5), rep(2,5)),labels=c("M","P"))
mp
ansmp=anosim(art,mp)
ansmp

##Exercício4

cer=read.table(file.choose(), head=T)
head(cer)
fis=cer[,1]
fis
veg=cer[,-1]
head(veg)
?mrpp
mrppveg=mrpp(veg,fis)
mrppveg

===============
##### PCA #####
===============
  
##Exercício1
library(vegan)
library(MASS)
data(crabs)
head(crabs)
crabspca=crabs[,-(1:3)]
head(crabspca)
?pca
?princomp
?prcomp
respca=princomp(crabspca)
respca
biplot(respca)

?biplot.rda
resrda=rda(crabspca)
resrda
biplot.rda(resrda, scaling=1)
biplot.rda(resrda, scaling=2)
biplot(resrda)

##Exercício2

doubs=read.csv(file.choose())
head(doubs)
var=doubs[,-1]
head(var)
rdadoubs=rda(var, scale=T)
rdadoubs

# evplot()
# Plot eigenvalues and percentages of variation
# Kaiser rule and broken stick model
#
# License: GPL-2 
# Author: Francois Gillet, Octber 2007

evplot = function(ev) {
  # Broken stick model (MacArthur 1957)
	n = length(ev)
	bsm = data.frame(j=seq(1:n), p=0)
	bsm$p[1] = 1/n
	for (i in 2:n) {
		bsm$p[i] = bsm$p[i-1] + (1/(n + 1 - i))
	}
	bsm$p = 100*bsm$p/n
	# Plot eigenvalues and % of variation for each axis
	op = par(mfrow=c(2,1))
	barplot(ev, main="Eigenvalues", col="bisque", las=2)
	abline(h=mean(ev), col="red")
	legend("topright", "Average eigenvalue", lwd=1, col=2, bty="n")
	barplot(t(cbind(100*ev/sum(ev), bsm$p[n:1])), beside=T, 
		main="% variation", col=c("bisque",2), las=2)
	legend("topright", c("% eigenvalue", "Broken stick model"), 
		pch=15, col=c("bisque",2), bty="n")
	par(op)
}

objeto1=rdadoubs$CA$eig#extrai os autovalores
objeto1
evplot(objeto1)#plota o gráfico


===============
##### PCoA ####
===============

library(ape)
boctemp=read.table(file.choose())
boctemp
?pcoa
matboc=vegdist(boctemp,"bray")
matboc
pcoaboc=pcoa(matboc)
pcoaboc
biplot(pcoaboc)


===============
##### nMDS ####
===============

doub=read.csv(file.choose())
head(doub)
?metaMDS
respnmds=metaMDS(doub, distance="bray")
respnmds
reshorn=metaMDS(doub, distance="horn")
reshorn

====================
##### CCA e RDA ####
====================

##Exercício1

?rda
doubsenv=read.csv(file.choose())
doubsspe=read.csv(file.choose())
head(doubsenv)
head(doubsspe)
respcca=rda(doubsspe,doubsenv)
plot(respcca)

##Exercício2

data(mite)
data(mite.env)
ccamite=cca(mite~., mite.env)##~. roda com todas as variáveis
plot(ccamite)


======================
### RDA e CCA parcial
======================

## Exemplo 1

library(vegan)
data(mite)
mite.hel=decostand(mite, "hellinger")##"hellinger"-padronização dos dados;
  					 ##diferenças nas abundâncias
tibouchina=read.table(file.choose())
mm1 <- model.matrix(~ dtri + quag + arfl + esfl, data=tibouchina)[,-1]##matriz
											    #1
###"model.matrix" transforma variáveis categóricas e não categóricas
###para poder usa-las nas análises
 
mm2 <- model.matrix(~ tiso + dens.tc + localidade, tibouchina)[, -1]##matriz 2
rda.parcial=rda(mite.hel ~ mm1+Condition(mm2))##relação da comp. sp com matriz
							    ## ambiental controlada por 
							    ##outra variável (condition(mm2) 
rda.parcial
anova(rda.parcial)#significancia das variáveis com a composição de espécies
sig.a=rda(mite.hel, mm1, mm2)##mite.hell=ambiente
				     ##"mm1"=o que quero modelar (ambiente)
				     ##"mm2"=o que eu quero controlar (covariável)
				     ##tiro o efeito de mm2 sobre mm1 e relaciono "mm1"
				     ##com a composição (mite.hel)
sig.c=rda(mite.hel, mm2, mm1)##inverso ao de cima
componente.a=anova(sig.a, step=10000, perm.max=1000)
componente.c=anova(sig.c, step=10000, perm.max=1000)
plot(rda.parcial)


# partição de variância

particao.ex1=varpart(mite.hel, mm1, mm2)
particao.ex1
plot(particao.ex1)


## Exemplo 2

data(mite)
data(mite.pcnm)# vetores espaciais obtidos a partir dos dados de LAT e LONG
estrutura.planta=read.table(file.choose(), h=T)
bioquimico=read.table(file.choose(), h=T)
biotico=cbind(estrutura.planta, bioquimico)
mite.hel=decostand(mite, "hellinger")
rda.exemplo2=rda(mite.hel~DensTric+EspFoliar+N+Enx+Prot+Acucar+Condition(as.matrix(mite.pcnm)), data=biotico)
rda.exemplo2

# partição de variância para ver a explicação de cada componente

particao.ex2=varpart(mite.hel,~DensTric+EspFoliar,~N+Enx+Prot+Acucar,mite.pcnm, data=biotico)
particao.ex2
showvarparts(3)
plot(particao.ex2)


# digite o comando abaixo para entender melhor como funciona a partição de variância:

vegandocs("partition")

======================
# PROCRUSTES + PROTEST
======================

# 10 - Protest

library(vegan)# pacote com a função protest e procrustes
library(labdsv) #pacote com a função nmds

##Exemplo1

peixes=read.table(file.choose(), header = TRUE)
macroinvert=read.table(file.choose(), header = TRUE)
peixe.dist=vegdist(peixes, "bray", binary=T)
macro.dist=vegdist(macroinvert,"bray", binary=T)
nmds.peixes=bestnmds(peixe.dist)
nmds.macroinvert=bestnmds(macro.dist)
summary(nmds.peixes)
summary(nmds.macroinvert)
scores.peixes=scores(nmds.peixes, display=c("sites"), choices =1:2)
scores.macroinvert=scores(nmds.macroinvert, display=c("sites"), choices =1:2)
procr=procrustes(nmds.peixes, nmds.macroinvert)
concordancia=protest(scores.peixes, scores.macroinvert, scores = "sites", scale=T, permutations = 9999)
summary(concordancia)
plot(concordancia)


# 10 - Protest "Extendido"
#Com a análise anterior pode saber se peixes e macroinvetebrados tem a mesma
#resposta aos lagos, ou seja, se possuem a mesma estruturação espacial.
#Como alternativa, podemos testar se as características físico-químicas do
#riacho afetam tanto peixes quanto macroinvertebrados 
#artigo: Paavola et al. 2006, Ecological Applications 16:368-379.

library(vegan)# pacote com a função protest e procrustes
library(labdsv) #pacote com a função nmds

lagos=read.table(file.choose(), header = TRUE)

# a primeira parte da análise é igual a anterior que compara a concordância
# entre peixes e macroinvertebrados

peixe.dist=vegdist(peixes, "bray", binary=T)
macro.dist=vegdist(macroinvert,"bray", binary=T)
nmds.peixes=bestnmds(peixe.dist)
nmds.macroinvert=bestnmds(macro.dist)
summary(nmds.peixes)
summary(nmds.macroinvert)
scores.peixes=scores(nmds.peixes, display=c("sites"), choices =1:2)
scores.macroinvert=scores(nmds.macroinvert, display=c("sites"), choices =1:2)
concordancia=protest(scores.peixes, scores.macroinvert, scores = "sites", scale=T, permutations = 9999)
summary(concordancia)
plot(concordancia)

# padronizando os dados ambientais

lagos.pad=decostand(lagos,"standardize")
pca.lagos=rda(lagos)
scores.lagos=scores(pca.lagos)
peixe.lago=protest(scores.peixes, scores.lagos, scores = "sites", scale=T, choices =1:2, permutations = 9999)
macro.lago=protest(scores.macroinvert, scores.lagos, scores = "sites", scale=T, choices =1:2, permutations = 9999)


