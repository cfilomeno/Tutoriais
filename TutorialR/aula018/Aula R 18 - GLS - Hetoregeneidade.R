#GLS: Heterogeneidade da variância
#GLS: Heterogeneidade da variância
#GLS: Heterogeneidade da variância
#GLS: Heterogeneidade da variância
library(nlme)
library(modelvalidation)


#Modelo Linear Geral
#Yi ~ a + b1X1 + b2X2 … + bnXn + ei
#ei ~ N(0, var)

#GLS: Generalized Least Squares
#Yi ~ a + b1X1 + b2X2 … + bnXn + ei
#ei ~ N(0, var*parâmetro)


#SQUID Dataset#
#SQUID Dataset#
#Squid.txt (Exemplo do livro do Zuur et al.)
#Seasonal patterns in reproductive
#and somatic tissues in the squid Loligo forbesi.
#They used several variables on female and male squid,
#but in this chapter, we only use the dorsal mantle
#length (in mm) and testis weight from 768 male squid.
#The aim is to model the testis weight as a function
#of the dorsal mantle length (DML) and the month
#recorded. The idea behind the original analysis
#was to investigate the role of endogenous and
#exogenous factors affecting sexual maturation,
#more specifically to determine the extent to
#which maturation is size-related and seasonal.

#Variavel resposta: testis weight
#Variáveis preditoras: dorsal mantle length (DML) e month recorded (MONTH)
#setwd("~/Documents/UnB/AULAS/R e GLM/2020-02")
setwd(dir ="/home/laura/Documentos/Introdução ao R Studio")
Squid<-read.table("Squid.txt", header = TRUE)
Squid$fMONTH<-factor(Squid$MONTH)

#Entender os dados
plot(Testisweight~DML,data=Squid)
plot(sqrt(Testisweight)~DML,data=Squid)
coplot(Testisweight~DML|fMONTH,data=Squid,
       panel = panel.smooth)
coplot(sqrt(Testisweight)~DML|fMONTH,
       data=Squid,
       panel = panel.smooth)


#Primeiro um Modelo Linear:
M1 <- lm(Testisweight ~ DML * fMONTH, data=Squid)

insp.plot(M1, data = data.frame(DML=Squid$DML,
                                fMONTH=Squid$fMONTH))

sim<-insp.sim(model=M1,
              nsim=19,
              data=M1$model)
dev.off()
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)
dev.off()

#Com a raiz quadrada
Squid$Testisweight.sqrt<-sqrt(Squid$Testisweight)

M2 <- lm(Testisweight.sqrt ~ DML * fMONTH,data=Squid)

dev.off()
insp.plot(M2, data = data.frame(DML=Squid$DML,
                                fMONTH=Squid$fMONTH))
sim<-insp.sim(model=M2,
              nsim=19,
              data=extract.data(M2))
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

#Agora vamos fazer um modelo em que incorpora
#um parâmetro para modelar a mudança na variância
#com fMONTH
#Para isso usamos o funcao 'gls'

#Na primeira etapa selecionamos a melhor
#estrutura da variância A segunda etapa
#vamos verificar a estrutura fixa (as variáveis
#preditoras do modelo)

#Primeiro, um modelo igual ao LM
M.lm<-gls(Testisweight.sqrt ~ DML*fMONTH,
          data=Squid,
          method = "REML")

#Agora o modelo com parâmetro para a variância:
#Variancia para cada mes do ano
#?varClasses
#?varIdent
vf1Ident <- varIdent(form = ~1|fMONTH)

M.gls1<-gls(Testisweight.sqrt~DML*fMONTH,
            weights = vf1Ident,
            data=Squid,
            method = "REML") ##ReML se usa para estimar a estrutura da variância

summary(M.gls1)
#note também que agora os coeficientes são
#estimados usando REML, não mais mínimos
#quadrados. É possível usar o ML também.
#Há situações específicas quando usar um
#ou outro (REML vs. ML; ver Zuur et.al. 2009).

#Validação:
#obs: precisa do pacote (nlraa)
library(nlraa)
dev.off()
insp.plot(M.gls1, data = data.frame(DML=Squid$DML,
                                fMONTH=Squid$fMONTH))
#Ao invés dos resíduos comums, os
#residuos são normalizados:
#normalized residuals (standardized residuals pre-multiplied by
#the inverse square-root factor
#of the estimated error correlation matrix) 
#Zuur et al (2009) p85:
#These are obtained by calculating the
#observed minus the fitted values and
#then dividing by the square root of the variance.
sim<-insp.sim(model=M.gls1,
              nsim=19,
              data=extract.data(M.gls1))

###Atencao: aqui vai ser sim
dev.off()
plots.insp.sim(insp.sim = sim$sim,
               resid= lapply(sim$sim,extract.resid),
               fitted= lapply(sim$sim,fitted),
               data= sim$sim.data,
               pred = c("DML","fMONTH"),
               ask=FALSE)

#Veja a variancia para cada um dos modelos
#Variancia dos residuos para cada mes no modelo igual ao LM
for (i in 1:12) {
  a<-resid(M.lm, type="normalized")[Squid$MONTH==i]
  print(var(as.numeric(a)))
}

