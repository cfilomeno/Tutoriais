########################################### ATIVIDADES 15 ####################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################## EXERCICIOS SOBRE LM 15 ####################################
#
#
#1. Simule um modelo linear:
#Com duas com duas variáveis
#categóricas e a interação entre elas.
#Faça seu modelo de forma que o
#coeficiente da interação seja zero.
#
#
H1<-rep(x=1.5,times=10)
H2<-rep(x=1.6,times=10)
H3<-rep(x=1.7,times=10)
H4<-rep(x=1.8,times=10)
altura<-c(H1,H2,H3,H4)
#altura<-c("H1","H2","H3","H4")
nomes.altura<-gl(n=4,k=10,labels=c("H1","H2","H3","H4"))

#dataPH<-data.frame(coef=peso, pessoa=nomes.dataPH)
#dataPH

#dataPH<-data.frame(faixaP=nomes.peso, faixaH=nomes.altura)
#dataPH

dataH<-data.frame(coef=altura, faixaH=nomes.altura)
dataH

ERROR<-rnorm(n=length(altura),mean=0, sd=2)
hist(ERROR)
Y<-altura + ERROR

dataH1<-data.frame(Y=Y, altura=nomes.altura)
head(dataH1)

plot(Y ~ altura, data=dataH1)

modeloH1<-lm(Y ~ altura, dataH1) 
summary(modeloH1)

#2. Faça a análise desses dados.

smH1<-summary(modeloH1) ##O sigma foi parecido com o sd que estabeleci sm2$sigma = [1] 2.13847
smH1$sigma

modeloH1$coefficients[[1]] #valor de H1 = 2.242038
modeloH1$coefficients[[1]] + modeloH1$coefficients[[2]] #valor de H2 = 1.844825
modeloH1$coefficients[[1]] + modeloH1$coefficients[[3]] #valor de H3 = 0.06544777
modeloH1$coefficients[[1]] + modeloH1$coefficients[[4]] #valor de H4 = 2.515064

#Os dados de coeficientes  H1(1.5);     H3(1.7)  e       H4(1.8) não apresentaram valores muito próximos aos simulados. 
#Sendo respectivamente     H1: 2.242038; H3: 0.06544777 e H4: 2.515064. Enquato os s dados de H2(1.6) foi o mais proximo 
#do valor estimado correspondendo a 1.844825. Alem disto, o valor de sigma (2.13847) foi proximo do estipulado (=2). 
#A media residual foi de 0.05. O valor de 'Std. Error' foi de 0.6732 para H1 e de 0.9564 para os demais (H2, H3 e H4). 


#Felipe, peco desculpas por nao conseguir executar corretamente o exercicio pedido.
#Tive alguns imprevistos e acabei vendo a aula so no fim da tarde, e para piorar ainda estava fazendo os exercicios da aula errada, estava na 16.
#quando percebi faltava pouco tempo. Ainda não consegui fazer a atividade como foi pedido, porque não ainda entendi como fazer para modelar
# usando a interacao de duas variaveis categoricas colocando o coeficiente igual a zero. Mas vou estudar mais e farei isto nesta semana.