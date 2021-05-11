################################ ATIVIDADES 11 e 12 ##################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
################################ EXERCICIOS SOBRE LM/1 #################################
#
#
#1. Faça um plot do log do Volume em função do log do diâmetro. Dica: crie primeiro
#uma nova coluna com o log do volume e outra com o log do diâmetro (função log)
#
#
#head(trees)
trees[ ,1-3] #conferi e filtrei as colunas
log(trees[ ,1-3]) #calculei o log das colunas
plot(log(Volume) ~ log(Girth), data = trees) #plotei a funcao
#
#
#
#2. Faça um modelo linear do log do Volume em função do log do diâmetro
#
#
ex2 <- lm(formula = log(Volume) ~ log(Girth), data = trees)
ex2 #nome abreviado do exercicio 2
#
#
#
#3. Escreva a equação do seu modelo com base no summary do seu modelo
#
#
summary(ex2)
#Intercept = -2.35332   +/- 0.23066 (SD)
#log(Girth) =   2.19997 +/-   0.08983 (SD)
#
#
#4. Calcule o intervalo de confiança para o coeficiente associado log do diâmetro
#
#
confint(ex2) # Resposta abaixo
#                2.5 %    97.5 %
#Intercept   -2.825083 -1.881566
#log(Girth)   2.016238  2.383702
#
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
#
#7. Faça um modelo linear para esse dados.
#
#
ex7 <- lm(formula = log(dist) ~ log(speed), data = cars)
ex7
#
#
#
#8. Escreva a equação  com base no summary do seu modelo
#
#
summary(ex7)
#Intercept =    -0.7297    +/-  0.3758 
#log(speed) =    1.6024    +/- 0.1395
#
#
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
################################ EXERCICIOS SOBRE LM/2 #################################
#
#
#1. Faça um modelo de Petal.Width em função de Petal.Length e Species.
#
#
#
modelo_petal_int <- lm(Petal.Width ~ Petal.Length * Species,
                       data = iris)
modelo_petal_int
#
#
#2. Interprete o resultado do modelo em relaçãs as diferencas
#entre espécies preditas pelo modelo.
#
#
summary(modelo_petal_int)
#
coplot(Petal.Width ~ Petal.Length|Species, data = iris,
       panel = panel.smooth)
#
#Interpretacao do modelo abaixo, interacao entre a especie predita e o comprimento da petala
Petal.Width = -0.04822 + 0.20125 * Petal.Length - 
  0.03607 * Speciesversicolor + 1.18425 * Speciesvirginica + 
  0.12981 * Petal.Length * Speciesversicolor -
  0.04095 * Petal.Length * Speciesvirginica
#
#
#Em relacao ao modelo predito, comparado ao intercept. O coeficiente de comprimento da pétala de setosa (intercept) = -0.04822, 
#o valor associado ao coeficiente da petala = 0.20125; o de Speciesversicolor = -0.03607;  e o de
#Speciesvirginica = 1.18425. A interacao do comprimento petala com Speciesversicolor = 0.12981 
#e a interacao do comprimento com Speciesvirginica = -0.04095 
#
#
#
#3. Analise os dados do experimento presente do dados PlantGrowt.
#Interprete os resultados do modelo. Leve em consideracao
#os intervalos de confiança (use predict).
data("PlantGrowth")
?PlantGrowth
#
plot(weight ~ group, data = PlantGrowth)
modelo_pg <- lm(weight ~ group, data = PlantGrowth)
modelo_pg

dados<- data.frame(weight = c(5, 5, 5),
                   group = c("trt1","trt2","ctrl"))
dados

predict(object = modelo_pg,
        newdata = dados,
        interval="confidence")

#Para o valor do peso igual a 5, o intervalo de confianca predito variou entre 
#os grupos tratamento1 , tratamento2  variaram comparado ao controle  
#No tratamento1 o peso esperado foi: 4.661 e o intervalo de confiança entre 4.256526 e 5.065474, 
#No tratamento2 o peso esperado foi: 5.526 e o intervalo de confiança entre  5.121526 e 5.930474, 
#E no controle o peso esperado foi: 5.032  e o intervalo de confiança entre 5.032 4.627526 e 5.436474.
#
#