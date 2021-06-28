############################################## ATIVIDADES 18 #############################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################## EXERCICIOS SOBRE HETEROGENEIDADE ####################################
#
#
#Exercícios 1
#Faca a análise dos dados Vochysia.
#O estudo testou o efeito de diferentes
#regimes de queima no cerrado na reprodução
#sexuada da árvore Vochysia elliptica.
#Teste se os diferentes regimes de queima (treatment)
#tem um efeito na área da copa dos indivíduos (area_m2).
#setwd("~/Documents/UnB/AULAS/R e GLM/2020-02")
setwd(dir ="/home/laura/Documentos/Introdução ao R Studio")
library(nlme)
library(modelvalidation)
copa<-read.csv("copa2.csv")
copa$treatment<-factor(copa$treatment,
                       levels=c("control","2_yr","4_yr"))


plot(area_m2~treatment, data=copa)



#Exercício 2
#Criar um conjunto de dados
#em que o sd(erro) aumente linearmente
#com os valores de Y.
#Faça um LM com esse dados e a validação do modelo
#Faça um GLS que incorpore essa estrutura
#da variância.
#Compare as estimativas dos coeficientes e dos erros
#entre o LM o GLS.


# Modelo linear

meumodelo<-lm(area_m2~treatment, data=copa)
insp.plot(model,
          data=data.frame(treatment=copa$treatment))
sim<-insp.sim(meumodelo)
dev.off()
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

# Modelo GLS
meumodelo.gls0<-gls(area_m2~treatment, data=copa)
sim<-insp.sim(meumodelo.gls0)
dev.off()
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

#varFixed: aumenta linearmente com y
meumodelo.gls1<-gls(area_m2~treatment, data=copa,
                    weights=varFixed(~treatment))
# Error in Math.factor(attr(object, "covariate")) : ‘abs’ not meaningful for factors


library(MuMIn)
library(modelvalidation)
AICc(meumodelo, meumodelo.gls0)
# AICc LM: 112.7718 
# AICc GLS: 119.4805


meumodelo.ml <- update(meumodelo, method="ML")
dredge(meumodelo.ml)

summary(meumodelo)
plot(area_m2~treatment, data=copa)
abline(meumodelo, col="red")

#############
#Estimated Marginal Means
library(emmeans)
copa$treatment
emmip(meumodelo, ~ treatment,
      at = list(treatment=seq(25,115)),
      CIs=TRUE)

emmip(meumodelo.gls0, ~ treatment,
      at = list(treatment=seq(25,115)),
      CIs=TRUE)
