#Falta de independência.
#Falta de independência.
#Falta de independência.
setwd(dir ="/home/laura/Documentos/Introdução ao R Studio")
library(nlme)
library(modelvalidation)

#Pressupostos
#-normalidade
#-homogeneidade
#-X fixo
#-independencia ##provavelmente o pressuposto mais importante de todos. Tem que pensar no desenho experimental. Mas não necessariamente vai ser aparecer no plot de validacao
## dados independentes significa que sua unidade amostral não está correlacionada com sua outra unidade amostral por proximidade temporal, espacial filogenticamente, etc.
## as vezes tem problemas de dependência de unidade amostral pode ser causados por exemplo por proximidade filogenética, temporal, espacial, repetição de amostras no mesmo local
##

m<-matrix(0,ncol=5,nrow=5)
colnames(m)<-c("Y1","Y2","Y3","Y4","Y5")
rownames(m)<-colnames(m)
diag(m)<-1
m

#####################################################
#Falta de Independência 1.
#####################################################
#Relação entre o contraste
#das manchas de um camarão, tamanho
#e número de microhabitats usados
traits <-read.table("traits.txt",h=T,row.names=1)
names(traits)


plot(traits$adj~traits$habitat_index)
plot(traits$adj~traits$size)

traits$habitat_index.c<-scale(traits$habitat_index,scale=F)
traits$size.c<-scale(traits$size,scale=F)

coplot(adj~habitat_index.c|size.c, data=traits,
       panel=panel.smooth)

#Modelo Linear
m1<-lm(adj  ~ habitat_index.c*size.c, data=traits)
insp.plot(m1)
sim<-insp.sim(model=m1,
              nsim=19,
              data=m1$model)
plots.insp.sim(insp.sim=sim,
               resid=lapply(sim,extract.resid),
               fitted=lapply(sim,fitted),
               data=lapply(sim,extract.data),
               ask=FALSE)

#aparentemente o modelo está bom.
#no entanto, estamos comparando dados
#de espécies. Por tanto há uma alta
#probabilidade de estarmos violando
#o pressuposto da independência

#carregar a árvore
library(ape)
phy<-read.tree("tree.tree")
dev.off()
plot(phy, cex=0.5)
is.ultrametric(phy)

#checar se árvore e caráteres estão na mesma ordem
head(traits)
rownames(traits)==phy$tip.label

#o LM considera que os erros de Yi não estão
#associados. Ou seja, ao saber do erro de Y1,
#não há nenhuma informação sobre o Y2 ou qualquer
#outro. A proximidade filogenética pode causar
#uma associação desses erros.
#Com o GLS é possível assumir uma certa correlação
#desses erros, que podem assumir as mais
#variadas formas.
?corClasses
?corPagel
m2<-gls(adj~habitat_index.c+size.c+habitat_index.c:size.c,
        data=traits,
        correlation=corPagel(value=1,phy=phy))

#corPagel é uma de várias estruturas
#de correlação filogenéticas (modelos de
#evolução). Um parâmetro, lambda, dá o
#grau de sinal filogenético (0-1). O
#valor de lambda é estimado com base
#nos dados.
summary(m2)

m1<-gls(adj~habitat_index.c*size.c,data=traits,
        method = "REML")

m2<-gls(adj~habitat_index.c*size.c,data=traits,
        correlation=corPagel(value=1,phy=phy),
        method = "REML")

#Comparar os modelos com e sem a estrutura de correlacao:
library(MuMIn)
AICc(m1,m2)
anova(m1,m2)

#Um deltaAIC de ca. 10 pontos significa
#que o modelo m2 é um ajuste muito melhor
#aos dados do que o m1.

#agora a validação do modelo
insp.plot(m2, data = traits[,c("habitat_index.c","size.c")])

#Nao tenho certeza se a simulacao funciona
#adequadamente para correlacoes:
sim.gls<-insp.sim(model=m2,
              nsim=19,
              data=traits[,c("habitat_index.c","size.c")])
