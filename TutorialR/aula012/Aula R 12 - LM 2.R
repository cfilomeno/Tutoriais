#Vamos agora fazer um modelo com uma
#variável preditora categórica 

#Carregar os dados iris, que já
#vem com o R
data("iris")
?iris
#Veja:
#This famous (Fisher's or Anderson's) iris data set gives
#the measurements in centimeters of the variables
#sepal length and width and petal length and width
#, respectively, for 50 flowers from each of 3 species of iris.
#The species are Iris setosa, versicolor, and virginica.

#Vamos supor que você queira saber se há diferença
#na largura das sépalas entre as espécies.

#A primeira coisa é sempre visualizar os dados:
head(iris)
plot(Sepal.Width ~ Species, data = iris)

#Veja que os dados sugerem uma diferença  
#entre as spp.

modelo_sepal <- lm(Sepal.Width ~ Species, data = iris)

#Veja agora
modelo_sepal

#Há um valor para um intercepto (Intercept), para
#para versicolor (Speciesversicolor) e virginica (Speciesvirginica)

#Quando é uma variável categórica,
#um nível sempre fica sendo o padrão de comparação
#os outros níveis são a diferença em relação
#a ele. Nesse caso o nível de referência
#é setosa (pode ser qualquer outro, não faz diferença)

#Nesse caso o seu modelo fica assim:
#Sepal.Width = 3.428  - 0.658 * Speciesversicolor - 0.454 * Speciesvirginica

#Speciesversicolor e Speciesvirginica podem ser 0 ou 1.
#Quando você quer estimar o valor de versicolor,
#Speciesversicolor = 1 e Speciesvirginica = 0
3.428  - 0.658 * 1 - 0.454 * 0

#Quando você quer estimar o valor de setosa,
#Speciesversicolor = 0 e Speciesvirginica = 0
3.428  - 0.658 * 0 - 0.454 * 0

#Quando você quer estimar o valor de virginica,
#Speciesversicolor = 0 e Speciesvirginica = 1
3.428  - 0.658 * 0 - 0.454 * 1

#Há também erros padrões associados a esses
#coeficientes:
summary(modelo_sepal)

#No entanto, geralmente estamos mais
#interessados primeiramente em saber a importância
#da variável Species para explicar a variação
#nos dadaos (= ANOVA). Vou falar sobre isso
#em outra aula.


#Agora um modelo com a interação entre variáveis
coplot(Sepal.Width ~ Sepal.Length|Species, data = iris,
       panel = panel.smooth)

#O modelo:
modelo_sepal_int <- lm(Sepal.Width ~ Sepal.Length * Species,
                       data = iris)

#Veja agora
summary(modelo_sepal_int)

#Há coeficientes associados a interacao entre Sepal.Length e Species.
#O modelo fica assim:
Sepal.Width = -0.5694 + 0.7985 * Sepal.Length + 
  1.4416 * Speciesversicolor + 2.0157 * Speciesvirginica - 
  0.4788 * Sepal.Length * Speciesversicolor -
  0.5666 * Sepal.Length * Speciesvirginica

#Se eu quiser saber o valor estimado de Sepal.Width para a espécie
#versicolor, em um indivíduo com Sepal.Length = 6, a formula fica:
-0.5694 + 0.7985 * 6 + 
  1.4416 * 1 + 2.0157 * 0 - 
  0.4788 * 6 * 1 -
  0.5666 * 6 * 0
#2.7904

#Isso também pode ser feito utilizando a
#função predict, com a vantagem que
#ele ainda calcula o intervalo de confiança:
?predict
head(iris)
novosdados<- data.frame(Sepal.Length = c(5,6,7),
                        Species = c("versicolor","versicolor","versicolor"))
novosdados

predict(object = modelo_sepal_int,
        newdata = novosdados,
        interval="confidence")


#Exercícios
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
#o valor associado ao coeficiente comprimento da petala = 0.20125; o de Speciesversicolor = -0.03607;  e o de
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