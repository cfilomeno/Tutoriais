=============================================
##OS TIPOS DE OBJETO: CRIA??O E MANIPULA??O##
=============================================

###Vetor num?rico###
********************

a<-1

c(1,2,3,4,5)->b

dados.campo=seq(1,10,2)   #cria uma sequ?ncia de n?meros de 1 at? 10 de 2 em 2

x=seq(3,10)   #cria seq de 3 at? 10

sample(x, 2, replace=T)   #sorteia dois n?meros do vetor x, com reposi??o do n?mero sorteado

mata.1=rep(1:2,c(10,3))   #repete o n?mero 1 dez vezes e o n?mero 2 tr?s vezes

exemplo=c(1:10)   #cria uma seq de 1 at? 10

length(exemplo)   #d? o n?mero de itens do vetor


###Vetor de caracter###
***********************

dados.pessoais=c(nome="fulano", nascimento="08/10/1934", estadocivil="solteiro")
dados.pessoais

###Vetor l?gico###
******************

is.factor(x)   #diz se x ? fator (FALSE)

is.matrix(x)   #diz se x ? uma matriz (FALSE)

is.vector(x)   #diz se x ? um vetor (TRUE)

a<-1
a<1   # 'a' ? menor que 1? (FALSE)
a==1   # 'a' ? igual a 1? (TRUE) **utilizar dois s?mbolos de igual(=) para que n?o seja criado um novo objeto com o nome 'a'
a>=1   # 'a' ? maior e/ou igual a 1? (TRUE)
a!=2   #o objeto 'a' n?o ? igual a dois? (TRUE) (!=nega??o)

###Fator###
***********

dados=c("baixo", "menos baixo", "m?dio", "alto")   #cria um vetor com vari?veis categ?ricas

as.factor(dados)   #transforma o vetor num fator

is.factor(dados)   #testa a convers?o

###Matriz###
************

xy=matrix(1:12, nrow=3)   #cria uma matriz de 3 linhas, com n?meros de 1 a 12 

rownames(xy)=LETTERS[1:3]   #renomeia as linhas com as letras A, B e C em mai?sculas (LETTERS)

colnames(xy)=c("mata.1", "mata.2", "mata.3", "mata.4")   #renomeia as colunas com os nomes mata.1, mata.2.....

xy

t(xy)   #transp?e a matriz

class(xy)  #mostra o que ? o objeto xy (matrix)

xy[,1]   #acessa a primeira coluna da matriz

xy[1,]   #acessa a primeira linha da matriz

  	#### As chaves significam [linha, coluna]

head(xy)   #acessa as primeiras linhas da matriz
								####?til para matrizes muito extensas
tail(xy)   #acessa as ?ltimas linhas da matriz

fix(xy)   #edita uma matriz ou data frame

str(xy)   #avalia a estrutura do objeto

summary(xy)   #fornece um resumo do objeto


###Data frame### (semelhante a uma matriz, mas aceita vetores de tipos diferentes)
****************

comunidade= data.frame(especies=c("D.nanus", "S.alter", "I.guentheri", "A.callipygius"), habitat=factor(c("Folhi?o",
 "Arb?reo", "Riacho", "Po?a")), altura=c(1.1, 0.8, 0.9, 1), distancia=c(1, 1.7, 0.6, 0.2))

as.data.frame(xy)   #converte num data frame

class(xy)   #testa a convers?o

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
##IMPORTA??O E EXPORTA??O DE DADOS##
====================================  
  
#Exerc?cio 1#
*************
?rnorm

a=rnorm(30, mean=1, sd=2.5)   #cria um conjunto de dados com distribui??o normal, 30 unidades, m?dia = 1 e desvio-padr?o = 2.5
b=rnorm(30, mean=1, sd=2.5)

?t.test

t.test(a,b)   #realiza um teste t entre os conjuntos 'a' e 'b'

#Exerc?cio 2#
*************

vetor1=c(1,3,5,6,4,2,7)

vetor2=c(seq(1,32))   #cria uma sequ?ncia de 1 a 32

vetor3=c(seq(1,32,2))   #cria uma sequ?ncia de 1 a 32 de 2 em 2

vetor4=c(980:345)   #cria uma sequ?ncia decrescente de 980 a 345

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

#Exerc?cio 3#
*************
m13=mean(vetor1)
m23=mean(vetor2)
m33=mean(vetor3)
m43=mean(vetor4)

#Exerc?cio 4#
*************
dados.campo=seq(1,10,2)

###4_a
dados.campo[1:5]   #seleciona os cinco primeiro elementos

###4_b
dados.campo [-(1:2)]   #seleciona todos com exce??o dos dois primeiros

###4_c
dados.campo[3]   #seleciona o terceiro elemento

###4_d
dados.campo[(dados.campo<4)]   #seleciona os elementos menores que 4

#Exerc?cio 5#
*************

ex5=seq(1,20)   #cria uma sequ?ncia de 1 at? 20
l1=letters[ex5]   #transforma os n?meros em letras, na sequ?ncia do alfabeto

#Exerc?cio 6#
*************
l2=LETTERS[ex5]

#Exerc?cio 7#
*************

cbind(l1,l2)   #une os dois vetores

#Exerc?cio 8#
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
##CRIA??O E MANIPULA??O DE GR?FICOS NO R##
==========================================

#Exerc?cio 1#
*************

library("lattice")# carrega o pacote lattice
data(quakes)  #carrega o dado "quakes", que j? est? no pacote
head(quakes)
xyplot(lat~long, data=quakes)	#plota a latitude em fun??o da longitude, retirando os dados de "quakes"

#Exerc?cio 2#
*************

library(MASS)
data(melanoma)
head(melanoma)
plot(melanoma$incidence, melanoma$year, cex=24,xlab="Frequ?ncia", ylab="Anos",bty="L", data=melanoma)
	# plota a incid?ncia de melanoma em fun??o dos anos
	# cex muda o tamanho dos pontos
	# xlab e ylab renomeiam os eixos
	# bty="L" retira as bordas direita e superior

#Exerc?cio 3#
*************

a=c(1,3,4,5,6)  # cria um vetor com o conjunto entre par?nteses
b=c(2,2,4,5,7)
plot(a,b)	
rl=lm(a~b)	# calcula uma regress?o de 'a' em fun??o de 'b'
abline(rl)	# plota no gr?fico a reta ajustada ? regress?o


#Exerc?cio 4#
*************

dados=rnorm(1000,0,1)	#cria um conjunto de dados com 1000 n?meros, m?dia igual a zero e desvio padr?o igual a 1
hist(dados,xlab="Observa??es", ylab="Frequ?ncia", col="gray")

##a)
points(mean(dados),0,pch=21,bg="red")	## plota a m?dia do conjunto 'dados' (eixo x)
							## o n?mero zero corresponde ao local no eixo y onde vai ser colocado o ponto
							## 'pch' especifica o tipo de s?mbolo a ser utilizado (para maiores detalhes verificar em ?points)
							## 'bg' escolhe a cor a ser utilizada no preenchimento do s?mbolo quando este ? aberto

##b)
points(quantile(dados,c(0.05,0.95)),c(0,0),pch=25,bg="green")	## plota os quantis (em y=0 para os dois)

##c e d)
legend("topleft",c("m?dia", "quantis"), pch=c(21,25),pt.bg=c("red", "green"))
		## insere a legenda no canto superior esquerdo
		## ver '?legend' para explorar as v?rias op??es poss?veis para a legenda

