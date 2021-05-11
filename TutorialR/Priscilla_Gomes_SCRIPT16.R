#Priscilla de Almeida Gomes
#Matr?cula 200051610

#Pressupostos para considerar o modelo como sendo o certo:
#1. Normalidade dos erros associados a Yi
#2. Homogeneidade dos erros
#3. Independência
#4. X-fixo

#QUEST?O 1

#Seria necess?rio acrescentar mais um par?metro
#Falta acrescentar heterogeneidade ? vari?ncia 
#Erros associados a X se parecem com os erros associados ao Y

X<-rnorm(n=100)
X<-X[order(X)]
Y<-NULL
for (i in 1:length(X)) {
  Y[[i]]<-0.1+1.2*X[[i]]+rnorm(n=1,mean=0,sd=i/50)
}
data<-data.frame(X,Y)
modelo<-lm(Y~X, data=data)


#QUEST?O 2
G<-rnorm(n=50, mean=5, sd=2)
K<-0.1 + 1.2*G + 50
data<-data.frame(G,K)
plot(K~G, data=data)

model1<-lm(K~G, data=data)
residuals(model1)
qqnorm(residuals(model1))
insp.plot(model1, data=data[ ,"G"])

#QUEST?O 4
#Este modelo n?o segue uma distribui??o normal
library(ape)
phy<-rtree(n=100)
phy<-compute.brlen(phy)
plot(phy, cex=0.5)
y<-rTraitCont(phy=phy)
x1<-gl(n=2,k=50)
data<-data.frame(y=y,x1=x1,species=phy$tip.label)
model<-lm(y~x1,data=data)

residuals(model)
points(fitted(model)~x1,data=data, col="red")
qqnorm(residuals(model))
plot(model)
insp.plot(model, data=data[ ,"x1"])

sim<-insp.sim(model)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

##Laura:
#Residuals x filter(o 0.55 a 0.85)
#Normalidade Ok
#Scale location linha decrescente bem sutil 
#Residuals x Factor Levels : Res= 1 e Fact. Levels=2
#
#

#QUEST?O 5
library(modelvalidation)
ch01<-read.csv("ch01.csv", dec=".")

fertil<-ch01[1:30,c(1,2)] 
X<-c(fertil$FERTIL)
Y<-c(fertil$YIELD)
X<-as.factor(X)
data<-data.frame(X,Y)
plot(Y~X, data=fertil)
modelo<-lm(Y~X, data=data)
residuals(modelo)
points(fitted(modelo)~X,data=data, col="red")
qqnorm(residuals(modelo))
plot(modelo)
insp.plot(modelo, data=data[ ,"X"])

sim<-insp.sim(modelo)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

