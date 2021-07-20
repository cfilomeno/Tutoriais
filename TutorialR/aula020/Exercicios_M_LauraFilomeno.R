
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
# LSpobee = log10 + 1 da contagem de esporos em adultos (variavel resposta) Faltou o Spobee termo do log.
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