###################################################################################################################
###################################################################################################################

==============================
##DISTRIBUI??ES ESTAT?STICAS##
==============================
  
 
## DISTRIBUI??O BINOMIAL
************************

help (Binomial) ## Ajuda com as fun??es

## DEFINI??O E CONCEITOS

dbinom(x, size, prob)## Probabilidade da vari?vel X

pbinom(q, size, prob)## Probabilidade dos valores menores que X
  		   ##	? a curva de probabilidade acumulada

qbinom(p, size, prob) ## Voc? d? um valor de probabilidade e ele retorna
			    ## n?mero determinado pela probabilidade acumulada 

rbinom(n, size, prob) ## gera n?meros de sucessos aleat?rios para 
			    ## a distribui??o binomial

## EXEMPLO DA AULA

dbinom(5, size = 12, prob = 0.5) ## Exato valor de 5 caras

pbinom(5, size = 12, prob = 0.5) ## Valores igual ou menores que 5

pbinom(5, size = 12, prob = 0.5, lower.tail = F)## Valores igual ou maiores 
								## que 5 	

qbinom(0.38, size = 12, prob = 0.5)## Valor acumulado - Inverso do anterior

rbinom(5, size = 12, prob = 0.5) ## N?o s?o iguais sempre - aleat?rios


## VALOR ESPERADO E M?DIA
 
 ## E = n * p
 
       12 * 0.5

## VARI?NCIA

  ## V = n * p *(1 - p)

     12 * 0.5 *(1 - 0.5)

## GRAFICO MOSTRANDO A DISTRIBUI??O BINOMIAL

plot(dbinom(seq(0,12, by =1), size = 12, prob = 0.5), type ="h",
	xlab = "Sucesso", ylab = "Probabilidade",
	main = "Fun??o distribui??o de probabilidade")

plot(pbinom(seq(0,12, by =1), size = 12, prob = 0.5), type ="h",
	xlab = "Sucesso", ylab = "Probabilidade", 
	main = " Fun??o de distribui??o acumulada")


## EXEMPLO BROM?LIA

dbinom(40, size = 100, prob = 0.5)## Probabilidade de ser encontrada em 40 
					    ## cidades no total de 100 
					    ## com probabilidade de 0.5

sum(dbinom(46:54, 100, 0.5))## Pode determinar um intervalo


## GRAFICO BROMELIA
 
plot(dbinom(seq(0,100, by =1), size = 100, prob = 0.5), type ="h",
	xlab = "Presen?a", ylab = "Probabilidade",
	main = "Fun??o distribui??o de probabilidade")

plot(pbinom(seq(0,100, by =1), size = 100, prob = 0.5), type ="h",
	xlab = "Presente", ylab = "Probabilidade", 
	main = " Fun??o de distribui??o acumulada")



## DISTRIBUI??O POISSON
***********************

## DEFINI??O E CONCEITOS

dpois(x, lambda)     ## Probabilidade da vari?vel X

ppois(q, lambda)     ## Probabilidade dos valores menores que X
			   ##	? a curva de probabilidade acumulada

qpois(p, lambda)      ## Voc? d? um valor de probabilidade e ele retorna
			    ## n?mero determinado pela probabilidade acumulada 

rpois(n, lambda)      ## gera n?meros de sucessos aleat?rios para 
			    ## a distribui??o poisson



## GRAFICO MOSTRANDO A DISTRIBUI??O POISSON

plot(dpois(seq(1,15, by =1), lambda = 10), type ="h",
	xlab = "N?mero de visitas", ylab = "Probabilidade",
	main = "Fun??o distribui??o de probabilidade")

plot(ppois(seq(0,10, by =1), lambda = 2), type ="h",
	xlab = "N?mero de visitas", ylab = "Probabilidade", 
	main = " Fun??o de distribui??o acumulada")


## EXEMPLOS

dpois (0, 2)
dpois (1, 2)
dpois (2, 2)
ppois (2, 2, lower.tail = F)

