#Seleção de modelos. 
#Parte 2

#Agora um modelo com a interação entre variáveis
data("iris") 
##Lembrar de sempre comecar do modelo + colexo para o menos complexo
modelo_sepal_int_1 <- lm(Sepal.Width ~ Sepal.Length + Species +
                           Sepal.Length * Species,
                           data = iris, na.action = na.fail)
summary(modelo_sepal_int_1)

#Todos os modelos aninhados: + complexo para menos complexo
modelo_sepal_int_2 <- lm(Sepal.Width ~ Sepal.Length + Species,
                         data = iris, na.action = na.fail)
modelo_sepal_int_3 <- lm(Sepal.Width ~ Sepal.Length,
                         data = iris, na.action = na.fail)
modelo_sepal_int_4 <- lm(Sepal.Width ~ Species,
                         data = iris, na.action = na.fail)
modelo_sepal_int_5 <- lm(Sepal.Width ~ 1,
                         data = iris, na.action = na.fail)

#Em uma perspectiva frequentista:
anova(modelo_sepal_int_1, modelo_sepal_int_2, test="F")

#Nesse caso a comparaçào entre o modelo com e 
#sem interação favorece o modelo com interação.

#Teoria da Informação
library(MuMIn)
modelo_sepal_int_1 <- lm(Sepal.Width ~ Sepal.Length + Species +
                           Sepal.Length * Species,
                         data = iris,
                         na.action = na.fail)
dredge(modelo_sepal_int_1) #a funcao organizad o modelo pelo AIC (do maior para o menor)

summary(modelo_sepal_int_1)

#plot(modelo_sepal_int_1)

#RIKZ
#RIKZ
#Zuur et al. (2009):
#... from a benthic study carried out by RIKZ
#in The Nether- lands. Samples at 45 stations
#along the coastline were taken and benthic species
#were counted. To measure diversity, the species
#richness (the different number of species) per
#site was calculated. A possible factor explaining
#species richness is Normal Ams- terdams Peil (NAP),
#which measures the height of a site compared
#to average sea level, and represents a measure
#of food for birds, fish, and benthic species.

#Riqueza da macro fauna bentonico da zona inter-marés em
#praias na Holanda:
#NAP - altura do local de coleta em relação à maré
#grainsize - tamanho do grao de areia
#humus - quantidade de matéria orgânica na areia
#week - semana de coleta.

setwd("/home/laura/Documentos/Introdução ao R Studio")
RIKZ<-read.csv(file="RIKZ.csv")
head(RIKZ)
pairs(RIKZ)

RIKZ$week <- factor(RIKZ$week) #transformou a variavel semana em fator

RIKZ_model.1<-lm(log.Richness ~ NAP + grainsize + humus + week, 
                 data = RIKZ)

#Frequentista:
#NAP 48.547 2.721e-08 ***
RIKZ_model.2<-lm(log.Richness ~ grainsize + humus + week, 
                 data = RIKZ)
anova(RIKZ_model.1,RIKZ_model.2, test="F") #comparando modelos 2 e 1

#grainsize 0.3609 0.5516
RIKZ_model.3<-lm(log.Richness ~ NAP + humus + week, 
                 data = RIKZ)
anova(RIKZ_model.1,RIKZ_model.3, test="F") #comparando modelos 1 e 3


#humus 1.2295 0.2745
RIKZ_model.4<-lm(log.Richness ~ NAP + grainsize + week, 
                 data = RIKZ)
anova(RIKZ_model.1,RIKZ_model.4, test="F") #comparando modelos 1 e 4


#week 6.8396 0.0008489 ***
RIKZ_model.5<-lm(log.Richness ~ NAP + grainsize + humus, 
                 data = RIKZ)
anova(RIKZ_model.1,RIKZ_model.5, test="F") #comparando modelos 1 e 5


#Agora esse é o modelo:
#Comeca tudo de novo
#NAP 57.124 3.717e-09 ***
RIKZ_model.3<-lm(log.Richness ~ NAP + humus + week, 
                 data = RIKZ)
