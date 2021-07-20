#Validação/Checagem de um modelo
#Validação/Checagem de um modelo
#Validação/Checagem de um modelo
#O modelo segue os pressupostos?


#1. Decisão a priori dos métodos de análise e
#das variáveis preditoras
#2. Pré-análise (data-exploration).
#Eliminação de variáveis correlacionadas, etc..
#3. Modelo
#4. Validação/Checagem ##serve como feedback tambem
#5. Seleção do Modelo, AIC, teste-F, etc..


#Validação de um modelo
#1. Instalar o pacote
#modelvalidation (arquivo está no aprender)
library(modelvalidation)

install.packages("~Downloads/modelvalidation_0.4.0.tar", repos = NULL,
                type="source")

#Formula de um modelo linear
#Y_i = a + bX_i + erro_i
#erro_i ~ N(0, var) (normalidade e homogeneidade da variância) #pressuposto da normalidade 
##eh que os erros associados a Y são normais 

#Pressupostos:
#1. Normalidade dos erros associados a Yi
#2. Homogeneidade dos erros ##pressuoposto de que o erro e igual para todos os valores de Y. Tem uma distribuição normal
#3. Independência ##Importante! Pressupoe que existe uma independencia entre seus dados. Geralmente é testado a priori, mas pode usar posteriori tambem. 
#4. X-fixo ##Pressupoe-se que o X e fixo. Assumimos que as variaveis NAO tem erros associados a X e que elas sao precisas. Pressupoe-se que o X e fixo. 
## Isso raramente é verdade, mas pode nao ser um problema se os erros associados a X forem muito menorers do que os associados a Y, mas se os erros associados a 
## a X forem semelhantes aos erros associados a Y aí vai ser um problema e tem que pensar em uma outra forma de análise que não seja um modelo linear simples. 
## Por isso e importante pensar a priori


#Como checar os pressupostos
X<-rnorm(n=100, mean=0, sd=1) #media = 0 e desvio padrao = 1
Y<-0.1 + 1.2*X + rnorm(n=100, mean=0, sd=1)
data<-data.frame(X,Y)
plot(Y~X, data=data)

model1<-lm(Y~X, data=data)

#Ypred-Yres

#modelvalidation faz uma série de plots para
#ajudar na validação dos modelos.
#funcões:
residuals(model1) ##funcao extrai os residuos. o Y que vc encontrou menos o  dos residuos
points(fitted(model1)~X, data=data, col="red") ##fitted extrai os valores preditos
qqnorm(residuals(model1)) ##funcao para testar normalidade destes residuos
acf() ##funcao de testar autocorrelacao
plot(model1, which = 4) ##

plot(model1)

library(modelvalidation)
?insp.plot
insp.plot(model1, data=data[,"X"])
# histograma dos resíduos (testa os pressupostos da normalidade). Se o hist dos resíduos
# tem aspecto de curva normal, significa alta probabilidade de seguir os pressupostos norm
# qqplot: se os resíduos próximos à linha vermelha, seguem distribuição normal
# a normalidade é o pressuposto menos importante. Pode-se aceitar pequenos desvios.
# resíduos pelos valores preditos (ordi res X fitted): devem estar distribuídos para mais
# e menos perto do zero.
# ord res X data: 
# distancia de cook: estima a importancia de cada ponto dos dados para a estimativa.
# ACF: função de autocorrelação. Quão relacionados são os resíduos a medida que aumenta dist

#Rodar a linha 61 para ver seus plots em diferendes graficos
#PLOTS:
#1: Histograma dos resíduos = normalidade

#2: quantile-quantile plot (qq plot) = normalidade  ##1 Parentese normalidade 
# e um dos pressupostos que nao e tao imporante, e continua em 
    ##2 #o valor de y está na distribuição dos resíduos. #
    # 2 se conserguir desvio normal e melhor, mas se nao tiver nao significa que esta errado