#Variancia dos residuos para cada mes no modelo com um parametro
#modelando para cada mes
for (i in 1:12) {
  a<-resid(M.gls1, type="normalized")[Squid$MONTH==i]
  print(var(as.numeric(a)))
}

#veja no summary, em Variance Funtion,
#que agora cada mes o desvio padrão
#é multiplicado por um fator
summary(M.gls1)


#A validacao dos modelos sugere que
#o modelo M.gls1 é o mais adequado.
#Podemos compará-los usando 
#um teste da razão da máxima verossimilhaça
#ou AIC, sempre com 'method = "REML"' nos modelos.
anova(M.lm, M.gls1)

library(MuMIn)
AICc(M.lm, M.gls1)


#Agora que temos a estrutura
#da variância, procedemos com
#a seleção do modelo.
M.gls1<-gls(Testisweight.sqrt~DML*fMONTH,
            weights=vf1Ident,
            data=Squid,
            method = "ML")
dredge(M.gls1)




#Interpretacao do modelo
M.gls1<-gls(Testisweight.sqrt~DML*fMONTH,
            weights=vf1Ident,
            data=Squid,
            method = "REML")

coplot(fitted(M.gls1) ~ Squid$DML | Squid$fMONTH,
       panel = function(x, y, ...) {
         tmp <- lm(y ~ x, na.action = na.omit)
         abline(tmp, col="red")
         points(x, y) },
       ylab = "Testis weight (?mg?)^0.5",
       xlab = "DML (mm)")
#Ordem dos plots:
#In the case of multiple rows,
#the order of the panel plots is from the
#bottom and from the left
#(corresponding to increasing a, typically).

coplot(fitted(M.gls1)^2 ~ Squid$DML | Squid$fMONTH,
       ylab = "Testis weight (?mg?)",
       xlab = "DML (mm)")



#####################################################
#PROTOCOLO Zuur et al (2009)
#1.Modelo Linear com todas as variaveis explanatorias
#1.1.Heterogeneidade?
#2.Use GLS sem mudanca na variancia (função gls)
#2.1 USE REML (restricted maximum likelihood)
#3.Com base em 1.1 escolha a estrutura da variancia
#4.GLS com nova variancia e REML (função gls)
#5.Compare 2 e 4 (AIC, logLik). Se 4 melhor, cheque residuos (normalizados)
#5.Mude a variancia em caso de heterogeneidade
#6.Seleco de Modelo:
#  6.1. t-test e F-ratio: REML
#  6.2. Likelihood ratio test: ML
#  6.3. AICc: ML
#7. Refit com REML e faca a validaco do modelo.
#####################################################        

#http://www.econometrics.com/intro/table52.htm
#This cross-section data set contains average
#weekly expenditure on food and average weekly
#income in dollars for households that have three
#family members. 40 households have been randomly
#selected from a larger sample.
#The data set is from William E. Griffiths,
#R. Carter Hill and George G. Judge, Learning
#and Practicing Econometrics 1993, Wiley [Table 5.2, p. 182].
GHJ<-read.table("GHJ.txt")
colnames(GHJ)<-c("food","income")
dev.off()
plot(food~income, data=GHJ)

model<-lm(food~income, data=GHJ)
insp.plot(model,
          data=data.frame(income=GHJ$income))
sim<-insp.sim(model)
dev.off()
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)


#GLS
model.gls0<-gls(food~income, data=GHJ)

#Para preditoras continuas
#há diversas estruturas da varianca
#possíves:
?varClasses
#varFixed: aumenta linearmente com y
model.gls1<-gls(food~income, data=GHJ,
               weights=varFixed(~income))

#varPower: Aumenta a uma potencia de y
model.gls2<-gls(food~income, data=GHJ,
                weights=varPower(form = ~income))

#varConstPower: Aumenta a uma constance mais a potencia de y
model.gls3<-gls(food~income, data=GHJ,
                weights=varConstPower(form = ~income))


#varExp: exponential of a variance covariate.
model.gls4<-gls(food~income, data=GHJ,
                weights=varExp(form = ~income))

#varComb: Uma combinacao de duas, nao cabe
#aqui pois há apenas uma
#variável preditora

#Comparamos esses modelos com o AICc
library(MuMIn)
library(modelvalidation)
AICc(model.gls0,model.gls1,
     model.gls2,model.gls3,
     model.gls4)

sim<-insp.sim(model.gls4)
dev.off()
plots.insp.sim(insp.sim=sim$sim,
               resid=lapply(sim$sim,extract.resid),
               fitted=lapply(sim$sim,fitted),
               data=sim$sim.data,
               pred = c("income"),
               ask=FALSE)

model.gls4.ml <- update(model.gls4, method="ML")
dredge(model.gls4.ml)

summary(model.gls4)
plot(food~income, data=GHJ)
abline(model.gls4, col="red")

#############
#Estimated Marginal Means
library(emmeans)
GHJ$income
emmip(model, ~ income,
      at = list(income=seq(25,115)),
      CIs=TRUE
      )
emmip(model.gls4, ~ income,
      at = list(income=seq(25,115)),
      CIs=TRUE
)
#https://github.com/rvlenth/emmeans
#############


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

