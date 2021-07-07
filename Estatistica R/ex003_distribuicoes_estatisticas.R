# Exercícios
# 1) Uma aranha predadora que vive em flores polinizadas por pequenas mariposas consome em
# média cinco mariposas por hora. Qual a probabilidade da aranha predar duas mariposas em uma
# hora selecionada aleatoriamente?

dpois(x = 2, lambda = 5)


##############################################
# 2) Um pesquisador verificou que seis ovos de uma determinada ave são consumidos em média
# por hora em uma área de nidificação.
# a) Qual é a probabilidade de que três ovos sejam predados?
dpois(x = 3, lambda = 6)
# R:0.08422434

#   b) Qual é a probabilidade de que três ou menos ovos sejam predados?
ppois(3, lambda = 6)
# R: 0.1512039

##############################################
# 3) Um trabalho recente verificou que 1% dos fígados de cobaias submetidas ao tratamento com
# álcool apresentavam danos teciduais. Encontre a probabilidade de que mais de um fígado em
# uma amostra aleatória de 30 fígados apresente danos teciduais usando:

# p = 0.01; n = 30;   k > 1
# a) Distribuição Binomial
help(Binomial)
pbinom(1, size = 30, prob = 0.01, lower.tail = FALSE)
#

# b) Distribuição Poisson
# lambda = np = 30 * 0.01 = 0.3
help("Poisson")
ppois(1, lambda = 0.3, lower.tail = F)
# 
