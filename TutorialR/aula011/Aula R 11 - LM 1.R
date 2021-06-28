#Nas aulas de estatística vocês provavelmente
#aprenderam sobre ANOVA, ANCOVA, ANOVA two-way (3-way, etc.),
#teste-t, regressão linear e regressão múltipla.

#Esses testes foram desenvolvidos de forma
#independente. No entanto, com o avanço
#da estatística se percebeu que todos
#eles na verdade são casos específicos
#de um modelo geral: o Modelo Linear Geral.

#Portanto, vocês podem esquecer todas
#as siglas acima. Daqui por diante
#vocês irão analisar seus dados a partir de 
#modelos

#O Modelo Linear Geral (LM) na verdade é
#também um caso específico dos
#Modelos Lineares Generalizados (GLM), que por
#sua vez são um caso específico de 
#Modelos Lineares Mistos Generalizados
#(GLMM; também chamados de multi-níveis ou
#hierárquicos).

#Nessa disciplina vamos começar pelo
#LM e vamos passar pelos modelos mistos,
#Porém, a ideia é que vocês tenham
#uma base para poder depois avançar
#para esses modelos mais complexos.

#Como o nome diz um Modelo Linear
#é um modelo para explicar a 
#variação dos dados.

#Portanto, a primeira parte, e a
#mais importante delas, é conhecer os
#seus dados. No caso de experimentos,
#o mais importante é um desenho experimental
#adequado. Não há modelo linear que consiga
#consertar uma falha em um desenho experimental.

#Os Modelos Lineares são univariados, portanto
#há apenas uma variável resposta (dependente).
#Outros modelos lineares podem ser multivariados,
#mas os LMs são sempre univariados. Além disso,
# a variável resposta é sempre contínua,
#nunca categórica (fatores no R). No entanto,
#as variáveis preditoras (independentes), podem
#ser de qualquer tipo: contínua, categória ou
#ordenada

#A fórmula do R usa o ~ para indicar 'em função de'.
#Exemplos de um modelos lineares seriam:

#1. diametro_tronco ~ idade_arvore
#O diâmetro do tronco em função da idade da árvore (contínua)

#2. massa ~ sexo
#A massa do organismo em função do sexo (macho ou fêmea, portanto
#categórica).

#3. massa ~ sexo + tipo_alimentacao
#A massa do organismo em função do sexo e do tipo de alimento (
#rico em proteínas ou pobre em proteínas). O '+' é usado
#quando há mais variáveis que podem afetar a massa do indivíduo

#4. massa ~ sexo + tipo_alimentacao + sexo * tipo_alimentacao

#A massa do organismo em função do sexo, do tipo de alimento e
#a interação entre as variáveis, indicada pelo '*'. Nesse
#caso o modelo pode indicar se a depender do tipo de alimentacao
#a difença entre machos e fêmeas tem magnitudes diferentes.
#por exemplo, em dietas com poucas proteínas machos e fêmeas
#tem pesos semelhantes, mas quando a dieta é rica em 
#proteínas machos tem mais massa do que fêmeas.
#Obs: o modelo acima também pode ser escrito no R como:
#massa ~ sexo * tipo_alimentacao.
#Nesse caso o R automaticamente sempre expande a fórmula
#para conter 'sexo + tipo_alimentacao'.

#Chega de blá, blá, blá e vamos a um exemplo:


#Vamos carregar os dados trees, que já
#vem com o R
data(trees)
?trees
head(trees)
#Há medida de diâmetro (Girth), altura (Height) e 
#volume (Volume) de árvores

#Suponha que você queira saber se é
#possível estimar a altura da árvore pelo
#diâmetro:

#A primeira coisa é sempre visualizar os dados:
head(trees)
plot(Height ~ Girth, data = trees)
#o data = trees siginifica que a função plot irá
#procurar as colunas Height e Girth no
#data.frame trees, portanto eu não preciso usar o $

#Veja que os dados sugerem maior
#altura para maiores diâmetros

#Agora o modelo linear
#a função é a lm. Veja:
?lm

#O importante é o argumento formula e o 
#argumento data. Funciona do mesmo jeito que
#na função plot:
modelo_trees <- lm(formula = Height ~ Girth, data = trees)

#Veja agora
modelo_trees

#Há um valor para um intercept e para Girth.
#Isso representa os coeficientes de um
#modelo da seguinte forma:

# y = a + b*x

#No nosso caso y é o valor predito de altura,
#a é o intercepto e b é o coeficiente
#associado ao valor de diâmetro.

#Portanto, para um valor de diâmetro = 15 in, o
#valor esperado de altura é:
y = 62.031 + 1.054 * 15
y
#77.841 ft. ##ft=medida em pés

#Podemos observar como isso aparece
#graficamente:
plot(Height ~ Girth, data = trees)
abline(modelo_trees, col="red")

#Um aspecto
#fundamental de qualquer inferência
#estatística é a precisão da estimativa.
#podemos observar isso usando a função
#summary
summary(modelo_trees)

#Veja que agora associado as estimaticas
#dos coeficientes aparece o erro padrão
#(Std. Error). Que é uma medida
#da precisão da estimativa, ou do erro
#associado a ela.

#Portanto, para cada coeficiente
#há um erro padrão:
#intercept = 62.0313 +- 4.3833
#Girth = 1.0544 +- 0.3222

