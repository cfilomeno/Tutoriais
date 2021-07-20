#Modelos Mistos / Multiníveis / Hierárquicos
#Modelos Mistos / Multiníveis / Hierárquicos
#Falta de Independencia
library(nlme) #ou lme4
library(modelvalidation)
library(MuMIn)


#RIKZ
#Zuur et al. (2009):
#... from a benthic study carried out by RIKZ
#in The Nether- lands. Samples at 45 stations
#along the coastline were taken and benthic species
#were counted. To measure diversity, the species
#richness (the different number of species) per
#site was calculated. A possible factor explaining
#species richness is Normal Amsterdams Peil (NAP),
#which measures the height of a site compared
#to average sea level, and represents a measure
#of food for birds, fish, and benthic species.

#Riqueza da macro fauna bentônica da zona inter-marés em
#praias na Holanda:
#NAP - altura do local de coleta em relação à maré


#Beach - praia em que foi coletada
setwd("~/Documents/UnB/AULAS/R e GLM/2020-02")
RIKZ<-read.table("RIKZ2.txt", header = TRUE, dec=".")

head(RIKZ)
RIKZ$Beach<-as.factor(RIKZ$Beach)
table(RIKZ$Beach)

#ANCOVA
#Opção 1: LM ‘comum’ para cada praia (ANCOVA)
#Richness ~ NAP + BEACH + NAP*BEACH
#Rij =  aij + bijNAPij + eij, com eij ~ N(0,var)
#i = Praias (n = 9)
#j = locais de coleta (N = 5 por praia)
m1<-lm(Richness~ NAP * Beach , data = RIKZ, x = TRUE)
summary(m1)

#beta para praia 1
m1$coefficients[2]
#beta para praia 2 
m1$coefficients[2]+m1$coefficients[11]
#beta para praia 3 
m1$coefficients[2]+m1$coefficients[12]

#O equivalente a fazer um modelo linear para cada praia:
#Estimar beta para cada praia:
Beta<-vector(length=9)
for (i in 1:9){
 tmpout<-summary(lm(Richness~NAP,subset = (Beach==i),data=RIKZ))
 Beta[i]<-tmpout$coefficients[2,1]
}
Beta

#representacao gráfica desses resultados:
library(lattice)
xyplot(Richness~NAP|Beach, type=c("p","r"), data=RIKZ)

#O problema com m1 é que sao necessários 18 parâmetros
#para o modelo
#no entanto, nao estamos interessados no intercept e slope
#para cada praia, mas sim se há um efeito de NAP na riqueza


#MODELO MISTO
#Praia Entra como variável aleatória
#apenas intercept aleatorio
RIKZ$fBeach <- as.factor(RIKZ$Beach)
library(nlme) #library(lme4)

#Rij =  alpha + betaNAPij + aj + eij
#aj ~ N(0,var(a))
#Só intercept aleatório;
Mlme1 <- lme(Richness ~ NAP,
             random = ~1|fBeach,data=RIKZ)
summary(Mlme1)

#estimar a proporçào variancia explicada pelas prais:
(2.944065^2)/(2.944065^2 + 3.05977^2)

F0<-fitted(Mlme1,level=0) #fitted values para a populacao como um todo.
F1<-fitted(Mlme1,level=1) #fitted values para cada praia
I<-order(RIKZ$NAP)
NAPs<-sort(RIKZ$NAP)
plot(NAPs,F0[I],lwd=4,type="l",ylim=c(0,22),
     ylab="Richness",xlab="NAP")
for (i in 1:9){
   x1<-RIKZ$NAP[RIKZ$Beach==i]
   y1<-F1[RIKZ$Beach==i]
   K<-order(x1)
   lines(sort(x1),y1[K])
}
#Hence, the random intercept model implies
#one average curve (the thick line)
#that is allowed to be shifted up, or down,
#for each beach by something that is normally
#distributed with a certain variance d2.
#If d2 is large, the vertical shifts will
#be relative large. If d2 = 0, all shifts
#are zero and coincide with the thick line.



#Praia como variável aleatória
#intercept e slope aleatorio.
#Cada praia com um intercept e uma inclinação
#da reta diferentes
#Rij =  alpha + betaNAPij + aj + bjNAPij + eij
#aj ~ N(0,var(a))
#bj ~ N(0,var(b))
Mlme2 <- lme(Richness ~ NAP,
             random = ~1 + NAP | fBeach, data = RIKZ)
summary(Mlme2)

F0<-fitted(Mlme2,level=0) #fitted values para a populacao como um todo.
F1<-fitted(Mlme2,level=1) #fitted values para cada praia
I<-order(RIKZ$NAP)
NAPs<-sort(RIKZ$NAP)
plot(NAPs,F0[I],lwd=4,type="l",ylim=c(0,22),
     ylab="Richness",xlab="NAP")
