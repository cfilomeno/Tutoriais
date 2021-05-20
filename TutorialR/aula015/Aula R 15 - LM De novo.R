#Entendendo um modelo linear
#de trás para frente

#Y = a + BX
#Yi = a + bXi + erro_i

#erro_i ~ N(0, var) (normalidade e homogeneidade da variância)

#O modelo vai estimar a e b, e sigma
#Parâmetros que minimizem o quadrado das diferenças
#(ordinary least squares, OLS) = Maximum Likelihood

#•	É linear porque os coeficientes (a,b,c,d…)
#são relacionados aditivamente:
#  •	Y = a + bx
#  •	Y =  a + bx1 + cx2
#  •	Y =  a + bx1 + cx2 + dx1*x2
#  •	Y =  a + bx + cx^2
#  •	Y =  a + bx + cx^2 + dx^3


#EXEMPLOS DE MODELOS LINEARES
#Simulando modelos lineares

#1. Preditora contínua
#1. Preditora contínua
#1. Preditora contínua
#Yi = a + bXi + erro_i

##Criando conjunto de dados
a<-2
b<-4
X<-seq(-1,1,length.out = 60)
ERROR<-rnorm(n=length(X),mean=0, sd=5)

Y <- a + b*X + ERROR
#Y = 2 + 4*X

plot(Y~X)

#LM
modelo1<-lm(Y~X)
summary(modelo1)
confint(modelo1)

modelo1$coefficients[[1]] # estimativa de a
modelo1$coefficients[[2]] # estimativa de b
confint(modelo1)

sigma(modelo1)


#2. Preditora categória
#2. Preditora categória
#2. Preditora categória
T1<-rep(x=2,times=15)
T2<-rep(x=4,times=15)
T3<-rep(x=8,times=15)
T4<-rep(x=2,times=15)


data.tratamento<-c(T1,T2,T3,T4)
nomes.tratamento<-gl(n=4,k=15,labels=c("T1","T2","T3","T4"))

data<-data.frame(coef=data.tratamento, species=nomes.tratamento)

ERROR<-rnorm(n=length(data.tratamento),mean=0, sd=3)
hist(ERROR)

Y<-data.tratamento + ERROR

data<-data.frame(Y=Y,tratamento=nomes.tratamento)
head(data)

plot(Y ~ tratamento, data=data)

modelo2<-lm(Y ~ tratamento, data)
summary(modelo2)

sm2<-summary(modelo2)
sm2$sigma


#T1<-rep(x=2,times=15)
#T2<-rep(x=4,times=15)
#T3<-rep(x=8,times=15)
#T4<-rep(x=2,times=15)
modelo2$coefficients[[1]] #valor de T1
modelo2$coefficients[[1]] + modelo2$coefficients[[2]] #valor de T2
modelo2$coefficients[[1]] + modelo2$coefficients[[3]] #valor de T3
modelo2$coefficients[[1]] + modelo2$coefficients[[4]] #valor de T4


#3. Preditora contínua e categórica
#3. Preditora contínua e categórica
#3. Preditora contínua e categórica
a<-2
b<-4
X<-seq(-1,1,length.out = 60)
T1<-rep(x=2,times=15)
T2<-rep(x=4,times=15)
T3<-rep(x=8,times=15)
T4<-rep(x=2,times=15)
data.tratamento<-c(T1,T2,T3,T4)
nomes.tratamento<-gl(n=4,k=15,labels=c("T1","T2","T3","T4"))
ERROR<-rnorm(n=length(X),mean=0,sd=3)

Y<-a + b*X + data.tratamento + ERROR
coplot(Y~X|nomes.tratamento, panel=panel.smooth)

modelo3<-lm(Y~X+nomes.tratamento)
modelo3.3<-lm(Y~nomes.tratamento+X)
summary(modelo3)
coplot(fitted(modelo3)~X|nomes.tratamento, panel=panel.smooth)

fitted(modelo3)

modelo3.1<-lm(Y~X)
modelo3.2<-lm(Y~nomes.tratamento)
modelo3.3<-lm(Y~1)

anova(modelo3.1,modelo3) #tratamento
anova(modelo3.2,modelo3) #X
anova(modelo3.3,modelo3.1) #X

anova(modelo3)

plot(Y~X)
points(fitted(modelo3)~X,col="red")



#4. Interação
#4. Interação
#4. Interação
#4. Interação
a<-2
b<-4
c<-3
X<-seq(-1,1,length.out = 60)
T1<-rep(x=2,times=15)
T2<-rep(x=4,times=15)
T3<-rep(x=8,times=15)
T4<-rep(x=2,times=15)
data.tratamento<-c(T1,T2,T3,T4)
nomes.tratamento<-gl(n=4,k=15,labels=c("T1","T2","T3","T4"))
ERROR<-rnorm(n=length(X),mean=0,sd=3)

Y<-a + b*X + data.tratamento + c*X*data.tratamento + ERROR
plot(Y~X)
coplot(Y~X|nomes.tratamento, panel=panel.smooth)

modelo4<-lm(Y~X+nomes.tratamento+X:nomes.tratamento)
modelo4<-lm(Y~X*nomes.tratamento)
summary(modelo4)

plot(Y~X)
points(fitted(modelo4)~X,col="red")
coplot(fitted(modelo4)~X|nomes.tratamento, panel=panel.smooth)


#Passos de um modelo linear
#1. Você propõe um modelo para explicar sua variável dependente.
#2. O modelo irá estimar os parâmetros (maximum likelihood)
#3. Validação do modelo (checar pressupostos)
#4. Seleção do Modelo