plot(dpois(seq(1,10, by =1), lambda = 10), type ="h",xlab = 
"N?mero de visitas", ylab = "Probabilidade",  main = "Fun??o 
massa de probabilidade")

plot(ppois(seq(1,10, by =1), lambda = 10),type ="h", xlab = 
"N?mero visitas",  ylab = "Probabilidade",  main = "Fun??o de 
probabilidade acumulada")

plot(dbinom(seq(1,50, by =1), size =50, prob = 0.09), type 
="h",  ylab = "Probabilidade",  main = "Distribui??o Binomial")

plot(dpois(seq(1,50, by =1), lambda = 50*0.09), type ="h", ylab 
= "Probabilidade", main = "Distribui??o Poisson")


## EXERCICIO TIPOS SANGUINEOS

dbinom(2, size = 5, prob = 0.4) * dbinom(1, size = 5, prob = 0.45)*
	 dbinom(1, size = 5, prob = 0.1)* dbinom(1, size = 5, prob = 0.05)



## DISTRIBUI??O NORMAL
**********************

## EXEMPLO DA AULA

## Qual ? a probabildiade que um peixe capturado aleat?riamente
## tenha 20.15 cm ou mais? M?DIA = 17.1; Desvio = 1.21


## PRIMEIRAMENTE VAMOS VER A DISTRIBUI??O DOS DADOS

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


## TESTAR AS PREMISSAS DA DISTRIBUI??O NORMAL
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


## 2 DESVIOS PADR?ES
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

## ALTURA M?DIA DE ?RVORES NO CERRADO ? DE 2.8 METROS COM DESVIO PADR?O DE
## 0.5 METROS. A PARTIR DE QUAL ALTURA ESTAR?O OS 5% MAIS ALTOS?

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

#Exerc?cio 1#
*************
##  X = n?mero de presas consumidas 2
##       m?dia = 5

dpois (2, 5)


#Exerc?cio 2#
*************
  
## a) X = n?mero de ovos predados 3
##      m?dia = 6 ovos


dpois (3, 6)


## b) 3 ou menos ovos predados

ppois (3, 6)



#Exerc?cio 3#
*************

## a) p = 0.01
##         n = 30
##         k > 1

pbinom(1, size = 30, prob = 0.01, lower.tail = F)

## b) m?dia = n.p = 30*0.01

ppois(1, 0.3, lower.tail = F) ## Valor muito parecido com o Binomial


#Exerc?cio 4#
*************

##    m?dia = 10
##         x = menor que 4

ppois(4, 10)


#Exerc?cio 5#
*************
  
##	p = 0.25
##         n = 6
##         k = 3

dbinom(3, size = 6, prob = 0.25)


#Exerc?cio 6#
*************

## p = 0.3
##         n = 4
##         k > 3

pbinom(3, size = 4, prob = 0.3, lower.tail = F)


#Exerc?cio 7#
*************

##    p = 0.85
##         n = 15
##         k = 10

dbinom(10, size = 15, prob = 0.85)
dbinom(5, size = 15, prob = 0.15)


#Exerc?cio 8#
# *************

##    m?dia = 400
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


#Exerc?cio 9#
*************

## a) m?dia = 4
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


#Exerc?cio 10#
**************

##   m?dia = 8
##         desvio = 2

## a  - menos que 5 mintuos

pnorm(5, mean = 8, sd = 2)


## b - Mais que 9.5 minutos

pnorm(9.5, mean = 8, sd = 2, lower.tail = F)

## c entre 7 e 10 minutos

pnorm(10, mean = 8, sd = 2) - pnorm(7, mean = 8, sd = 2)


#Exerc?cio 11#
**************

##   m?dia = 5
##         desvio = 0.9

## a  - 15% mais leves

qnorm(0.15, mean = 5, sd = 0.9)


## b - 50% m?dios n?o considerando os 15% mais leves

qnorm(0.65, mean = 5, sd = 0.9)

## c - 20% pesados

qnorm(0.85, mean = 5, sd = 0.9)

leves = 4,1 kg
m?dios = 4.1 < X < 5.4 Kg
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


## CARREGANDO PACOTES NECESS?RIOS PARA AS AN?LISES
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
library(AED)## Esse pacote tem que ser baixado da p?gia
  	## http://www.highstat.com/book2.htm

## CARREGANDO DADOS
#####################

data(RoadKills) ## Carregando dados - Os dados consistem do n?mero de mortes
		    ## de anf?bios em uma rodovia em 52 s?tios em Portugal


RK <- RoadKills ## Renomeando para facilitar

head(RK)

## TEORIA - Ecologia de Paisagem
## VARI?VEL RESPOSTA  - N?mero de anf?bios mortos em um rodovia
## QUEST?O - Quais vari?veis da paisagem melhor explicam
## a mortalidade de anf?bios? 

## TRANSFOMO ALGUMAS VARI?VEIS POR CAUSA DOS ALTOS VALORES
***********************************************************

RK$SQ.POLIC <- sqrt(RK$POLIC)
RK$SQ.WATRES <- sqrt(RK$WAT.RES)
RK$SQ.URBAN <- sqrt(RK$URBAN)
RK$SQ.OLIVE <- sqrt(RK$OLIVE)
RK$SQ.LPROAD <- sqrt(RK$L.P.ROAD)
RK$SQ.SHRUB <- sqrt(RK$SHRUB)
RK$SQ.DWATCOUR <- sqrt(RK$D.WAT.COUR)


## VERIFICANDO COLINEARIDADE ENTRE AS VARI?VEIS INDEPENDENTES
###############################################################

## COLINEARIDADE ? a existencia de correla??o entre as covari?veis

Z1 <-cbind(RK$OPEN.L, RK$SQ.OLIVE, RK$MONT.S,RK$MONT, RK$SQ.POLIC,
     RK$SQ.SHRUB, RK$SQ.URBAN, RK$SQ.WATRES, RK$L.WAT.C,
     RK$L.D.ROAD, RK$SQ.LPROAD,RK$D.WAT.RES, RK$SQ.DWATCOUR,
     RK$D.PARK, RK$N.PATCH, RK$P.EDGE, RK$L.SDI)
     
corvif(Z1)



## Usamos valor de VIF = 3 para encontrar um conjunto de vari?veis 
## explicativas que n?o cont?m colinearidade, foram retirados
## uma vari?vel de cada vez, recalculados os valores de VIF,
## e repetiu o processo at? todos os valores de VIF foram inferiores a 3.


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


## WEIGHT = s?o usados para medir a for?a da evid?ncia em favor
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



## TESTE DE HIP?TESES - Likelihood rate test (LRT)
###################################################

## DEVIANCE = RESIDUAL DEVIANCE = ? 2 x a diferen?a entre
## o log likelihood do modelo que apresenta um ajuste perfeito (modelo
## saturado) e o modelo em quest?o. Quanto melhor o residual deviance
## melhor o modelo.
 

drop1(M1,test = "Chi") ## A diferen?a entre as deviance dos modelos
			     ## apresenta uma distribui??o chi-square com
	                 ## p1 - p2 graus de liberdade

DM1 <- glm(TOT.N ~ OPEN.L + MONT.S + SQ.POLIC +
         SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD +
         D.PARK, family = poisson, data = RK)

drop1(DM1, test = "Chi") 

anova(DM1, M1, test = "Chi") 

## Confirmando esses informa??o com o que aprendemos anteriormente
*******************************************************************

pchisq (2.269, 1, lower.tail = F)

1 - pchisq (2.269, 1)



## CONTUDO A VIDA N?O ? T?O SIMPLES
#####################################

## ANTES DE ANALISAR OS RESULTADOS E REALIZAR AS AN?LISES DE SELE??O
## VOC? PRECISA CHECAR SEUS DADOS PARA OVERDISPERS?O

## OVERDISPERS?O =  significa que a vari?ncia ? maior que a m?dia

## COMO SABER SE OS DADOS APRESENTAM OVERDISPERS?O

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


## N?o escrever na sua disserta??o ou artigo que usou uma distribui??o
## Quasi-Poisson. Quasi-Poisson n?o ? uma distribui??o.
## Basta dizer que voc? fez GLM com distribui??o Poisson, 
## detectou overdispers?o, e corrigiu os erros padr?es usando um modelo
## quasi-GLM, onde a vari?ncia ? dada por f ? ?, onde ? ? a m?dia 
## e f o par?metro de dispers?o.

## Veja que o par?metro de dispers?o f ? estimado em 5,93. 
## Isto significa que todos os erros padr?es foram multiplicados por 2,43
## (a raiz quadrada de 5,93), e como resultado, a maioria dos par?metros
## n?o s?o mais significativas.


## SELE??O MODELOS EM QUASI-POISSON
**************************************

## Sob a hip?tese nula, os par?metros de regress?o da vari?vel independente
## omitidos s?o iguais a zero, e os F-ratio segue uma distribui??o F com
## p1 - p2 e n - p1 graus de liberdade (n ? o n?mero de observa??es)

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
plot(RK$D.PARK, RK$TOT.N, xlab = "Dist?ncia at? o parque",
ylab = "N?mero de anf?bios mortos")
lines(RK$D.PARK, F, lty = 1, col = "red")
lines(RK$D.PARK, FSEUP, lty = 2, col = "red")
lines(RK$D.PARK, FSELOW, lty = 2, col = "red")


## Em Quasi-Poisson - AIC n?o ? calculado

## QUASI-AIC
***************

dd1 <- dredge(M4, rank = "QAICc", chat = summary(M4)$dispersion)
MQP1 <- get.models(dd1, 1:8)
model.avg(MQP1)


## Os usu?rios devem ter em mente os riscos que tal "abordagem 
## impensada" de avalia??o de todos os modelos poss?veis possue. 
## Embora este procedimento ? ?til em certos casos e justificado,
## ele pode resultar na escolha de um  "melhor" modelo esp?rio.

## "Deixar o computador descobrir" ? uma pobre estrat?gia e geralmente reflete
## o fato de que o pesquisador n?o se preocupou em pensar claramente 
## sobre o problema de interesse  e sua configura??o cient?fica
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

## odTest = Compara o log-likelihood do modelo de regress?o binomial negativa
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
								    ## ? melhor


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


## Sele??o autom?tica
************************

AIC <- stepAIC(NB1)
AIC


## SELECAO MODELO AICc
***********************

AICc <- ICtab(NB1, NB2, NB3, NB4, NB5, NB6, NB7, NB8, type = c("AICc"), 
	weights = TRUE, delta = TRUE, sort = TRUE, nobs = 52)
AICc


## TESTE DE HIP?TESE
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
			    ## estavam muito pr?ximos do m?gico valor de 0.05


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

## Agora mostrarei um exemplo bem simples com dados de presen?a e aus?ncia.
## GLM com dados bin?rios ou propor??o s?o tamb?m chamados de 
## regress?o log?stica

## Analisar a distribui??o de tuberculose em javalis. Modelou a ocorr?ncia
## da tuberculose como uma fun??o do comprimento do javali (cabe?a-tronco).

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

## Propor??o
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
     xlab="Porcentagem de ?rea aberta",
     ylab="Probabilidade de infec??o por E. cervi")
lines(MyData$OpenLand,exp(P1$fit+1.96*P1$se.fit)/
       (1+exp(P1$fit+1.96*P1$se.fit)),lty=2)
lines(MyData$OpenLand,exp(P1$fit-1.96*P1$se.fit)/
       (1+exp(P1$fit-1.96*P1$se.fit)),lty=2)
points(Tbdeer$OpenLand,Tbdeer$DeerPosProp)


## Esse resultado sugere que quanto maior a porcentagem de ?rea aberta
## menor a probabilidade de amostrar um veado com infec??o por E. cervi.


## Visualiza??o dos res?duos
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

## S?o usados para modelos mais complexos com design em blocos e dados aninhados.

## Aprensenta dois efeitos
******************************

## EFEITO FIXO - depende somente da m?dia

## EFEITO ALEAT?RIO - depende somente da vari?ncia (n?o queremos 
## medir o efeito


data(RIKZ)
head(RIKZ)


## Riqueza de animais marinhos bent?nicos em nove praias, 
## cada praia com cinco amostras.
## NAP = altura da esta??o de amostral em rela??o ao n?vel da mar?

## Quest?o ? se existe rela??o entre a riqueza e a NAP

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
     ylab="Riqueza de esp?cies",xlab="NAP")
