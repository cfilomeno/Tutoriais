############################################## ATIVIDADES 19 #############################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################## EXERCICIOS SOBRE DEPENDÊNCIA ####################################
#
#
#Exercício 1
#https://beckmw.wordpress.com/2013/01/07/breaking-the-rules-with-spatial-correlation/
library(sp)
library(gstat)
library(nlme)
set.seed(2)
samp.sz<-400
lat<-runif(samp.sz,-4,4)
lon<-runif(samp.sz,-4,4)
exp1<-rnorm(samp.sz)
exp2<-rnorm(samp.sz)
resp<-1+4*exp1-3*exp2-2*lat+rnorm(samp.sz)

dados<-data.frame(y=resp,var1=exp1,var2=exp2,
                  lon=lon,lat=lat)

plot(dados$y~dados$var1)
plot(dados$y~dados$var2)
#
##Analise y em função de var1 e var2 do data.frame dados
#
#
#Maneira 1
dados$var1.c<-scale(dados$var1, scale = F)
dados$var2.c<-scale(dados$var2, scale = F)
#
coplot(y~var1.c|var2.c, data=dados,
       panel=panel.smooth)
#
ModL1<-lm(y~var1*var2, data=dados)
insp.plot(ModL1)
sim<-insp.sim(model=ModL1,
              nsim=19,
              data=ModL1$model)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)
#
#Maneira 2
#Abaixo fiz o mesmo exercicio, de forma diferente, conforme a proposta do site do link acima, sem "scale"que foi usado na aula.
#
plot(data.frame(dados$y,dados$var1,dados$var2))
cor(data.frame(dados$y,dados$var1,dados$var2))
#
mod<-lm(y~var1+var2, data=dados)
summary(mod)
#
insp.plot(mod)
sim<-insp.sim(model=mod,
              nsim=19,
              data=mod$model)
#
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)
#
dat<-data.frame(lon,lat,resids=resid(mod))
coordinates(dat)<-c('lon','lat')
bubble(dat,zcol='resids')
#
#
#Exercício 2
##############
#            #
# Roadkills  #
#            #
##############
#São dados de atropelamentos de anfíbios em uma rodovia em Portugal
#A variável resposta é o log do número de atropelamentos (log.TOT.N). O pesquisador
#quer saber o que influencia na quantidade de anfíbios atropelados.
#Há diversas variáveis preditoras.
kills<-read.table("RoadKills.txt", header=TRUE)
head(kills)
#
kills$log.TOT.N<-log(kills$TOT.N)
kills$sqrtWAT.RES<-sqrt(kills$WAT.RES)
kills$sqrtURBAN<-sqrt(kills$URBAN)
kills$sqrtSHRUB<-sqrt(kills$SHRUB)
kills$sqrtPOLIC<-sqrt(kills$POLIC)
#
#Novamente a análise dos atropelamentos em Portugal
#Partindo desse modelo (ver Aula 17 e exercício da aula 14),
#considere uma possível
#correlação espacial entre os pontos de amostragem.
model2<-lm(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,
           data=kills)
#
#As coordenadas do ponto de amostragem
#estão nas colunas X e Y
kills$X
kills$Y
#
#
dev.off()
plot(kills$kills$X~kills$Y)
#
K.lm<-lm(X~Y, data=kills)
summary(K.lm)
#
library(modelvalidation)
insp.plot(B.lm, data=Boreality[,c("Wet","x","y")])
#
#
Res<-rstandard(K.lm)
#
mydata1<-data.frame(Res, kills$X, kills$Y)
coordinates(mydata1)<-c("kills.X","kills.Y")
bubble(mydata1, "Res",col = c("pink","blue"), main="Residuals",xlab="X-coordinates",ylab="Y-coordinates")
#
Vario1l = variogram(Res ~ 1, mydata1)
plot(Vario1l)
#
#
Vario2l <- variogram(Res ~ 1, mydata1,
                     alpha = c(0, 45, 90, 135) )
plot(Vario2l)
#
K1.gls<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
            +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
              D.WAT.COUR+D.PARK,
            data=kills)
#
#
var1l<-Variogram(K1.gls,form=~X+Y,robust=TRUE,
                 resType="normalized", maxDist = 2000)
plot(var1l,smooth=T, ylim=c(0,1.2))
#
K1A<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
         +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
           D.WAT.COUR+D.PARK,correlation=corSpher(form = ~X+Y, nugget=T),data=kills)
K1B<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
         +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
           D.WAT.COUR+D.PARK,correlation=corLin(form=~X+Y,nugget=T),data=kills)
K1C<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
         +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
           D.WAT.COUR+D.PARK,correlation=corRatio(form=~X+Y,nugget=T),data=kills)
K1D<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
         +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
           D.WAT.COUR+D.PARK,correlation=corGaus(form=~X+Y,nugget=T),data=kills)
K1E<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
         +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
           D.WAT.COUR+D.PARK,correlation=corExp(form=~X+Y,nugget=T),data=kills)
K1A.1<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,correlation=corSpher(form=~X+Y,nugget=F),data=kills)
K1B.1<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,correlation=corLin(form=~X+Y,nugget=F),data=kills)
K1C.1<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,correlation=corRatio(form=~X+Y,nugget=F),data=kills)
K1D.1<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,correlation=corGaus(form=~X+Y,nugget=F),data=kills)
K1E.1<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,correlation=corExp(form=~X+Y,nugget=F),data=kills)
#
library(MuMIn)
AICc(K1.gls,K1A,K1B,K1C,K1D,K1E,
     K1A.1,K1B.1,K1C.1,K1D.1,K1E.1)
#
# df     AICc
# K1.gls 14 216.9790
# K1A    16 213.6685
# K1B    16 212.2584
# K1C    16 213.8379
# K1D    16 213.5329
# K1E    16 214.6784
# K1A.1  15 213.1944
# K1B.1  15 212.1243
# K1C.1  15 213.3852
# K1D.1  15 214.7931
# K1E.1  15 211.9092 #Escolhi este, que tem o menor valor
#
#
VarioK1E.1 <- Variogram(K1E.1, form =~ X + Y,
                        robust =  TRUE, maxDist = 2000,
                        resType = "normalized")
plot(VarioK1E.1, smooth = TRUE, ylim=c(0,2))
#
names(kills)
insp.plot(K1E.1, data=kills[,c("log.TOT.N","X","Y")])
#
summary(K1E.1)
#