for (i in 1:9){
  x1<-RIKZ$NAP[RIKZ$Beach==i]
  y1<-F1[RIKZ$Beach==i]
  K<-order(x1)
  lines(sort(x1),y1[K])
}



#Quando comparamos um modelo sem componente 
#aleatório com um com componente aleatório
#há um detalhe:

#testing on the boundary
#quando comparando o modelo aleatorio
#estamos testando se variancia = 0,
#mas a hipotese alternativa var > 0,
#ao inves de var != 0
#dessa forma os valores de AIC e p
#tem que ser olhados com cuidado
Mgls <- gls(Richness ~ NAP, data=RIKZ, method="REML")
insp.plot(Mgls, data=RIKZ[,c("NAP","fBeach")])

Mlme1 <- lme(Richness ~ NAP, random = ~1|fBeach,data=RIKZ, method="REML")
Mlme2 <- lme(Richness ~ NAP, random = ~1 + NAP|fBeach,data=RIKZ, method="REML")
anova(Mgls,Mlme1,Mlme2)
#Segundo Verbeke and molenberghs (2000) em Zuur et al. (2009), p.123
#os valores podem ser corrigdos por 0.5*(chi(df=p-1)+chi(df=p))
#p = numero de parametros extras
0.5*( (1-pchisq(12.720753, df=0)) + (1-pchisq(12.720753, df=1)) )
0.5*( (1-pchisq(7.096378, df=1)) + (1-pchisq(7.096378, df=2)) )

summary(Mlme2)

#Seleção da Estrutura Fixa...



#EXEMPLO
#Efeito de tratamentos no solo na densidade de bacterias
#nas folhas. Medidas varias folhas por planta
library(nlme)
Ch12<-read.csv("ch12.csv", dec=".")
names(Ch12)
micro<-data.frame(density = Ch12$DENSITY,
                  plant = Ch12$PLANT, treatment = Ch12$TREATMNT)
micro<-micro[1:60,]
micro$treatment<-as.factor(micro$treatment)
micro$plant<-as.factor(micro$plant)
head(micro)

dev.off()
dotchart(micro$density, groups=micro$treatment)
dotchart(micro$density, groups=micro$plant)

table(micro$plant, micro$treatment)

lm0<-lm(density ~ treatment, data=micro)
#alem de ser conceitualmente incorreto,
#os residuos sugerem dependencia por cada planta
insp.plot(lm0, data=micro)
plot(residuals(lm0) ~ micro$plant)


#Modelos mistos.
Mgls<-gls(density ~ treatment, data=micro)
Mlme<-lme(density ~ treatment,
          random = ~1|plant, data=micro)
anova(Mgls,Mlme)
#AIC também sugere melhor ajuste.
AICc(Mgls,Mlme)


#validacao do modelo misto
insp.plot(Mlme, data=micro)
sim<-insp.sim(model=Mlme,
              nsim=19,
              data=extract.data(Mlme))
dev.off()
plots.insp.sim(insp.sim= sim$sim,
               resid= lapply(sim$sim,extract.resid),
               fitted= lapply(sim$sim,fitted),
               data= sim$sim.data,
               pred = c("treatment","plant"),
               ask=FALSE)

#teste da estrutura fixa
#Log likelihood ratio test:
Mlme<-lme(density ~ treatment,
          random = ~1|plant,
            data=micro, method="ML")
Mlme1<-lme(density ~ 1,
           random = ~1|plant,
           data=micro, method="ML")
anova(Mlme1, Mlme)
#A probabilidade de que a diferença entre as médias
#das categorias de treatment que você encontrou
#tenham ocorrido ao acaso é de ~8%

#se nao fosse considerada a dependencia:
anova(lm0)
#A probabilidade de que a diferença entre as médias
#das categorias de treatment que você encontrou
#tenham ocorrido ao acaso é de ~0.0008%


#comparacao de fitted values
predict(lm0, newdata = data.frame(treatment=as.factor(c(1,2))))
p.lme<-predict(Mlme, level=0,
               newdata = data.frame(treatment=as.factor(c(1,1,1,2,2,2)),
                                   plant=as.factor(c(1,2,3,4,5,6))
                                   ))
mean(p.lme[1:3])
mean(p.lme[4:6])
#iguais

summary(lm0)$coeff
summary(Mlme)

#             Estimate Std. Error   t value     Pr(>|t|)
#(Intercept) 85.41333   5.043824 16.934240 4.055197e-24
#treatment2  25.22333   7.133045  3.536124 8.058655e-04

(13.84519^2)/(13.84519^2 + 23.36826^2)