plots.insp.sim(insp.sim=sim.gls$sim,
               resid=lapply(sim.gls$sim,extract.resid),
               fitted=lapply(sim.gls$sim,fitted),
               data=sim.gls$sim.data,
               pred=c("habitat_index.c","size.c"),
               ask=FALSE)


#Comparando o modelo cheio com o modelo sem
#Interação.
m2.1<-gls(adj~habitat_index.c*size.c,data=traits,
        correlation=corPagel(value=1,phy=phy),
        method="ML")
m2.2<-gls(adj ~ habitat_index.c + size.c,data=traits,
        correlation=corPagel(value=1,phy=phy),
        method="ML")
anova(m2.1,m2.2)

#Ou:
drop1(m2.1, test="Chisq")

#A conclusão é que a interação é importante.
#Como são variáveis contínuas seria
#possível usar a tabela com os valores de t também:
m2.1<-gls(adj~habitat_index.c*size.c,data=traits,
          correlation=corPagel(value=1,phy=phy),
          method="REML")
summary(m2.1) #Chegaríamos a mesma conclusão


min(traits$size.c)
max(traits$size.c)
new.data<-data.frame(habitat_index.c=rep(c(-1,0,1,2,3),3),
                     size.c=rep(c(-0.3, 0, 0.3),each=5))
pred<-predict(m2.1, newdata = new.data)

coplot(pred~habitat_index.c|as.factor(size.c),
       panel = function(x, y, ...) {
               tmp <- lm(y ~ x, na.action = na.omit)
               abline(tmp, col="red")
               points(x, y) }, data=new.data)



#####################################################
#Falta de Independência 2.
#####################################################
#Zuur et al 2009, pp161:
#The response variable is a boreal forest index
#and is defined as the number of species that belong
#to a set of boreal species divided by the total
#number of species at a site. Several
#remotely sensed variables derived from the LANDSAT 5
#satellite images were used
#as explanatory variables: (i) the normalised
#difference vegetation index, (ii) temperature,
#(iii) an index of wetness, and (iv) an index of greenness.
#A data exploration indicated high collinearity between
#these variables, and we therefore only used wetness.
#In addition to these variables, we also know the
#latitude (X) and longitude (Y) of each site.

#Boreality was transformed using the following transformation:
Boreality<-read.table("Boreality.txt", header=TRUE)
Boreality$Bor<-sqrt(1000*(Boreality$nBor+1)/(Boreality$nTot))
names(Boreality)
head(Boreality)

dev.off()
plot(Boreality$Bor~Boreality$Wet)

B.lm<-lm(Bor~Wet,data=Boreality)
summary(B.lm)

library(modelvalidation)
insp.plot(B.lm, data=Boreality[,c("Wet","x","y")])

#Visualizar os resíduos de acordo com
#Lat e Long:
E<-rstandard(B.lm) ##extrair residuos padronizados do modelo linear simples
library(sp)
library(gstat)

mydata<-data.frame(E, Boreality$x, Boreality$y) #x latidude, y longitude
coordinates(mydata)<-c("Boreality.x","Boreality.y") #dizer pro R transformar os registros de y e x com as coordenadas geofráficas de 
bubble(mydata,"E",col=c("black","grey"),
       main="Residuals",xlab="X-coordinates",
       ylab="Y-coordinates")

##ALEM DE VIZUALIZAR O PLOT PODEMOS TBM USAR OS VARIOGRAMAS QUE MEDEM O GRAU DE SIMILARIDADE. ENTRE OS RESIDUOS CALCULANDO A DISTANCIA ENTRE ELES
#Variograma (Zuur et al. 2009)
#This is a function that measures the spatial
#dependence between two sites with coordinates
#x1 and x2. If these two sites are located
#close to each other, then you would expect the
#values of the variables of interest
#(residuals in this case) are similar.
#A low value of γ (x1, x2) indicates that this is
#indeed the case (dependence), whereas
#a large value indicates independence. Spatial
#statistics tends to be rather complicated
#and intimidating. Zuur et al. (2007)
#discussed various aspects like ergodicity,
#stationarity, and weak stationarity. Without
#going into detail here, weak stationarity
#leads to the following variogram.
Vario1 = variogram(E ~ 1, mydata)
plot(Vario1)

