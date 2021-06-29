# Exercícios
# 1) Carregue o pacote lattice e o conjunto de dados quakes, data(quakes), plote os dados
# utilizando a função xyplot().

library(lattice)
data(quakes)
View(quakes)

Depth <- equal.count(quakes$depth, number=8, overlap=.1)
xyplot(lat ~ long | Depth, data = quakes)
update(trellis.last.object(),
       strip = strip.custom(strip.names = TRUE, strip.levels = TRUE),
       par.strip.text = list(cex = 0.75),
       aspect = "iso")

# 2) Carregue o conjunto de dados melanoma e utilizando a função plot() faça um gráfico
# com o tamanho dos pontos 24, legenda do eixo x “Frequência”, legenda do eixo y “Anos” e sem
# as molduras da direita e superior.

data(melanoma)
View(melanoma)
plot(melanoma$year, melanoma$incidence,
     data = melanoma, xlab = "Anos", ylab = "Frequência", bty = "L")

# 3) Crie dois conjuntos de dados quaisquer e combinando as funções abline() e lm()
# calcule uma regressão linear simples e ajuste uma reta que indique o modelo.
# 21

c1 = abline(a = 1, b = 2, col = 2)
plot(c1)




# 4) Crie um conjunto aleatório de números com distribuição normal e dê nome a este objeto.
# Utilize a função hist() para plotar um gráfico com as barras em cor cinza.
# a) Utilize a função points() para criar um ponto em formato de círculo no eixo x no lugar da
# média.
# b) Agora crie dois pontos verdes em formato de triângulo verde invertido no lugar dos 2 quantis.
# c) Crie uma legenda no canto superior esquerdo com os símbolos utilizados (triângulo e
#                                                                            círculo), com os significado (média e quantil).
# d) Pinte de vermelho e verde os símbolos.


conj1 = rnorm(30, mean = 3, sd = 1)
hist(conj1, col="gray60")
points(3,0, col = "red", pch = 16)