#EXERCICIO#
#EXERCICIO#
#EXERCICIO#
#CHAP 19.
#Fazer as transformacoes antes das analises
#Colonias de Apis mellifera sao atacadas por bacterias 
#alta mortalalidae
#Bacterias atacam as larvas
#Objetivo ?? encontrar vari'??veis que predizam a presenca
#de esporos antes que a doenca se espalhe
#Uma possibilidade eh a presenca de esporos em adultos

#Variaveis
# LSpobee = log10(Spobee) + 1 da contagem de esporos em adultos (variavel resposta)
# fInfection01 = se a colonia esta infectada (1) ou nao (0)
# BeesN =  numero de abelhas da colonia
# Hive - Colonia analisada (sao tres amostras por colonia)

#comecem com o modelo 
#LSpobee ~ fInfection01 * BeesN

# Bees<-read.csv("Bees.csv")
Bees<-read.table("Bees.txt", header = TRUE) # o arquivo é txt e não csv
Bees$LSpobee = log(Bees$Spobee) + 1 # log10 do vetor Spobee + 1
Bees <- Bees[is.finite(rowSums(Bees)),] # remove as linhas com valor indefinido (-Inf) de log de zero.

Bees$fHive<-factor(Bees$Hive) # coloca as 24 hives (colmeias) como categórico

Bees$fInfection01<-Bees$Infection # cópia do vetor Infetion original
Bees$fInfection01[Bees$fInfection01 > 1] <- 1 # substitui os valores 2 e 3 de infection como 1, para formar infection 0 e 1 apenas.
Bees$fInfection01<-factor(Bees$fInfection01) # define as duas categorias (0 e 1)



dev.off()
boxplot(LSpobee ~ fInfection01, data = Bees, varwidth = TRUE)

dotchart(Bees$LSpobee, groups=as.factor(Bees$fInfection01),
         xlab = "Infection",
         ylab = "Order of the data")


M1 <- lm(LSpobee ~ fInfection01 * BeesN, data = Bees)
dev.off()
insp.plot(M1, data=Bees[,c("fInfection01",
                           "BeesN",
                           "fHive")])
plot(residuals(M1) ~ Bees$fHive, ylab = "Ordinary residuals", xlab = "Hives")
abline(0, 0)



#SELECAO DA ESTRUTURA ALEATORIA (REML e AIC)
#SELECAO DA ESTRUTURA ALEATORIA
#SELECAO DA ESTRUTURA ALEATORIA
library(nlme)
library(lattice)

M2<-gls(LSpobee ~ fInfection01 * BeesN, data = Bees)
M3<-lme(LSpobee ~ fInfection01 * BeesN,
        random =~ 1 | fHive, data = Bees)
anova(M2,M3)
library(MuMIn)
AICc(M2, M3)


summary(M3)
insp.plot(M3,
          data=Bees[,c("fInfection01","BeesN", "fHive")])
sim<-insp.sim(model=M3,
              nsim=19,
              data=extract.data(M3))
dev.off()
plots.insp.sim(insp.sim=sim$sim,
               resid=lapply(sim$sim,extract.resid),
               fitted=lapply(sim$sim,fitted),
               data=sim$sim.data,
               pred = c("fInfection01","BeesN", "fHive"),
               ask=FALSE)


M6<-lme(LSpobee ~ fInfection01 * BeesN,
        random =~ 1 | fHive,
        weights = varIdent(form =~ 1 | fInfection01), data =  Bees)
anova(M3,M6)
AICc(M3, M6)


dev.off()
insp.plot(M6,
          data=Bees[,c("fInfection01","BeesN", "fHive")])
summary(M6)


#SELECAO DA ESTRUTURA FIXA
M7full<-lme(LSpobee ~ 1+fInfection01 + BeesN + fInfection01:BeesN,
            random=~1|fHive,
            weights=varIdent(form =~ 1 | fInfection01),
            method="ML", data = Bees)

drop1(M7full, test = "Chisq")
drop1(update(M7full, .~.-fInfection01:BeesN), test = "Chisq")
drop1(update(M7full, .~.-fInfection01:BeesN-BeesN), test = "Chisq")

M7.final<-update(M7full, .~.-fInfection01:BeesN-BeesN)

#Validacao do Modelo Final
insp.plot(M7.final,
          data=Bees[,c("fInfection01","BeesN", "fHive")])
sim<-insp.sim(model=M7.final,
              nsim=19,
              data=extract.data(M7.final))
dev.off()
plots.insp.sim(insp.sim=sim$sim,
               resid=lapply(sim$sim,extract.resid),
               fitted=lapply(sim$sim,fitted),
               data=sim$sim.data,
               pred = c("fInfection01","BeesN", "fHive"),
               ask=FALSE)


summary(M7.final)

library(emmeans)
emmeans(M7.final, ~fInfection01)


dredge(M7full)