#Exercício:
#1. Simule um modelo linear:
#Com duas com duas variáveis
#categóricas e a interação entre elas.
#Faça seu modelo de forma que o
#coeficiente da interação seja zero.
#
#P1<-rep(x=5,times=10)
#P2<-rep(x=6,times=10)
#P3<-rep(x=7,times=10)
#P4<-rep(x=8,times=10)
#peso<-c(P1,P2,P3,P4)
#peso<-c("P1","P2","P3","P4")
#nomes.peso<-gl(n=4,k=10,labels=c("P1","P2","P3","P4"))

H1<-rep(x=1.5,times=10)
H2<-rep(x=1.6,times=10)
H3<-rep(x=1.7,times=10)
H4<-rep(x=1.8,times=10)
altura<-c(H1,H2,H3,H4)
#altura<-c("H1","H2","H3","H4")
nomes.altura<-gl(n=4,k=10,labels=c("H1","H2","H3","H4"))

#dataPH<-data.frame(faixaP=nomes.peso, faixaH=nomes.altura)
#dataPH

dataH<-data.frame(coef=altura, faixaH=nomes.altura)
dataH

ERROR<-rnorm(n=length(altura),mean=0, sd=2)
hist(ERROR)
Y<-altura + ERROR

dataH1<-data.frame(Y=Y, altura=nomes.altura)
head(dataH1)

plot(Y ~ altura, data=dataH1)

modeloH1<-lm(Y ~ altura, dataH1) 
summary(modeloH1)

smH1<-summary(modeloH1) ##O sigma foi parecido com o sd que estabeleci sm2$sigma = [1] 2.13847
smH1$sigma

#2. Faça a análise desses dados.

modeloH1$coefficients[[1]] #valor de H1 = 2.242038
modeloH1$coefficients[[1]] + modeloH1$coefficients[[2]] #valor de H2 = 1.844825
modeloH1$coefficients[[1]] + modeloH1$coefficients[[3]] #valor de H3 = 0.06544777
modeloH1$coefficients[[1]] + modeloH1$coefficients[[4]] #valor de H4 = 2.515064


#Exercício:
#1. Simule um modelo linear:
#Com duas com duas variáveis categóricas e a interação entre elas.
#Faça seu modelo de forma que o coeficiente da interação seja zero.
#
#
#
P1<-rep(x=0,times=10)
P2<-rep(x=0,times=10)
P3<-rep(x=0,times=10)
P4<-rep(x=0,times=10)
peso<-c("P1","P2","P3","P4")
nomes.peso<-gl(n=4,k=10,labels=c("P1","P2","P3","P4"))


dataP<-data.frame(coef=peso, faixaP=nomes.peso)
dataP

ERROR<-rnorm(n=length(peso),mean=0, sd=1)
hist(ERROR)
Y<-peso + ERROR

dataP1<-data.frame(Y=Y, peso=nomes.peso)
head(dataP1)

plot(Y ~ peso, data=dataP1)

modeloP1<-lm(Y ~ peso, dataP1) 
summary(modeloP1)

smP1<-summary(modeloP1) ##O sigma foi parecido com o sd que estabeleci sm2$sigma = [1] 2.13847
smP1$sigma

#Exercício:
#1. Simule um modelo linear:
#Com duas com duas variáveis categóricas e a interação entre elas.
#Faça seu modelo de forma que o coeficiente da interação seja zero

#4. Interação
a<-2
b<-4
c<-3
X<-seq(-2,2,length.out = 40)
Ti1<-rep(x=3,times=10)
Ti2<-rep(x=4,times=10)
Ti3<-rep(x=6,times=10)
Ti4<-rep(x=8,times=10)
data.ti<-c(Ti1,Ti2,Ti3,Ti4)
nomes.ti<-gl(n=4,k=10,labels=c("Ti1","Ti2","Ti3","Ti4"))
ERROR<-rnorm(n=length(X),mean=0,sd=2)

Y<-a + b*X + data.ti + c*X*data.ti + ERROR
plot(Y~X)
coplot(Y~X|nomes.ti, panel=panel.smooth)

modeloti<-lm(Y~X+nomes.ti+X:nomes.ti)
modeloti<-lm(Y~X*nomes.ti)
summary(modeloti)

plot(Y~X)
points(fitted(modeloti)~X,col="red")
coplot(fitted(modeloti)~X|nomes.ti, panel=panel.smooth)

#

P1<-rep(x=5,times=10)
P2<-rep(x=6,times=10)
P3<-rep(x=7,times=10)
P4<-rep(x=8,times=10)
peso<-c(P1,P2,P3,P4)
nomes.peso<-gl(n=4,k=10,labels=c("P1","P2","P3","P4"))

H1<-rep(x=1.5,times=10)
H2<-rep(x=1.6,times=10)
H3<-rep(x=1.7,times=10)
H4<-rep(x=1.8,times=10)
altura<-c(H1,H2,H3,H4)
nomes.altura<-gl(n=4,k=10,labels=c("H1","H2","H3","H4"))

dataPH<-data.frame(faixaP=nomes.peso, faixaH=nomes.altura)
dataPH



ERROR<-rnorm(n=length(altura),mean=0, sd=2)
hist(ERROR)
Y<-altura + ERROR

dataH1<-data.frame(Y=Y, altura=nomes.altura)
head(dataH1)

plot(Y ~ altura, data=dataH1)

modeloH1<-lm(Y ~ altura, dataH1) 
summary(modeloH1)

smH1<-summary(modeloH1) ##O sigma foi parecido com o sd que estabeleci sm2$sigma = [1] 2.13847
smH1$sigma
