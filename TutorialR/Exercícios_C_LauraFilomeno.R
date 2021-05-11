###################################### ATIVIDADES 6, 7 E 8 ####################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
############################## EXERCICIOS SOBRE CARREGAR E SALVAR #############################
#
#
#1. Escolha um conjunto de dados de seu interesse e tente abri-lo no R como um data.frame
#
especies<-read.csv(file="spp_prot.csv", sep=",", dec=".") #escolhi dados que eu tinha salvo sobre especies de aves para protecao
especies
#
#
#2. Selecione parte desse data.frame e salve com outro nome.
#
especies_04 <- especies[especies$meta==0.4, ] #filtrei o dt frame pela coluna meta = 0.4
#
#
#3. Carregue esse data.frame que foi salvo na questão 2
#
especies_04 #deu certo, extraiu apenas os dados que tinham meta 0.4
#
#
#
############################## EXERCICIOS SOBRE INSTALAR PACOTES #############################
#
#
#1. Instale o pacote 'MuMIn' usando a função install.packages().
#
install.packages("MuMIn") #OK
#
#
#2. Instale e carrege o pacote 'ggplot2' e em seguida procure suas vignettes.
#
#
install.packages("ggplot2") #OK
library(ggplot2) #OK
vignette(topic='ggplot2-specs', package='ggplot2') #OK

#
#
#
################################ EXERCICIOS SOBRE GRÁFICOS ###################################
#
#
#
##13.3. Veja a ajuda em par() para plotar os dados acima com outros nomes para o eixo-x e o eixo-y #?par
#
boxplot(dados$y~dados$x, ylab="24Y", xlab = "24X") #OK!
#
#
#13.6
#Plote os dados1 abaixo com a cor azul, depois acrescente os pontos do segundo conjunto de dados (dados2) na cor verde
#
x1<-seq(1:100)
y1<-2*x + rnorm(n=100, mean=0, sd=mean(x)/2)
dados1<-data.frame(y=y1,x=x1) # os valores de y e x devem ser x1 e y1 aqui.
#
plot(y=dados1$y, x= dados1$x, col="blue") ##OK. Funcionou!
#
x2<-seq(1:100)
y2<-2+3*x + rnorm(n=100, mean=0, sd=mean(x)/2)
dados2<-data.frame(y=y2,x=x2)
#
plot(dados1$y~dados1$x, col="blue", xlab="eixo x", ylab="eixo y")+
  points(dados2$y ~ dados2$x, col="green") #OK
#
#
#Pesquise na função par() como plotar dois gráficos lado a lado e plote os dados acima dessa forma
#
par(mfrow=c(1,2)) #Não sei se esta correto, mas funcionou. Coloquei esta funcao e depois rodei as linhas 62 e as 68-70 novamente e deu certo.
#
#
#Descubra como mudar os limites de um gráfico e plote os dados acima com o limite y de -100 a 350 e x de -20 a 120
#Veja:?plot.default
#
plot(dados1$y~dados1$x, col="purple", xlab="x1", ylab="y1", xlim=c(-20, 120), ylim=c(-100, 350))+
plot(dados2$y~dados2$x, col="brown", xlab="x2", ylab="y2", xlim=c(-20, 120), ylim=c(-100, 350)) #OK
#
#