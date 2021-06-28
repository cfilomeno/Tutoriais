#Seleção de modelos.
#Parte 1

#Vamos ver os dados da aula passada:
#Carregar os dados iris, que já
#vem com o R
data("iris")

#Estimar o modelo linear:
modelo_sepal <- lm(Sepal.Width ~ Species, data = iris)

#Veja agora
summary(modelo_sepal)

#Ele calcula os coeficientes do modelo.
#Isso é muito útil para interpretar
#o que o modelo está estimando.

#No entanto, frequentemente estamos primeiro
#interessados em saber a importância da variável
#"Species" para explicar a variação em "Sepal.Width".

#Há basicamente duas alternativas:
#1. Uma perspectiva frequentista
#2. Uma perspectiva da teoria da informação (AIC)

#1. Uma perspectiva frequentista
#Comparar modelos utilizando a o teste da razão da máxima verossimilhança
#(Likelihood ratio test). Ou um teste F, que é um caso
#específico do Likelihood ratio test.

#Você sempre começa com o modelo mais complexo (mais graus de liberdade)
#e o compara com o segundo modelo menos complexo.
#Você elimina as variáveis uma a uma de acordo com o valor de p
modelo_sepal_1 <- lm(Sepal.Width ~ Species, data = iris)
modelo_sepal_2 <- lm(Sepal.Width ~ 1, data = iris)

summary(modelo_sepal_1)
summary(modelo_sepal_2)

anova(modelo_sepal_1, modelo_sepal_2, test="F")
?anova
#O primeiro modelo tem uma suma dos quadrados dos resíduos (RSS)
#de 16.962, com 147 GL para os resíduos.

#O que são os resíduos? R: variância não explicada pelo modelo
plot(iris$Sepal.Width)
#segments é a média geral
segments(x0=1,
         x1=1150,
         y0=mean(iris$Sepal.Width[1:150]),
         y1=mean(iris$Sepal.Width[1:150]))
for (i in 1:150) {
  segments(x0=i, x1=i, y0=mean(iris$Sepal.Width[1:150]),
           y1=iris$Sepal.Width[[i]], lty=3)
}

plot(iris$Sepal.Width)
segments(x0=1,
         x1=50,
         y0=mean(iris$Sepal.Width[1:50]),
         y1=mean(iris$Sepal.Width[1:50]),
         col="red")
segments(x0=51,
         x1=100,
         y0=mean(iris$Sepal.Width[51:100]),
         y1=mean(iris$Sepal.Width[51:100]),
         col="red")
segments(x0=101,
         x1=150,
         y0=mean(iris$Sepal.Width[101:150]),
         y1=mean(iris$Sepal.Width[101:150]),
         col="red")

for (i in 1:50){
  segments(x0=i, x1=i,
          y0=iris$Sepal.Width[i],
          y1=mean(iris$Sepal.Width[1:50]),
          lty=3)
  }

for (i in 51:100){
  segments(x0=i, x1=i,
           y0=iris$Sepal.Width[i],
           y1=mean(iris$Sepal.Width[51:100]),
           lty=3)
}

for (i in 101:150){
  segments(x0=i, x1=i,
           y0=iris$Sepal.Width[i],
           y1=mean(iris$Sepal.Width[101:150]),
           lty=3)
}


anova(modelo_sepal_1, modelo_sepal_2, test="F")
#Veja que o segundo modelo tem 28.307 de RSS. Tem mais
#variância não explicada. Nesse caso devido a ausência
#de "Species", que explica parte dessa variância.

#Podemos calcular a diferença de RSS entre os modelos:
16.962 - 28.307
#Que vai dar o valor que aparece em Sum of Sq

#Agora vamos ponderar essas somas dos quadrados
#pelos graus de liberdade
#Há uma diferenca de 2 graus de liberdade
#entre os RSS dos modelos (149-147).
#Então a média dos quadrados entre os modelos é:
11.345/2

#E a média dos quadrados dos resíduos do primeiro modelo é:
16.962/147

#A razão entre esses valores segue uma distribuição F:
(11.345/2) / (16.962/147)
#Que é o F-ratio (ou valor de F)

#Existe uma probabilidade de encontrar esse valor
#de F assumindo a hipótese nula de que os dois
#modelos são iguais. Essa probabilidade é 
#2.2*10^-6 (o valor de p).

#Portanto, podemos concluir com segurança
#que o primeiro modelo é melhor que o segundo
#para explicar a variação em Sepal.Width.
#Ou, em outras palavras, que a presença da variável
#Species é estatiscamente significativa (F-ratio test;
#F_2,147 = 49.16, p < 0.001)

#(OBS:Isso é exatamente o processo para calcular 
#uma tabela de uma ANOVA.
anova(modelo_sepal_1)
#)

#Com o Likelihood ratio test
anova(modelo_sepal_1, modelo_sepal_2, test="LRT")
logLik(modelo_sepal_1, REML = FALSE)
logLik(modelo_sepal_2, REML = FALSE)

library(lmtest)
lrtest(modelo_sepal_2, modelo_sepal_1)

-2 * (-87.77614 - -49.3663)
#Segue uma distribuição de chi-quadrado, por isso
#Chisq
#Species é estatiscamente significativa (LRT;
#Chisquare(DF=2) = 76.82; p < 0.001)



#2.Uma perspectiva de Teoria da Informação
#Critério de Informação de Akaike (AIC)
#Critério de Informação de Akaike ajustado para pequenas amostras (AICc)
#Pondera a capacidade explicativa do modelo (likelihood) 
#pelos graus de liberdade.
#Ver:
#Burnham KP & Anderson DR (2004) Multimodel inference: Understanding AIC
#and BIC in Model Selection. SOCIOLOGICAL METHODS & RESEARCH, 33(2): 261-304.
#DOI: 10.1177/0049124104268644

#Instalar o pacote MuMIn
library(MuMIn)

modelo_sepal_1 <- lm(Sepal.Width ~ Species, data = iris)
modelo_sepal_2 <- lm(Sepal.Width ~ 1, data = iris)

AICc(modelo_sepal_1)
AICc(modelo_sepal_2)
#Quanto menor o valor, melhor o modelo.

#O que importa é o deltaAIC, não os valores absolutos.
AICc(modelo_sepal_2) - AICc(modelo_sepal_1)
#Há uma evidência muito forte em favor do
#modelo_sepal_1

modelo_sepal_1 <- lm(Sepal.Width ~ Species, data = iris,
                     na.action=na.fail)
?dredge
dredge(modelo_sepal_1, rank = "AICc")

#AIC weights
#"It is convenient to normalize the model likelihoods such that they
#sum to 1 and treat them as probabilities" (Burnham & Anderson DR, 2004)

#"The w_i, called Akaike weights, are useful as the “weight of
#evidence” in favor of model ..." (Burnham & Anderson DR, 2004)

#No nosso caso há evidência é muito forte em favor do modelo com Species.


#Exercícios:
#1.Faça a seleção de modelos dos dados de PlantGrowth
#em uma perspectiva frequentista e de teoria da informação:
data("PlantGrowth")
?PlantGrowth

#Estimar o modelo linear:
#modelo_PGLM <- lm(weight ~ group, data = PlantGrowth)
#
#modelo_PGLM 
plot(weight ~ group, data = PlantGrowth)
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
#
#