#y são os valores dos resídos. x em qual quartil
#a reta são os valores esperados tendo
#em vista um distribuicao normal com média 0
#e o desvio padrão calculado pelo modelo (sigma)

#3: Resíduos x Valores Esperados: homogeneidade, idependência
#Esperado um "céu estrelado". Ausência de padrão.
#distribuição aleatória desse pontos. Reta em
#vermelho é um ajuste quadrático aos pontos.
#espera-se uma +- uma reta em zero (erro tem
#média zero). ##Nao esperamos encontrar padroes

#4. Resíduos vs. variável preditora. Idem ao 3.
#Mais plots são adicionados em caso de várias
#variáveis preditoras.

#5. Distância de Cook. Mede a influência de
#pontos no resultado da amostra. É arbitrário.  ## se tiver um ponto chamando muita atencao, e legal checa-lo e ver se nao e erro de digitacao e talvez fazer dois modelos um com e outro sem este ponto influente
#Zuur et al (2007):
#A better measure for influential points is
#the Cook's distance statistic. This statistic
#identifies single observations that are
#influential on all regression parameters.
#It does this by calculating a test statistic D
#that measures the change in all regression
#parameters when omitting an observation.  
#Montgomery and Peck (1992)
#compare the Cook value with an F-value of
# approximately 1, and all Dt values larger
#than 1 could be influential.

#6. Função de Autocorrelação: Independência. ##depende da ordem dos seus residuos
#Calcula a correlação entre os erros a
#medida que eles vão ficando mais distantes
#entre si (lag). Só faz sentido se houver
#uma ordenação temporal ou espacial(linear) dos dados.

#Muitas vezes é difícil avaliar se
#os dados estão violando ou não os pressupostos
#Uma solução é comparar os seus plots
#com dados simulados ##ver a funcao abaixo
?insp.sim ##funcao de simular dados com base no seu modelo, ela gera dados de Y simulados para vc comparar com os dados do seu modelo
sim<-insp.sim(model1)
head(sim)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid), ##extrair os residuos
               fitted=lapply(sim,fitted), ##filtrar
               data=lapply(sim,extract.data),
               ask=FALSE)

# ord. residuals: em azul, dados reais. Outros: dados simulados.
# qqplot: semelhança? resíduos com distr normal
# resdi x fitted: dentro da variação natural?
# resid x X: alguma variação que mostre problema?
# cook's distance:
# ACF: 100% para dados reais.

#Exercícios
#Exercícios
#Exercícios
#Exercícios

#Exercício 1:
#Faça a validação desse modelo.
#Indique possíveis problemas
X<-rnorm(n=100)
X<-X[order(X)]
Y<-NULL
for (i in 1:length(X)) {
  Y[i]<-0.1+1.2*X[i]+rnorm(n=1,mean=0,sd=i/50)
}
data <- data.frame(X, Y)
model1f<-lm(Y~X, data=data)
#
plot(model1f)

#
plot(Y~X, data=data)
residuals(model1f) ##funcao extrai os residuos. o Y que vc encontrou menos o  dos residuos
points(fitted(model1f)~X, data=data, col="red") ##fitted extrai os valores preditos
qqnorm(residuals(model1f)) ##funcao para testar normalidade destes residuos
acf(model1f) ##funcao de testar autocorrelacao
plot(model1f, which = 4) 
#
insp.plot(model1f, data=data[,"X"])
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
#Não foi possível testar a autorcorrelacao, pois os argumentos nao tem o mesmo comprimento. 
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

#
#
#Exercício 3:
#Faça dados simulados que violem o pressuposto da homogeneidade da variância e compare
#os os valores estimados pelo modelo com os valores criados
#
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
# Ord. residuals: resíduos segue distribuição normal: OK
# qqplot: ok
# função de autocorrelação ACF com problema? dados reais decaem com aumento de lag
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

sim<-insp.sim(modelfertil)
head(sim)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid), ##extrair os residuos
               fitted=lapply(sim,fitted), ##filtrar
               data=lapply(sim,extract.data),
               ask=FALSE)