for (i in 1:9){
   x1<-RIKZ$NAP[RIKZ$Beach==i]
   y1<-F1[RIKZ$Beach==i]
   K<-order(x1)
   lines(sort(x1),y1[K])
}
text(RIKZ$NAP,RIKZ$Richness,RIKZ$Beach,cex=0.9)

## Se StdDev random effect fosse 0 todos os interceptos cariam
## na linha predita


## Suponha que a rela??o entre riqueza de esp?cies e NAP ? diferente em
## cada praia. Isto implica que temos que incluir um intera??o entre
## NAP * Beach no modelo. Mas isso tem um custo muito alto elevando o 
## modelo para 17 par?metros. E n?o estamos interessados no efeito da praia.
## Contudo, se existe varia??o entre praias e na intera??o NAP * Praias, n?s
## n?o podemos ignorar esses termos. Se fizermos isso, a varia??o sistem?tica
## vai aparecer nos res?duos, levando a infer?ncias erradas.
## N?s podemos aplicar o Mixed Effects Model com random intercept e 
## random slope.

Mlme2 <- lme(Richness ~ NAP,
             random = ~ 1 + NAP | fBeach, data = RIKZ)
summary(Mlme2)

## 3.54 quantidade de varia??o no intercepto da popula??o
## 1.71 varia??o no slope (inclina??o) na nove praias
## Correla??o fala que praias com interceptos mais altos tamb?m tem 
## inclina??o negativa mais alta...


## Grafico
*************

F0 <- fitted(Mlme2,level=0)
F1 <- fitted(Mlme2,level=1)
I <- order(RIKZ$NAP)
NAPs <- sort(RIKZ$NAP)
plot(NAPs,F0[I],lwd=4,type="l",ylim=c(0,22),
     ylab="Riqueza de esp?cies",xlab="NAP")
for (i in 1:9){
   x1<-RIKZ$NAP[RIKZ$Beach==i]
   y1<-F1[RIKZ$Beach==i]
   K<-order(x1)
   lines(sort(x1),y1[K])
}
text(RIKZ$NAP,RIKZ$Richness,RIKZ$Beach,cex=0.9)



## Precisamos falar de Likelihood em Mixed Models

## MAXIMUM LIKELIHOOD (ML) - escolhe os par?metros tal que L ? m?xima. 
## O problema ? que ML ignora o fato que intercepto e slope s?o estimados 
## tamb?m...

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

## 1 - Comece com um modelo onde o componente fixo contem todas as vari?veis
## independentes e tantas intera??es poss?veis. 

## 2 -  Ache a melhor estrutura para o modelo aleat?rio. Voc? precisa 
## comporar os modelos com REML tanto para LRT como para AIC ou BIC...

## 3 - Depois de achar o modelo aleat?rio, temos que comparar os modelos
## fixos.. Para isso temos que usar ML...

## 4 - Apresente o modelo final com REML...


## PASSO 1 e 2 - Selecionando efeito aleat?rio
***********************************************

 B1 <- gls(Richness ~ NAP * fExp,
            method = "REML", data = RIKZ)

 B2 <- lme(Richness ~ NAP * fExp, data = RIKZ,
        random = ~1 | fBeach, method = "REML")

 B3 <- lme(Richness ~ NAP * fExp,data = RIKZ,
        random = ~1 + NAP | fBeach, method = "REML")


## sele??o 
*************

AIC(B1, B2, B3)


anova (B1, B2, B3)


## PASSO 3 - Selecionando efeito fixo
*****************************************


 B2 <- lme(Richness ~ NAP * fExp, data = RIKZ,
        random = ~1 | fBeach, method = "ML")
summary(B2)

## Real?am a interpreta??o de valores de p pr?ximo a 0.05
## Retira a intera??o

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

## BEES - Os dados s?o aninhados com multiplas observa??es da mesma colm?ia
## s?o 24 colm?ias com 3 medidas por colm?ia..

## Mostrar VarIdent

data(Bees)
tail(Bees)

## Como vari?vel dependente temos densidade de esporos medido em cada
## colm?ia.. A vari?vel independente infection quantifica o grau de infec??o,
## com valores 0, 1, 2 e 3. Embora mixed effects modelling podem 
## lidar com um certo grau de dados desbalanceados, neste caso, ? melhor
## converter a vari?vel infection em 0 (sem infec??o) e 1 (infectado)
## porque existes poucas observa??es com valores 2 e 3.

Bees$Infection01 <- Bees$Infection
Bees$Infection01[Bees$Infection01 > 0] <- 1
Bees$fInfection01 <- factor(Bees$Infection01)

## Transformo colm?ia em fator
******************************

Bees$fHive <- factor(Bees$Hive)
Bees$LSpobee <- log10(Bees$Spobee + 1)

## Ploto os dados por colm?ia
********************************

op <- par(mfrow = c(1, 2), mar = c(3, 4, 1, 1))
dotchart(Bees$Spobee, groups = Bees$fHive, main = "Dados sem transformar")
dotchart(Bees$LSpobee, groups = Bees$fHive, main = "Dados transformado")
par(op)


## Come?ar com uma regress?o linear e plotarei os residuos por colm?ia
************************************************************************

M1 <- lm(LSpobee ~ fInfection01 * BeesN, data = Bees)
E1 <- rstandard(M1)
plot(E1 ~ Bees$fHive, ylab = "Res?duos", xlab = "Colm?ias")
abline(0, 0)

## Op??o de colocar colm?ia como random effect
************************************************

## Vantagens

## (1) requer um extra par?metro (vari?ncia do intercepto), comparado
## com liner regress?o que requer 23 par?metros extras 

## (2) N?s podemos fazer afirma??es para colm?ias em geral n?o s? para as 
## 24 colm?ias do estudo


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


## plota por infec??o
************************

boxplot(LSpobee ~ fInfection01, data = Bees, varwidth = TRUE)


