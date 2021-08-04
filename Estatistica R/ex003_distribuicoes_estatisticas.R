# Exercícios
# 1) Uma aranha predadora que vive em flores polinizadas por pequenas mariposas consome em
# média cinco mariposas por hora. Qual a probabilidade da aranha predar duas mariposas em uma
# hora selecionada aleatoriamente?

dpois(x = 2, lambda = 5)


################################################################################
# 2) Um pesquisador verificou que seis ovos de uma determinada ave são consumidos em média
# por hora em uma área de nidificação.
# a) Qual é a probabilidade de que três ovos sejam predados?
dpois(x = 3, lambda = 6)
# R:0.08422434

#   b) Qual é a probabilidade de que três ou menos ovos sejam predados?
ppois(3, lambda = 6)
# R: 0.1512039

################################################################################
# 3) Um trabalho recente verificou que 1% dos fígados de cobaias submetidas ao tratamento com
# álcool apresentavam danos teciduais. Encontre a probabilidade de que mais de um fígado em
# uma amostra aleatória de 30 fígados apresente danos teciduais usando:

# p = 0.01; n = 30;   k > 1
# a) Distribuição Binomial
help(Binomial)
pbinom(1, size = 30, prob = 0.01, lower.tail = FALSE)
# R -> 0.036148

# b) Distribuição Poisson
# lambda = n*p = 30 * 0.01 = 0.3
help("Poisson")
ppois(1, lambda = 0.3, lower.tail = F)
# R -> 0.03693631
################################################################################
# 4) Uma nova técnica de amostragem registra dez indivíduos de lagartos por hora em uma área
# florestal. Encontre a probabilidade de que quatro ou menos indivíduos sejam registrados em
# uma hora aleatória.

# lambda = 10; 
ppois(4, lambda = 10)
# R -> p = 0.02925269

################################################################################
# 5) Supondo que a probabilidade de um casal de ursos pandas ter filhotes albinos é de ¼. Se um
# casal produzir seis filhotes, qual é a probabilidade de que metade deles sejam albinos?

# p = 0.25; x = 3, size = 6
dbinom(3, size = 6, prob = 0.25)
# R -> p = 0.1318359

################################################################################
# 6) Se a probabilidade de um sapo capturar uma mosca em movimento é de 30%. Qual é a
# probabilidade de que em quatro tentativas ele capture no mínimo três moscas?

# p = 0.30; x = 4; k < 3
pbinom(3, size = 4, prob = 0.30, lower.tail = F)
# R -> p = 0.0081

################################################################################
# 7) Um pesquisador extrai 15 amostras de DNA aleatoriamente de um banco de dados que
# produz 85% de amostras aceitáveis. Qual é a probabilidade de que dez amostras extraídas sejam
# aceitáveis?

# size = 15; x = 10; prob = 0.85
dbinom(x = 10, size = 15, prob = 0.85)
 # = dbinom(x = 5, size = 15, prob = 0.15)
# R -> p = 0.0448953

################################################################################
# 8) Um população de crocodilos tem tamanho corporal médio de 400 cm e desvio padrão de 50
# cm. Qual a probabilidade de capturarmos um crocodilo dessa população com tamanho entre 390
# e 450 cm?

# mean = 400; sd = 50;

x = seq(300, 500, by = 0.01)
y = dnorm(x, mean = 400, sd = 50)
plot(x, y, type="l", lwd=2, col="red", xlab = "Comprimento", 
     ylab = "Probabilidae")
x1 = seq(390, 450, by = 0.1)
y1 = dnorm(x1, mean = 400, sd = 50)
polygon(c(390, x1 ,450), c(0,y1 ,0), col = "gray")
text(410, 0.004, "Prob = ?", font = 2, cex = 0.8)

pnorm(q = 450, mean = 400, sd = 50) - pnorm(q = 390, mean = 400, sd = 50)
# R -> p = 0.4206045


################################################################################
# 9) O comprimento do antebraço de uma espécie de morcego endêmica do Cerrado é de 4 cm
# com desvio padrão de 0,25 cm. A partir de qual comprimento os morcegos teriam os antebraços
# mais compridos nessa população?

# mean = 4, sd = 0.25.
help(qnorm)
qnorm(0.1, mean = 4, sd = 0.25, lower.tail = F)
# R -> intervalo associado a 10% =  4.320388

################################################################################
# 10) Suponha que o tempo necessário para um leão consumir sua presa siga uma distribuição
# normal de média de 8 minutos e desvio padrão de 2 minutos.
# (a) Qual é a probabilidade de que um leão consuma sua presa em menos de 5 minutos?
#   (b) E mais do que 9,5 minutos?
#   (c) E entre 7 e 10 minutos?

# mean = 8; sd = 2; 

# (a)
pnorm(5, mean = 8, sd = 2)
# p = 0.0668072

# (b)
pnorm(9.5, mean = 8, sd = 2, lower.tail = F)
# p = 0.2266274

# (c)
pnorm(10, mean = 10, sd = 2) - pnorm(q = 7, mean = 10, sd = 2)
# p = 0.4331928

################################################################################
# 11) A distribuição dos pesos de coelhos criados em uma granja pode muito bem ser
# representada por uma distribuição Normal, com média 5 kg e desvio padrão 0,9 kg. Um
# pesquisador comprará 5000 coelhos e pretende classificá-los de acordo com o peso do seguinte
# modo: 15% dos mais leves como pequenos, os 50% seguintes como médios, os 20% seguintes
# como grandes e os 15% mais pesados como extras. Quais os limites de peso para cada
# classificação?
#   Classificação do pesquisador

# 15%--------|--------50%--------|--------20%--------|--------15%
#           x1                   x2                  x3 

# Seja,
# x1 o valor do peso que separa os 15% mais leves dos demais,
# x2 o valor do peso que separa os 65% mais leves dos demais,
# x3 o valor do peso que separa os 85% mais leves dos demais.

x1 = qnorm(0.15, mean = 5, sd = 0.9)
# x1 = 4.06721

x2 = qnorm(0.65, mean = 5, sd = 0.9)
# x2 = 5.346788

x3 = qnorm(0.85, mean = 5, sd = 0.9)
# x3 = 5.93279

x = seq(3, 7, by = 0.01)
y = dnorm(x, mean = 5, sd = 0.9)
plot(x, y, type="l", lwd=3, col="red", xlab = "Peso", 
     ylab = "Probabilidae")