#Um dos pressupostos de um ML
#é que os erros associados aos
#coeficientes seguem uma distribuição
#normal (Gaussiana). A partir disso você pode
#calcular um intervalo de confiança
#onde você espera, com 95% de probabilidade,
#que os valores de cada coeficiente se
#encontrem:
confint(modelo_trees)

#Disso deriva o valor de p.
#o p associado ao Girth é a probabilidade de que,
#assumindo que o coeficiente associado a Girth seja zero,
#encontrar o valor de coeficiente = 1.0544.
#Quando o coeficiente é zero significa que
#o diâmetro não tem nenhum valor preditivo
#para a altura da árvore (= hipótese nula).

#Aí vem uma das críticas ao se usar apenas o p,
#pois:
#1. Não leva em consideração a magnitude. Você pode
#ter um efeito com p < 0.05, mas de magnitude muito
#pequena, ou um p = 0.06, mas que o intervalo de confiança
#indique a possibilidade de um efeito muito grande.

#Por exemplo, imagine um coeficiente associado ao
#diâmetro que tivesse um intervalo de confiança de:
# 0.01 a 0.05.
#ou seja, para cada aumento de 1 polegada (inch) em diâmetro,
#você teria um aumento de altura entre 0.01-0.05 pés(feet).
#Bem pouquinho, mas você tem > 95% de certeza que o efeito
#não é zero

#Por outro lado, você poderia ter encontrado:
# -0.01 a 3.00
#Nesse caso, você tem menos de 95% de certeza de que
#não cruza o zero, pois o intervalo de confiança 
#passa por ele. Por outro lado, há uma chance bem
#maior do efeito do diâmetro na altura ser grande.


#EXERCICIOS
#1. Faça um plot do log do Volume em função do log do diâmetro. Dica: crie primeiro
#uma nova coluna com o log do volume e outra com o log do diâmetro (função log)
#
#
head(trees)
trees[ ,1-3] #conferi e filtrei as colunas
log(trees[ ,1-3]) #calculei o log das colunas
plot(log(Volume) ~ log(Girth), data = trees) #plotei a funcao
#
trees$logvol <- log(trees$Volume)
trees$logdiam <- log(trees$Girth)
plot(logvol~logdiam, data = trees)
#
#
#2. Faça um modelo linear do log do Volume em função do log do diâmetro
#
#
ex2 <- lm(formula = log(Volume) ~ log(Girth), data = trees)
ex2 #nome abreviado do exercicio 2
#
modelo <- lm(logvol~logdiam, data = trees)
#
#
#3. Escreva a equação do seu modelo com base no summary do seu modelo
#
#
summary(ex2)
#Intercept = -2.35332   +/- 0.23066 (SD)
#log(Girth) =   2.19997 +/-   0.08983 (SD)
#
summary(modelo)
# y = -2.35332 + 2.19997x

#4. Calcule o intervalo de confiança para o coeficiente associado log do diâmetro
#
#
confint(ex2) # Resposta abaixo
#                2.5 %    97.5 %
#Intercept   -2.825083 -1.881566
#log(Girth)   2.016238  2.383702
#
confint(modelo)
#
#
#5. Observe o R^2 e interprete o seu valor (veja em summary)
#
#
#Multiple R-squared:  0.9539,	Adjusted R-squared:  0.9523 
#


#
#6. Faça um plot do log da distancia de frenagem (dist) em função
#do log da velocidade do carro (speed) dos dados contidos em  cars
data(cars)
?cars
#
cars[ ,1-2] #conferi e filtrei as colunas 1 e 2
log(cars[ ,1-2]) #calculei o log das colunas 1 e 2
plot(log(dist) ~ log(speed), data = cars) #plotei a funcao
#


cars$logdist <- log(cars$dist)
cars$logspeed <- log(cars$speed)
plot(logdist~logspeed, data = cars)

#
#7. Faça um modelo linear para esse dados.
#
#
ex7 <- lm(formula = log(dist) ~ log(speed), data = cars)
ex7
#
#

modelo7 <- lm(logdist ~ logspeed, data = cars)
abline(modelo7, col = "red")

#
#8. Escreva a equação  com base no summary do seu modelo
#
#
summary(ex7)
#Intercept =    -0.7297    +/-  0.3758 
#log(speed) =    1.6024    +/- 0.1395
#

summary(modelo7)
# y = -0.7297 + 1.6024x

#9. Calcule o intervalo de confiança para
#o coeficiente associado ao log da velocidade
#
#
#
confint(ex2)
#                2.5 %    97.5 %
#Intercept   -2.825083 -1.881566
#log(Girth)   2.016238  2.383702
#
#
confint(modelo7)

#                  2.5 %     97.5 %
#     (Intercept) -1.485357 0.02601964
#     logspeed     1.321832 1.88295038
#
#10. Imagine um estudo controlado, duplo cego, para duas drogas para combater a COVID-19.
#O resultado indica que em relação ao grupo controle (sem medicação) a primeira droga tem uma taxa de internação
#de 0.95 (se 100 pacientes foram internados no controle, 95 foram no tratamento com o primeiro medicamento),
#com um intervalo de confiança de 0.94 a 0.96, com um p=0.01. O resultado da segunda droga indica uma
#taxa de internação de 0.60, com um intervalo de confiança de 0.30 a 1.01, com um p = 0.08. Se você estivesse com 
#COVID, com base apenas nessas informações, quais das duas drogas você tomaria? #Justifique.
#
#
#O medicamento 1, porque apesar de a taxa de internação ser maior do que a do medicamento 2, 
#o intervalo de confiança é mais preciso e o valor de p é menor. 
#
#
#