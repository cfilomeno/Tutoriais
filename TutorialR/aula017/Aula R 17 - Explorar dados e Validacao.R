#Pré-análise (data exploration).
#Ler o artigo do Zuur et al. (2010)

#1. Decisão a priori dos métodos de análise e
#das variáveis preditoras
#2. Pré-análise (data-exploration).
#Eliminação de variáveis correlacionadas, etc..
#3. Modelo
#4. Validação
#5. Seleção do Modelo, AIC, teste-F, etc..


#Zuur et al 2010:
#1. Outliers X and Y
#2. Homogeneity (errors)
#3. Normality (errors)
#4. Zero trouble Y
#5. Collinearity (X)
#6. Relationship Y & X
#7. Interactions
#8. Independence


###############
#fertilizantes#
#fertilizantes#
#fertilizantes#
###############

setwd(dir ="/home/laura/Documentos/Introdução ao R Studio")

fertil<-read.csv("fertilizante.csv", dec=".")
head(fertil)
fertil$FERTIL<-as.factor(fertil$FERTIL)
plot(YIELD~FERTIL, data=fertil)


#outliers
par(mfrow=c(1,1))
boxplot(fertil$YIELD)

boxplot(rnorm(n=1000))
hist(rnorm(n=1000))

dotchart(fertil$YIELD, groups=as.factor(fertil$FERTIL),
         xlab = "YIELD",
         ylab = "Order of the data")


#excesso de zeros
fertil$YIELD
plot(table(round(fertil$YIELD)))

#colinearidade
#há apenas uma variável...

#Relacao entre X e Y
#dados de X são categoricos

#Interacoes
#há apenas uma variável

#Após o modelo
 #homogeneidade
 #normalidade
 #Independencia de Y
   #nao há temporalidade ou relacao espacial dos dados,
   #tambem nao ha nada que indique aninhamento dos dados

model<-lm(YIELD~FERTIL, data=fertil)
library(modelvalidation)
insp.plot(model, data=fertil[,"FERTIL"])

sim<-insp.sim(model)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)


log.fertil<-log(fertil$YIELD)
modelfertil<-lm(log.fertil ~ fertil$FERTIL)
insp.plot(modelfertil, data=fertil[,"FERTIL"])


sqrt.fertil<-sqrt(fertil$YIELD)
modelfertil2<-lm(sqrt.fertil ~ fertil$FERTIL)
insp.plot(modelfertil2, data=fertil[,"FERTIL"])

library(MuMIn)
AICc(model, modelfertil)


log.fertil<-log(fertil$YIELD)
modelfertil<-lm(log.fertil ~ fertil$FERTIL)
insp.plot(modelfertil, data=fertil[,"FERTIL"])


##############
#            #
# Roadkills  #
#            #
##############

kills<-read.table("RoadKills.txt", header=TRUE)
names(kills)
head(kills)

#outliers
library(lattice)
dotplot(as.matrix(kills), groups = FALSE,
        strip = strip.custom(bg = 'white',
                             par.strip.text = list(cex = 0.8)),
        scales = list(x = list(relation = "free"),
                      y = list(relation = "free"),
                      draw = FALSE),
        col = 1, cex  = 0.5, pch = 16,
        xlab = "Value of the variable",
        ylab = "Order of the data from text file")

#podem ter problemas
#WAT.RES
#URBAN
#SHRUB
#log? sqrt?
par(mfrow=c(1,1))
dotchart(sqrt(kills$WAT.RES))
dotchart(sqrt(kills$URBAN))
dotchart(sqrt(kills$SHRUB))
dotchart(sqrt(kills$POLIC))

#Excesso de zeros
plot(table(kills$TOT.N))

#Colinearidade
#pair plots and correlation
cor(kills) 
pairs(kills[,4:10])

#checar usando VIF apos o modelo
cor(kills)
names(kills)
sqrtWAT.RES<-sqrt(kills$WAT.RES)
sqrtURBAN<-sqrt(kills$URBAN)
sqrtSHRUB<-sqrt(kills$SHRUB)
sqrtPOLIC<-sqrt(kills$POLIC)

model<-lm(TOT.N ~ OPEN.L+OLIVE+MONT.S+MONT+sqrtPOLIC+sqrtSHRUB+sqrtURBAN
            +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
            D.WAT.COUR+D.PARK+N.PATCH+P.EDGE+L.SDI,
            data=kills)

insp.plot(model)

log.TOT.N<-log(kills$TOT.N)
model.log<-lm(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+MONT+sqrtPOLIC+sqrtSHRUB+sqrtURBAN
          +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
            D.WAT.COUR+D.PARK+N.PATCH+P.EDGE+L.SDI,
          data=kills)
insp.plot(model.log)


library(car)
vif(model.log)
vif(update(model.log,.~.-MONT))
vif(update(model.log,.~.-MONT-N.PATCH))
vif(update(model.log,.~.-MONT-N.PATCH-P.EDGE))
vif(update(model.log,.~.-MONT-N.PATCH-P.EDGE-L.SDI))
vif(update(model.log,.~.-MONT-N.PATCH-P.EDGE-L.SDI-sqrtURBAN))

model2<-lm(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,
          data=kills)
summary(model2)
vif(model2)

#homogeneidae
#normalidade
dev.off()
insp.plot(model2)
summary(model2)

drop1(model2)



#Exercícios:
#Fazer todo o processo de 2-4 para os dados
#contidos em squid:

#1. Decisão a priori dos métodos de análise e
#das variáveis preditoras
#2. Pré-análise (data-exploration).
#Eliminação de variáveis correlacionadas, etc..
#3. Modelo
#4. Validação
#5. Seleção do Modelo, AIC, teste-F, etc..

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
squid<-read.table("Squid.txt", header=TRUE)
head(squid)