RIKZ_model.5<-lm(log.Richness ~ humus + week, 
                 data = RIKZ)
anova(RIKZ_model.3,RIKZ_model.5, test="F")

#week 
RIKZ_model.7<-lm(log.Richness ~ NAP + humus, 
                 data = RIKZ)
anova(RIKZ_model.3,RIKZ_model.7, test="F")

#humus #1.1427 0.2917
RIKZ_model.8<-lm(log.Richness ~ NAP + week, 
                 data = RIKZ)
anova(RIKZ_model.3,RIKZ_model.8, test="F")


#Week
RIKZ_model.8<-lm(log.Richness ~ NAP + week, data = RIKZ)
RIKZ_model.9<-lm(log.Richness ~ NAP, data = RIKZ)
anova(RIKZ_model.8,RIKZ_model.9, test="F")

#NAP
RIKZ_model.10<-lm(log.Richness ~ week, data = RIKZ)
anova(RIKZ_model.8,RIKZ_model.10, test="F")



#O modelo final é
RIKZ_model.8<-lm(log.Richness ~ NAP + week, data = RIKZ)
summary(RIKZ_model.8)

#Pode fazer isso de maneira menos tediosa usando o
#drop1
drop1(RIKZ_model.1, test = "F")

#Conclusão:
#A riqueza diminui com NAP e
#varia ao longo das semanas


#Teoria da Informacao
RIKZ_model.1<-lm(log.Richness ~ NAP + grainsize + humus + week, 
                 data = RIKZ, na.action=na.fail)

library(MuMIn)
dredge(RIKZ_model.1)

#plot(RIKZ_model.1)


#Exercícios
#Exercícios
#Exercícios
#Exercícios
#Roadkills (RK)
#São dados de atropelamentos de anfíbios em uma rodovia em Portugal
#A variável resposta é o número de atropelamentos (TOT.N). O pesquisador
#quer saber o que influencia na quantidade de anfíbios atropelados.
#Há várias variáveis preditoras.
#Uma pré-análise sugeriu que varias transformações eram necessárias e a
#eliminação de algumas.
#Essas são as varáveis preditoras que vamos usar:
#OPEN.L = Open lands (ha)
#MONT.S = Montado with shrubs (ha)
#SQ.POLIC = raiz quadrada da Policulture (ha)
#D.PARK = Distance to Natural Park (m)
#SQ.SHRUB = raiz quadrada da Shrubs (ha)
#SQ.WATRES = raiz quadrada da Distance to water reservoirs ()
#L.WAT.C = Length of water courses (km)
#SQ.LPROAD = raiz quadrada da Paved road length (km)
#SQ.DWATCOUR = raiz quadrada da Distance to water courses

#TOT.N.log = log do Total de atropelamentos.
#Use TOT.N.log como sua variável resposta. Não teste interações
#entre as variáveis preditoras (apenas +, não *).
#1. Faça a seleção de modelos pelo método frequentista ou
#da teoria da informação.
RK<-read.csv("RK.csv")
head(RK)
3
#Escolhi o metodo da Teoria da Informacao
RK_model_LF<-lm(TOT.N.log ~ OPEN.L + MONT.S + SQ.POLIC + D.PARK + SQ.SHRUB + SQ.WATRES + L.WAT.C + SQ.LPROAD + SQ.DWATCOUR, 
                 data = RK, na.action=na.fail)
#
library(MuMIn)
dredge(RK_model_LF)
#
#plot(RK_model_LF)
#
#
#2.Interprete os seus resultados.
#
#
#De acordo com os resultados do modelo aplicado sobre o atropelamento de anfíbios na 
#rodovia avaliada em Portugal, a variável que mais influencia no total de atropelamentos
#é a distância do Parque Natural (D.PARK) quanto a Rodovia. (D.PARK: AICc = 100.7 delta = 0.00 e weight = 0.096)
#Além disto, a variável do Comprimento dos Cursos D'água (L.WAT.C) também deve ser considerada
#pois tem peso importante no total de atropelamentos. (L.WAT.C: AICc = 101.0 delta 0.034 e weight = 0.081)
#
#
#