#Note that this variogram assumes isotropy; the
#strength of the spatial correlation
#is the same in each direction. We can verify
#this by making experimental variograms
#in multiple directions; see Fig. 7.3B.
#It seems that isotropy is a reasonable assumption
#as the strength, and pattern, of the spatial
#correlation seems to be broadly the
#same in all four directions. The code to produce
#this graph is similar as above, except
#that the argument alpha = c(0, 45, 90, 135)
#is added to the variogram function.
Vario2 <- variogram(E ~ 1, mydata,
                    alpha = c(0, 45, 90,135) )
plot(Vario2)


B1.gls<-gls(Bor ~ Wet, data = Boreality)

var1<-Variogram(B1.gls,form=~x+y,robust=TRUE,
                resType="normalized", maxDist = 2000)
#quando ha' independencia espera-se uma linha reta
plot(var1,smooth=T, ylim=c(0,1.2))
#A correlacao espacial desaparece a uma dist ~ 1000 

#Selecionar a melhor estrutura
#nugget valor de gamma (no variograma) quando h = 0

#Estruturas da correlação
?corClasses

#Não se preocupe em encontrar a estrutura perfeita.
#uma que seja boa o sufuciente.
#Zuur et a;. (2009): Each of these options implies a specific
#mathematical structure for the function
#h(), and a good overview is given in Schabenberger and Pierce (2002).
B1A<-gls(Bor ~ Wet,correlation=corSpher(form = ~x+y, nugget=T),data=Boreality)
B1B<-gls(Bor ~ Wet,correlation=corLin(form=~x+y,nugget=T),data=Boreality)
B1C<-gls(Bor ~ Wet,correlation=corRatio(form=~x+y,nugget=T),data=Boreality)
B1D<-gls(Bor ~ Wet,correlation=corGaus(form=~x+y,nugget=T),data=Boreality)
B1E<-gls(Bor ~ Wet,correlation=corExp(form=~x+y,nugget=T),data=Boreality)
B1A.1<-gls(Bor ~ Wet,correlation=corSpher(form=~x+y,nugget=F),data=Boreality)
B1B.1<-gls(Bor ~ Wet,correlation=corLin(form=~x+y,nugget=F),data=Boreality)
B1C.1<-gls(Bor ~ Wet,correlation=corRatio(form=~x+y,nugget=F),data=Boreality)
B1D.1<-gls(Bor ~ Wet,correlation=corGaus(form=~x+y,nugget=F),data=Boreality)
B1E.1<-gls(Bor ~ Wet,correlation=corExp(form=~x+y,nugget=F),data=Boreality)
#se der erro de convergencia pode-se tentar mais iteracoes
#ou e/ou mudar o algoritmo usado
?glsControl
control<-glsControl(opt="optim")
# B1B<-gls(f1,correlation=corLin(form=~x+y,nugget=T), ##
#          control=control, data=Boreality)

B1B<-gls(Bor ~ Wet,correlation=corLin(form=~x+y,nugget=T), ##
         control=control, data=Boreality)

library(MuMIn)
AICc(B1.gls,B1A,B1B,B1C,B1D,B1E,
     B1A.1,B1B.1,B1C.1,B1D.1,B1E.1)

#B1E é o melhor modelo
#Validacao
#nao ha' mais sinal de correlacao nos residuos
Vario2E <- Variogram(B1E, form =~ x + y,
                     robust =  TRUE, maxDist = 2000,
                     resType = "normalized")
plot(Vario2E, smooth = TRUE, ylim=c(0,1.2))

summary(B1E)
names(Boreality)
insp.plot(B1E, data=Boreality[,c("Wet","x","y")])

#Agora a estrutura fixa:
summary(B1E)

#Obs. Poderia continuar a o processo
#selecionando uma estrutura da variância,
#como na Aula 18


#ou
B1E.1<-gls(Bor ~ Wet,
           correlation=corExp(form=~x+y,nugget=T),
           data=Boreality,
           method="ML")