## Inserimos um comando para dizer que as vari?ncias para infec??o
## s?o diferentes

## varIdent = permite modelar diferentes vari?ncias para vari?veis 
## categ?ricas

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


## Esfor?o requirido por 4 diferentes mand?bulas para rasgar
## 9 diferentes objetos

fm1Stool <- lme (effort ~ Type, data = ergoStool, random = ~ 1 | Subject) 

summary(fm1Stool)


## Tentar exemplicar

(mean <- tapply(ergoStool$effort, ergoStool$Type, mean))

## O primeiro par?metro (intercepto) ? a m?dia da primeira categoria
## definida por ordem alfab?tica

## O segundo par?metro ? a diferen?a entre o segundo par?metro e o 
## intercepto

mean[2] - mean [1]


## O terceiro par?metro ? a diferen?a entre o terceiro par?metro e o 
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
##### EXERC?CIOS ######


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

## Retiro Intera??o
*********************

O2.lmer<-lmer(NCalls ~ offset(LBroodSize)+
              SexParent * FoodTreatment +
              SexParent + ArrivalTime +(1|fNest), data=Owls,
              family = poisson)

anova(O1.lmer,O2.lmer)

## Retiro intera??o
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
	 ylab = "N?mero de piados", xlab = "Tempo de chegada")


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
	ylab = "Probabilidade de exclus?o")
lines(MyData$volume, exp(P1$fit + P1$se.fit)/
	(1 + exp(P1$fit + P1$se.fit)), lty = 2)
lines(MyData$volume, exp(P1$fit - P1$se.fit)/
	(1 + exp(P1$fit - P1$se.fit)),  lty = 2)
points(teste1$volume, y = teste1$exclusao)


## GRAFICO INTERVALO DE CONFIAN?A
############################

P1 <- predict(GLM.1, newdata = MyData, type = "link",
	se = TRUE)
plot(MyData$volume, exp(P1$fit) / (1 + exp(P1$fit)),
	type = "l", ylim = c(0, 1),
	xlab = "Volume",
	ylab = "Probabilidade de exclus?o")
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

## Abund?ncia do peixe Solea Solea em um estu?rio em Portugal
## Identificar quais fatores ambientais influ?nciam na escolha
## do berc?rio pela esp?cie. Os dados de abun?ncia foram coletados
## em amostras mensais conduzidas em 4 ?reas durante 1995 e 1996.


## Temos 11 vari?veis.. Muitas comparado com o n?mero de amostras

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

## Retira large.sand e med.fine.sand, mant?m somente mud entre 
## as vari?veis correlacionadas. Tenham em mente que isso ? uma escolha
## ecol?gica, n?o estat?stica.
 


#     Figure 21.4
*********************

data_solea <- data.frame(Solea.solea = Solea$Solea.solea,
                         season = as.factor(Solea$season), 
                         month = as.factor(Solea$month), 
                         area = as.factor(Solea$Area))

plot.design(Solea.solea ~ season + month + area, 
            data = data_solea, axes = T, xtick = T)
 
 
## Uma vez que Season ? um classifica??o dos meses e s?o colineares
## retiramos season e mantemos month por ser mais informativa.

 
## Modelo Global
**********************

solea_glm <- glm(Solea.solea ~ temp + sal + gravel + factor(month) + mud,
                data = Solea, family = binomial)

summary(solea_glm)

## Sele??o vari?veis
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
##CURVA DE ACUMULA??O DE ESPECIES##
===================================


library (vegan)
library(BiodiversityR)

## COMANDOS RAREFA??O
########################

## rarefy(x, sample, se = FALSE, MARGIN = 1)

## X = COMUNIDADE
## sample = tamanho da sub-amostra
## se = desvio padr?o
## MARGIN = # MARGIN 1 = esp?cies na coluna
  	# MARGIN 2 = esp?cies nas linhas


## ABRINDO O ARQUIVO COM O EXEMPLO
######################################

rare <- read.csv(file.choose(),	header=T)
rare

## Soma abundancia total para cada comunidade
**********************************************

sum(rare$roedores)## Abund?ncia total
sum(rare$roedores1)## Abund?ncia total
sum(rare$roedores2)## Abund?ncia total


## Riqueza de esp?cie total para cada comunidade
**************************************************

specnumber(rare, MARGIN =  2)# n?mero de esp?cies por comunidade


## Rarefa??o para amostras de 30 individuos
**********************************************

rarefy(rare$roedores, sample = 30, MARGIN = 2)
rarefy(rare$roedores1, sample = 30, MARGIN = 2)
rarefy(rare$roedores2, sample = 30, MARGIN = 2)


## Para realizar rarefa??o para diferentes valores de sub-amostras
## eu crio um comando com diversos tamanhos de amostras

amostras1 <- c(seq(5, 40, by = 1))
amostras2 <- c(seq(5, 80, by = 1))
amostras3 <- c(seq(5, 70, by = 1))


## Rarefa??o para varias amostras 
**********************************************

roedor1 <- rarefy(rare$roedores, sample = amostras1, se = T, MARGIN = 2)
roedor2 <- rarefy(rare$roedores1, sample = amostras2, se = T, MARGIN = 2)
roedor3 <- rarefy(rare$roedores2, sample = amostras3, se = T, MARGIN = 2)


## GRAFICO
############

plot(amostras2, roedor2[1,], ylab = "Riqueza de esp?cies",
	xlab = "No. de Individuos",
	ylim = c(1, 9), xlim = c(1,
	90), type= "n")
text(30, 9, "Rarefa??o comunidade de roedores")

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
head (BCI) ## para facilitar a visualiza??o da planilha


## Diminuir o tamanho da planilha para facilitar
*************************************************

bci <- BCI[seq(5, 50, by = 5), ] ## SEPARA 10 PLOTS PARA FACILITAR VISUALIZAZAO
bci


## N?mero de esp?cies em cada amostra amostra
***********************************************

specnumber(bci, MARGIN =  1)


## Soma abundancia total para cada esp?cie
******************************************

(N <- colSums(bci))


## Soma total de indiv?duos
******************************

sum(N)


## Valores de sub-amostras 
*****************************

(subs3 <- c(seq(500, 4500, by = 500), sum(N)))


## Analise de rarefa??o para a comunidade
*******************************************

(rar3 <- rarefy(N, sample = subs3, se = T, MARG = 2))


## GRAFICO
############

plot(subs3, rar3[1, ], ylab = "Riqueza de esp?cies",
	axes = FALSE, xlab = "No. de Individuos",
	type = "n", ylim = c(80, 200), xlim = c(500,
	5000))
axis(1, at = 1:5 * 1000)
axis(2)
box()
text(2500, 200, "Rarefa??o (10 plots)")

lines(subs3, rar3[1, ], type = "b", col = "red")
lines(subs3, rar3[1, ] + 2 * rar3[2, ], lty = 3, col = "red")
lines(subs3, rar3[1, ] - 2 * rar3[2, ], lty = 3, col = "red")


## Curva rarefa??o
***************************

Coletor.curva <- specaccum(bci)


## Inserir a linha da curva com rarefa??o
*******************************************

names(Coletor.curva)

plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
	 ylab = "Riqueza de esp?cies")

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

## Gr?fico de uma curva do coletor
***********************************

names(Coletor)

plot(Coletor$sites, Coletor$richness,  xlab = "Amostras",
	 ylab = "Riqueza de esp?cies")

## Curva de acumula??o
***************************

Coletor.curva <- specaccum(est)


