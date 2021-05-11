############################################## ATIVIDADES 16 #############################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################## EXERCICIOS SOBRE VALIDACAO DE 1 LM ####################################
#
#
#
#Exercício 1:
#Faça a validação desse modelo.
#Indique possíveis problemas
X<-rnorm(n=100)
X<-X[order(X)]
Y<-NULL
for (i in 1:length(X)) {
  Y[[i]]<-0.1+1.2*X[[i]]+rnorm(n=1,mean=0,sd=i/50)
}
model1f<-lm(Y~X, data=data)
#
plot(model1f)
#
residuals(model1f) ##funcao extrai os residuos. o Y que vc encontrou menos o  dos residuos
points(fitted(model1f)~X, data=data, col="red") ##fitted extrai os valores preditos
qqnorm(residuals(model1f)) ##funcao para testar normalidade destes residuos
acf(model1f) ##funcao de testar autocorrelacao
plot(model1f, which = 4) 
#
insp.plot(model1f, data=data[,"x1"])
#
#
sim<-insp.sim(model1f)
head(sim)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid), ##extrair os residuos
               fitted=lapply(sim,fitted), ##filtrar
               data=lapply(sim,extract.data),
               ask=FALSE)
#
insp.plot(model1f)
#
##Possiveis problemas:
#Não foi possível testar a autocorrelacao, pois os argumentos nao tem o mesmo comprimento. 
#Fiquei em duvida sobre o Cook's dist, pois comparado aos modelos simulados, foi o que
#apresentou maior diferenca, mas acho que está ok, o valor real dele é relativamente
#próximo dos valores simulados. Deu 20, 71 e 85.
#Histograma de Ord. residuos deu Ok e Distribuicao de Ord residuals deu OK, tendencia normal
#Resid. x Fitted OK
#resid x X OK
#
#
#Exercício 2:
#Faça dados simulados que violem o pressuposto da normalidade e compare os valores estimados
#do modelo com os valores criados
#
#
#Exercício 3:
#Faça dados simulados que violem o pressuposto da homogeneidade da variância e compare
#os os valores estimados pelo modelo com os valores criados
#
#
#Exercício 4:
#Faça a validação desse modelo:
#
#Nessa parte os dados estao sendo simulados
#Simula a evolucao de um caracter na árvore filogenética.
#
#Instale esse pacote:
library(ape)
phy<-rtree(n=100)
phy<-compute.brlen(phy)
plot(phy, cex=0.5)
y<-rTraitCont(phy=phy)
x1<-gl(n=2,k=50)
data<-data.frame(y=y,x1=x1,species=phy$tip.label)
#
#Esse é o seu modelo. Faça a checagem
#do modelo e indique possíveis
#violações dos pressupostos.
modelf2<-lm(y~x1,data=data)
plot(modelf2)
#
#
sim<-insp.sim(modelf2)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid), ##extrair os residuos
               fitted=lapply(sim,fitted), ##filtrar
               data=lapply(sim,extract.data),
               ask=FALSE)
#
insp.plot(modelf2)
#
#Resultados dos graficos:
#Ord residuals: OK, a reta ficou um pouco diferente do que a maioria dos simulados, seguindo um pouco menos a distribuição normal
#Residuals x filter ficou parecido com os valores simulados
#resid x x1: o valor real ficou diferente dos simulados, com a faixa de resid maior
#Cook's dist.: o valor real ficou um tanto diferente dos simulados, com valores de t próximos ums dos outros
#ACF - Ordinary Residuals: Ficou muito diferente dos valores simulados, com Y entre 1 e -0.5 e X de 0 a 20
#
#
#
#Exercício 5:
#Faça a validação do modelo dos fertilizantes.
#Nesse experimento o efeito de dos fertilizantes
#foi comparado com o controle (coluna FERTIL). A variável
#resposta é a produtividade da colheita (YIELD).
#
setwd(dir ="/home/laura/Documentos/Introdução ao R Studio")
library(modelvalidation) 
#
ch01<-read.csv("ch01.csv", dec=".")
fertil<-ch01[1:30,c(1,2)] #selecionar as duas primeiras colunas
fertil$FERTIL<-as.factor(fertil$FERTIL)
#fertil<-fertil[-1,]
table(fertil$FERTIL)
plot(fertil$YIELD~fertil$FERTIL)
#
modelfertil<-lm(YIELD~FERTIL,data=fertil)
#
residuals(modelfertil) 
points(fitted(modelfertil)~YIELD, data=fertil, col="green") 
qqnorm(residuals(modelfertil)) 
acf(modelfertil) 
plot(modelfertil, which = 2) 
#
insp.plot(modelfertil)
#