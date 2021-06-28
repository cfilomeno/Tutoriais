########################################### ATIVIDADES 13 e 14 ###############################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################## EXERCICIOS SOBRE LM Selecao de Modelos 13 #################################
#
#
#
#1.Faça a seleção de modelos dos dados de PlantGrowth
#em uma perspectiva frequentista e de teoria da informação:
data("PlantGrowth")
?PlantGrowth

#Estimar o modelo linear:
#modelo_PGLM <- lm(weight ~ group, data = PlantGrowth)
#
#modelo_PGLM 
#plot(weight ~ group, data = PlantGrowth)
#
#summary(modelo_PGLM)
#
#PERSPECTIVA FREQUENTISTA
modelo_pg_1 <- lm(weight ~ group, data = PlantGrowth)
modelo_pg_1
#
modelo_pg_2 <- lm(weight ~ 1, data = PlantGrowth)
modelo_pg_2
#
summary(modelo_pg_1)
summary(modelo_pg_2)
#
anova(modelo_pg_1 , modelo_pg_2, test="F")
#
#OU
anova(modelo_pg_1, modelo_pg_2, test="LRT")
logLik(modelo_pg_1, REML = FALSE)
logLik(modelo_pg_2, REML = FALSE)
#
library(lmtest)
lrtest(modelo_pg_2, modelo_pg_1)
#
#
#PERSPECTIVA DA TEORIA DA INFORMACAO
#
#
modelo_pg_1 <- lm(weight ~ group, data = PlantGrowth)
modelo_pg_2 <- lm(weight ~ 1, data = PlantGrowth)
#
library(MuMIn)
AICc(modelo_pg_1)
AICc(modelo_pg_2)
#
#
AICc(modelo_pg_2) - AICc(modelo_pg_1)
#
modelo_pg_1 <- lm(weight ~ group, data = PlantGrowth,
                  na.action=na.fail)
#
dredge(modelo_pg_1, rank = "AICc")
#
#plot(modelo_pg_1)
#plot(modelo_pg_2)
#coplot (modelo_pg_1 ~ modelo_pg_2)
#
#
#
################################## EXERCICIOS SOBRE LM Selecao de Modelos 14 #################################
#
#
#
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
#
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