B1E.2<-gls(Bor ~ 1,correlation=corExp(form=~x+y,nugget=T),
           data=Boreality,
           method="ML")
anova(B1E.1,B1E.2)

summary(B1E)



#Exercício 1
#Exercício 1
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

#Analise y em função de var1 e var2 do data.frame dados

dados$var1.c<-scale(dados$var1, scale = F)
dados$var2.c<-scale(dados$var2, scale = F)

coplot(y~var1.c|var2.c, data=dados,
       panel=panel.smooth)


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

#Ou usando variograma
#Deu errado
#var.ModL1<-variogram(resids~1,data=dados,alpha=c(0,45,90,135))
#plot(var.ModL1)

#Exercício 2
#Exercício 2
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

kills$log.TOT.N<-log(kills$TOT.N)
kills$sqrtWAT.RES<-sqrt(kills$WAT.RES)
kills$sqrtURBAN<-sqrt(kills$URBAN)
kills$sqrtSHRUB<-sqrt(kills$SHRUB)
kills$sqrtPOLIC<-sqrt(kills$POLIC)


#Novamente a análise dos atropelamentos em Portugal
#Partindo desse modelo (ver Aula 17 e exercício da aula 14),
#considere uma possível
#correlação espacial entre os pontos de amostragem.
model2<-lm(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
           +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
             D.WAT.COUR+D.PARK,
           data=kills)

#As coordenadas do ponto de amostragem
#estão nas colunas X e Y
kills$X
kills$Y

dev.off()
plot(kills$kills$X~kills$Y)

K.lm<-lm(X~Y, data=kills)
summary(K.lm)

library(modelvalidation)
insp.plot(B.lm, data=Boreality[,c("Wet","x","y")])


Res<-rstandard(K.lm)

mydata1<-data.frame(Res, kills$X, kills$Y)
coordinates(mydata1)<-c("kills.X","kills.Y")
bubble(mydata1, "Res",col = c("pink","blue"), main="Residuals",xlab="X-coordinates",ylab="Y-coordinates")

Vario1l = variogram(Res ~ 1, mydata1)
plot(Vario1l)


Vario2l <- variogram(Res ~ 1, mydata1,
                    alpha = c(0, 45, 90, 135) )
plot(Vario2l)

K1.gls<-gls(log.TOT.N ~ OPEN.L+OLIVE+MONT.S+sqrtPOLIC+sqrtSHRUB
            +sqrtWAT.RES+L.WAT.C+L.D.ROAD+L.P.ROAD+D.WAT.RES+
                    D.WAT.COUR+D.PARK,
            data=kills)


var1l<-Variogram(K1.gls,form=~X+Y,robust=TRUE,
                resType="normalized", maxDist = 2000)
plot(var1l,smooth=T, ylim=c(0,1.2))

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

library(MuMIn)
AICc(K1.gls,K1A,K1B,K1C,K1D,K1E,
     K1A.1,K1B.1,K1C.1,K1D.1,K1E.1)

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


VarioK1E.1 <- Variogram(K1E.1, form =~ X + Y,
                     robust =  TRUE, maxDist = 2000,
                     resType = "normalized")
plot(VarioK1E.1, smooth = TRUE, ylim=c(0,2))

names(kills)
insp.plot(K1E.1, data=kills[,c("log.TOT.N","X","Y")])

summary(K1E.1)


#INFO EXTRA
#NUGGET EFFECT
#In practice, when the sampling design specifies
#a single measurement at each of 𝑛 distinct locations
#the nugget effect has a dual interpretation as
#either measurement error or spatial variation
#on a scale smaller than the smallest distance
#between any two points in the sample design,
#or any combination of these two effects.
#These two components of the nugget effect
#can only be separately identified if the
#measurement error variance is either known,
#or can be estimated directly using repeated
#measurements taken at coincident locations.
#(p.57) Diggle, P. J., and P. J. Ribeiro.
#"Model-based Geostatistics". Springer
#Series in Statistics. Springer, 2007.