## Inserir a linha da curva com rarefa??o
*******************************************

names(Coletor.curva)

plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
	 ylab = "Riqueza de esp?cies", ylim = c(0,14), col = "red")

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


## Gr?fico
*************

plot(seq(1, 14, by = 1), testeInc1$means[,4], ylab = "Riqueza de esp?cies",
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

## Desvio padr?o
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

## mais f?cil
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

## S? mostrar o estimador que voc? deseja
*******************************************

summary(testeAbund, display = "ace")


## Grafico ACE
***************

plot(seq(1, 14, by = 1), testeAbund$means[,3], ylab = "Riqueza de esp?cies",
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

## Loop calcular o desvio padr?o
*********************************

ACE <- c()
for (i in 1:14) {
	ACE [i] <-  c(sd(as.vector(testeAbund$ace[i,])))
	}

Sobs1 <- c()
for (i in 1:14) {
	Sobs1 [i] <-  c(sd(as.vector(testeAbund$S[i,])))
	}


## Linha com os desvios padr?es
*********************************

lines(seq(1, 14, by = 1), testeAbund$means[,2] + Sobs, 
	lty = 3, col = "blue")
lines(seq(1, 14, by = 1), testeAbund$means[,2] - Sobs,
	 lty = 3, col = "blue")
lines(seq(1, 14, by = 1), testeAbund$means[,4] + ACE, 
	lty = 4, col = "red")
lines(seq(1, 14, by = 1), testeAbund$means[,4] - ACE,
	 lty = 4, col = "red")

## Outro comando s? que a planilha deve ser de outra maneira
*************************************************************

(est1 <- colSums(est)) ## SOMA ABUND?NCIA DE CADA LINHA

## Abundancia total por coleta
********************************

## estimateR ? baseada na abund?ncia de um ?nico s?tio de amostragem

(testeAbund1 <- estimateR(est1))


## ESSES  COMANDO S? CALCULAM OS VALORES FINAIS DOS ESTIMADORES OU 
## VALORES ACUMULADOS POR AMOSTRAS, CONTUDO COMO COMENTADO NA AULA
## ALGUMAS VEZES QUEREMOS ESTIMAR A RIQUEZA DE ESP?CIES PELA ABUNDANCIA


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


accumplot(Accum.1, xlab = "Abund?ncia")

(Accum.2 <- accumresult(est, y = Nest,
	scale = "Total", method = "rarefaction")) ## USANDO METODOS DIFERENTES


accumplot(Accum.2, xlab = "Individuos")

(Accum.3 <- accumresult(est, method = "rarefaction")) ## RAREFACAO POR AMOSTRA
accumplot(Accum.3)


## EXERCICIOS##
***************

#Exerc?cio 1#
*************

exer <- read.csv(file.choose(),	header=T)
exer

## a ##

sum(exer$Fragmento)## Abund?ncia total
sum(exer$Pasto)## Abund?ncia total
sum(exer$Borda)## Abund?ncia total
sum(exer$Cana)## Abund?ncia total

## b ## 

specnumber(exer, MARGIN =  2)# n?mero de esp?cies por comunidade

## c ##

rarefy(exer$Fragmento, sample = 30, MARGIN = 2)
rarefy(exer$Pasto, sample = 30, MARGIN = 2)
rarefy(exer$Borda, sample = 30, MARGIN = 2)
rarefy(exer$Cana, sample = 30, MARGIN = 2)

## Cria sub-amostras para rarefa??o
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

plot(am4, Cana[1,], ylab = "Riqueza de esp?cies",
	xlab = "No. de Individuos",
	ylim = c(1, 20), xlim = c(1,
	153), type= "n")
text(15, 19, "Rarefa??o")

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

## Linhas com desvio padr?o
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

## Gr?fico de uma curva do coletor
***********************************

names(japi.curva.1)

plot(japi.curva.1$sites, japi.curva.1$richness,  xlab = "Amostras",
	 ylab = "Riqueza de esp?cies")


## Curva de acumula??o
***************************

japi.curva <- specaccum(japi)


## Inserir a linha da curva com rarefa??o
*******************************************

names(japi.curva)

lines(japi.curva$sites, japi.curva$richness, type = "b", lwd = 1.7,
	lty = 1, col = "red")

## Rarefa??o por amostra
****************************

(Accum.japi <- accumresult(japi, method = "rarefaction")) 
accumplot(Accum.japi, ci.type = "polygon", col = "gray")


#Exerc?cio 3#
*************
  
## a ##
Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de esp?cies", ylim = c(0,14), col = "red")


boot <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho m?nimo que vai come?ar a amostragem, neste caso 1
summary(boot, display = "boot")


lines(seq(1, 14, by = 1), boot$means[,2], type = "b", col = "blue")


## b ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de esp?cies", ylim = c(0,14), col = "red")

chao <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho m?nimo que vai come?ar a amostragem, neste caso 1
summary(testeInc1, display = "chao")


lines(seq(1, 14, by = 1), chao$means[,2], type = "b", col = "blue")


## c ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de esp?cies", ylim = c(0,14), col = "red")

j1 <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho m?nimo que vai come?ar a amostragem, neste caso 1
summary(testeInc1, display = "jack1")

lines(seq(1, 14, by = 1), j1$means[,2], type = "b", col = "blue")


## d ##

Coletor.curva <- specaccum(est)


plot(Coletor.curva$sites, Coletor.curva$richness,  xlab = "Amostras",
   ylab = "Riqueza de esp?cies", ylim = c(0,14), col = "red")

j2 <- poolaccum(est, permutations = 100, minsize = 1)# minsize: Tamanho m?nimo que vai come?ar a amostragem, neste caso 1
summary(testeInc1, display = "jack2")


lines(seq(1, 14, by = 1), j2$means[,2], type = "b", col = "blue")


########################################################################################################################
########################################################################################################################

==========================
##?NDICES DE DIVERSIDADE##
==========================

library(vegan)# pacote com a fun??o "diversity"
mata.atlantica=read.table(file.choose(), header=T)# ler conjunto de dados
mata.atlantica
sum(mata.atlantica[1,])# mudem o numero 1 por outra linha que queira testar
sum(mata.atlantica[2,])# mudem o numero 2 por outra linha que queira testar
# Notem que todas as comunidades possuem 100 indiv?duos

H=diversity(mata.atlantica, index="shannon")# calcula ?ndice de Shannon para
# cada comunidade 
H

D=diversity(mata.atlantica, index="simpson")# calcula ?ndice de Simpson para
# cada comunidade. Este c?lcula o Simpson 1-D 
D

D.inv=diversity(mata.atlantica, index="invsimpson")# calcula ?ndice de 
D.inv # S?mpson para cada comunidade. Este c?lcula o Simpson 1 / D. 

riqueza=specnumber(mata.atlantica) # riqueza de cada localidade
riqueza.freq=specnumber(mata.atlantica, M=2) # riqueza de cada localidade
riqueza.freq # este c?lculo (inserindo M=2 na f?rmula)implementa
# a frequ?ncia das esp?cies em rela??o a todas as amostras
# com um calculo simples podemos calcular a frequencia relativa que nos
# d? uma no??o de distribui??o da esp?cie nas amostras

freq.relativa=(riqueza.freq*100)/(nrow(mata.atlantica)) # o comando nrow 
# mostra o n?mero de linhas (ou seja, de amostras) da matriz. Uma esp?cie
# que ocorrer em todas as amostras ter? a freq.relativa = 100%
freq.relativa

diversidade.MA=cbind(riqueza, H, D, D.inv)# cria uma 
# matriz com os ?ndices calculados e a riqueza de cada local.
diversidade.MA
# muitos autores mostram que os ?ndices trazem respostas muito similares
# veja o gr?fico abaixo com a rela??o da riqueza com os ?ndices e dos 
# ?ndices entre si.
pairs(cbind(riqueza, H, D, D.inv), pch="+", col="black")

##EXEMPLO 1##
brom=read.table(file.choose()) ##carregar o arquivo bromelias.txt
brom
brom1=read.table(file.choose())  ## carregar o arquivo bromelia1.txt
brom1

##Pergunta 1##
**************
divsp1=diversity(brom, index="simpson") ##calcula a diversidade das especies das brom?lias
                                        ##utilizando o ?ndice Simpson
divsp1

##Pergunta 2##
**************
div.vol.simpson=diversity(brom1, index="simpson")
div.vol.simpson

div.vol.shannon=diversity(brom1, index="shannon")
div.vol.shannon


## Species Abundance Distributions (SADs): McGill et al. 2007, Ecol Lett. 10:995
*********************************************************************************
  
library(vegan) # pacote que possui a fun??o radfit

rios=read.table(file.choose(), h=T)#ler a planilha de interesse
rios # conferir se os dados est?o OK.

rad.rio1=radfit(rios[1,])# implementa o teste somente para o Rio 1.
rad.rio1 # conferir resultados da an?lise
# NOTA: o menor valor de AIC representa o modelo te?rico que melhor explica os
# dados reais. No exemplo rad.rio1 o menor valor de AIC (119.52) ? do modelo 
# Null, que representa o modelo "Broken Stick" 
plot(rad.rio1, xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)
# faz o gr?fico com todas as curvas e os dados reais. A linha destacada 
# representa o modelo que menos desvia dos seus dados (c?rculos pretos)
# o argumento pch=19 representa os seus dados e como ser?o representados
# modifique o valor do pch e escolha o s?mbolo de sua prefer?ncia

rad.rio2=radfit(rios[2,])# implementa o teste somente para o Rio 2.
rad.rio2
plot(rad.rio2, xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)

rad.rio3=radfit(rios[3,])# implementa o teste somente para o Rio 3.
rad.rio3
plot(rad.rio3, xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)

par(mfrow=c(2, 2))# este comando permite que os gr?ficos sejam apresentados
# na mesma janela
plot(rad.rio1, main="Rio 1", xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)
plot(rad.rio2, main="Rio 2", xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)
plot(rad.rio3, main="Rio 3", xlab="Ordem das esp?cies", ylab="Abund?ncia", pch=19)


##Praticando 1##
praiaf=read.table(file.choose())
praiaf
rad.praiaA=radfit(praiaf[1,])#plota a distribui??o de abund?ncia
rad.praiaA
plot(rad.praiaA)

rad.praiaB=radfit(praiaf[2,])
rad.praiaB
plot(rad.praiaB)

##nestes comandos tem que fazer para cada praia

praias=radfit(praiaf)##roda a distribui??o de abund?ncia para todas as praias de uma s? vez
praias
summary(praias)#aparece o akaike de todas as praias

plot(praias)#plota todos os gr?ficos juntos



# ?NDICES DE DIVERSIDADE BETA
*****************************

library(vegan)
betadiver(help=TRUE)# lista dos ?ndices de diversidade beta discutidos em
# Koleff et al. 2003, J.An.Ecol. 72: 367-382.

# ?ndice cl?ssico de Whittaker (beta w)
salinidade=read.table(file.choose(), header=T)#importando o conjunto de dados
salinidade # gradiente de salinidade (linhas) e esp?cies nas colunas (n=50)
diversidade.beta=betadiver(salinidade, "w")
diversidade.beta # matriz triangular com os valores de diversidade beta entre 
# todos os pares poss?veis

# ?ndices de Jaccard e Sorensen (bin?rios)
jaccard=betadiver(salinidade, "j")# ?ndice de jaccard entre todas amostras
sorensen=betadiver(salinidade, "sor")# ?ndice de sorensen entre todas amostras

# se voc? tiver interessado em um par espec?fico de amostras use "scores"
scores(jaccard)
scores(sorensen)

# como alternativa use o pacote "fossil"

library(fossil)


# notem que os valores dos ?ndices por si trazem somente a informa??o de
# semelhan?a/diferen?a entre as amostras. Por?m n?o nos informa o que causa essa
# a varia??o desse valor. Veja as fun??es "betadisper", "adonis" e "mantel" para
# testar hip?teses espec?ficas sobre diversidade beta

?ndices de Bray-Curtis e Morisita-Horn (baseado na abund?ncia)
library(vegan)
data(mite)# ?caros associados a 70 amostras de solo
bray=vegdist(mite, "bray")#an?lise similaridade de Bray-Curtis
bray
morisita.horn=vegdist(mite, "horn")#an?lise de similaridade de Morisita-Horn
morisita.horn

# um exemplo de extens?o das an?lises de similaridade para testar hip?teses ?
# utilizar uma an?lise de mantel para correlacionar a matriz (p.ex. bray) 
# triangular de similaridade de esp?cies com uma matriz de similaridade ambiental

library(vegan)
data(varespec)# esp?cies de ?rvores coletadas em 24 localidades
data(varechem)# caracter?sticas qu?micas dos solos das 24 localidades
dist.species=vegdist(varespec, "bray")# implementa a fun??o bray-curtis
dist.chemical=vegdist(scale(varechem), "euclidean")# a fun??o scale padroniza as
# vari?veis ambientais que est?o em unidade muito diferentes
associacao=mantel(dist.species, dist.chemical)
associacao
# valores significativo indicam que a composi??o de esp?cies ? determinada pelas
# vari?veis ambientais (neste caso)

# ?ndices Chao-Jaccard e Chao-Sorensen
library(fossil)

CSoren.dist=ecol.dist(ilhas, chao.sorenson, type="dis")
CSoren.simi=ecol.dist(ilhas, chao.sorenson, type="sim")
CJaccar.dist=ecol.dist(ilhas, chao.jaccard, type="dis")
CJaccar.simi=ecol.dist(ilhas, chao.jaccard, type="sim")

# usando o argumento type="dis" e type="sim" voc? calcula a matriz de
# dissimilaridade ("dis") e similaridade ("sim")

# se optar por calcular a similaridade entre duas localidades use a seguinte 
# fun??o:
library(fossil)

IlhaA=ilhas[,1]
IlhaB=ilhas[,2]
CSoren.A.B=chao.sorenson(IlhaA, IlhaB)
CJaccar.A.B=chao.jaccard(IlhaA, IlhaB)
CSoren.A.B
CJaccar.A.B
# outros ?ndices dispon?veis no pacote "fossil"

Comunidade.A <- c(1,0,4,3,5,0,0,7)
Comunidade.B <- c(2,1,3,0,0,1,0,6)
bray.curtis(Comunidade.A, Comunidade.B)
jaccard(Comunidade.A, Comunidade.B)
simpson(Comunidade.A, Comunidade.B)
sorenson(Comunidade.A, Comunidade.B)
morisita.horn(Comunidade.A, Comunidade.B)

# Teste de homogeneidade de dispers?es multivariadas (vamos chamar de "HDM")
library(vegan)# possui as fun??es betadisper que faz a an?lise HDM e vegdist
# que calcula a dissimilaridade com seu ?ndice de interesse
cafe=read.table(file.choose(), header=T)# ler a planilha de interesse
head(cafe)#conferir parte da planilha que voc? importou no R
tipo.matriz=factor(c(rep(1,16), rep(2,8)), labels = c("com.mata","sem.mata"))
# o comando acima cria os fatores. Ou seja, os grupos que voc? quer comparar
# neste exemplo voc? que testar se a diversidade beta dos "polinizadores"
# do caf? ? maior em planta??es rodeadas por mata atl?ntica ou por pasto.
tipo.matriz
dissimilaridade=vegdist(cafe, "bray")
head(dissimilaridade)
HDM=betadisper(dissimilaridade, tipo.matriz)# fun??o que faz a HDM
HDM
valor.P=permutest(HDM, pairwise = F)
valor.P
plot(HDM)

####EXERC?CIOS####
******************
  
##Exerc?cio 01
    
clone1=read.table(file.choose())
clone1
dissimilaridade=vegdist(clone1, "jaccard")####lembrar que o vegdist sempre calcula a DISSIMILARIDADE
dissimilaridade


##Exerc?cio 02

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
##INTRODU??O ? ESTAT?STICA MULTIVARIADA##
=========================================

##An?lise de agrupamento
************************

##Exerc?cio 1

library(vegan)
data(mite)##exemplo
matriz<-vegdist(mite, method="bray")##trans. numa matriz de dissimilaridade
matriz1<-hclust(matriz, method="complete")
plot(matriz1)

outroindice<-vegdist(mite, method="jaccard")##transforma a matriz com outro 
  						  #?ndice
outro<-hclust(outroindice, method="complete")
plot(outro)
#############
##com pvclust

##Exerc?cio 2

library("pvclust")
dist<- function(x,...){
vegdist(x,...)
}###acrescenta as fun??es do vegdist no dist
bocaina<-read.table(file.choose())#######procura arquivo (TXT)
boc=t(bocaina)##para transpor a matriz
mz<-pvclust(boc, method.hclust="average", method.dist="horn")##an?lise
plot(mz)
pvrect(mz)###agrupa


##Exerc?cio 3

install.packages("ade4")
library("ade4")
data(dunedata)
ddveg=dunedata$veg
an.dd=pvclust(ddveg, method.hclust="average", method.dist="bray")##an?lise
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

##EXERC?CIOS##

##Exerc?cio1

indval=read.table(file.choose(),h=T)
turb=indval[,1]###selecionando apenas a primeira coluna; no caso, as esp?cies 
		  ###que indicam essas classes de turbidez
turb
sp=indval[,-1]
sp

resul=indval(sp, turb)###1? vem a matriz(sp);2? a vari?vel agrupante (turb)
summary(resul)
summaryresul$maxcls
resul$maxcls
resul$indcls
resul$pval
tab.resul=cbind(resul$maxcls, resul$indcls, resul$pval)
colnames(tab.resul)<-c("maxgrp", "ind. value","P")
tab.resul

####Outro exerc?cio (IndVal)

anuro=read.table(file.choose())
grupo=read.table(file.choose())
anuros=t(anuro)
grupo
anuros
g1=sort(grupo[,1], decreasing=FALSE)
resultado=indval(anuros, g1)###1? vem a matriz(anuros);
					 ###2? a vari?vel agrupante (grupo)
summary(resultado)

***************
##ANOSIM e MRPP
***************

##EXERC?CIOS##

##Exerc?cio1

lagos=read.table(file.choose())
lagos
lagospa=decostand(lagos,"pa")#transforma os dados em presen?a/aus?ncia
lagospa
conec=factor(c(rep(1,8), rep(2,8)),labels=c("conect","isol"))
conec
ans=anosim(lagospa,conec)
ans

##Exerc?cio2

ans2=anosim(lagos,conec)
summary(ans2)
plot(ans2)
names(ans2)
?names

##Exerc?cio3

art=read.table(file.choose())
head(art)
mp=factor(c(rep(1,5), rep(2,5)),labels=c("M","P"))
mp
ansmp=anosim(art,mp)
ansmp

##Exerc?cio4

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
  
##Exerc?cio1
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

##Exerc?cio2

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
evplot(objeto1)#plota o gr?fico


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

##Exerc?cio1

?rda
doubsenv=read.csv(file.choose())
doubsspe=read.csv(file.choose())
head(doubsenv)
head(doubsspe)
respcca=rda(doubsspe,doubsenv)
plot(respcca)

##Exerc?cio2

data(mite)
data(mite.env)
ccamite=cca(mite~., mite.env)##~. roda com todas as vari?veis
plot(ccamite)


======================
### RDA e CCA parcial
======================

## Exemplo 1

library(vegan)
data(mite)
mite.hel=decostand(mite, "hellinger")##"hellinger"-padroniza??o dos dados;
  					 ##diferen?as nas abund?ncias
tibouchina=read.table(file.choose())
mm1 <- model.matrix(~ dtri + quag + arfl + esfl, data=tibouchina)[,-1]##matriz
											    #1
###"model.matrix" transforma vari?veis categ?ricas e n?o categ?ricas
###para poder usa-las nas an?lises
 
mm2 <- model.matrix(~ tiso + dens.tc + localidade, tibouchina)[, -1]##matriz 2
rda.parcial=rda(mite.hel ~ mm1+Condition(mm2))##rela??o da comp. sp com matriz
							    ## ambiental controlada por 
							    ##outra vari?vel (condition(mm2) 
rda.parcial
anova(rda.parcial)#significancia das vari?veis com a composi??o de esp?cies
sig.a=rda(mite.hel, mm1, mm2)##mite.hell=ambiente
				     ##"mm1"=o que quero modelar (ambiente)
				     ##"mm2"=o que eu quero controlar (covari?vel)
				     ##tiro o efeito de mm2 sobre mm1 e relaciono "mm1"
				     ##com a composi??o (mite.hel)
sig.c=rda(mite.hel, mm2, mm1)##inverso ao de cima
componente.a=anova(sig.a, step=10000, perm.max=1000)
componente.c=anova(sig.c, step=10000, perm.max=1000)
plot(rda.parcial)


# parti??o de vari?ncia

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

# parti??o de vari?ncia para ver a explica??o de cada componente

particao.ex2=varpart(mite.hel,~DensTric+EspFoliar,~N+Enx+Prot+Acucar,mite.pcnm, data=biotico)
particao.ex2
showvarparts(3)
plot(particao.ex2)


# digite o comando abaixo para entender melhor como funciona a parti??o de vari?ncia:

vegandocs("partition")

======================
# PROCRUSTES + PROTEST
======================

# 10 - Protest

library(vegan)# pacote com a fun??o protest e procrustes
library(labdsv) #pacote com a fun??o nmds

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
#Com a an?lise anterior pode saber se peixes e macroinvetebrados tem a mesma
#resposta aos lagos, ou seja, se possuem a mesma estrutura??o espacial.
#Como alternativa, podemos testar se as caracter?sticas f?sico-qu?micas do
#riacho afetam tanto peixes quanto macroinvertebrados 
#artigo: Paavola et al. 2006, Ecological Applications 16:368-379.

library(vegan)# pacote com a fun??o protest e procrustes
library(labdsv) #pacote com a fun??o nmds

lagos=read.table(file.choose(), header = TRUE)

# a primeira parte da an?lise ? igual a anterior que compara a concord?ncia
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


