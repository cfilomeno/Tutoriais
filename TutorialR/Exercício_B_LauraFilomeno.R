################################ ATIVIDADES 3, 4 e 5 ###############################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
############################# EXERCICIOS SOBRE FATORES #############################
#
#
#
#1.Faça o mesmo para algum fator que tenha relação com a sua pesquisa
#
#Infelizmente, eu ainda nao tenho dados triados da minha pesquisa, usei areas como exemplo porque meu trabalho sera relacionado com areas de Cerrado
#Ex <- "Areas" 
#is.character("Areas")
Areas <-c("Vereda", "Mata Nativa", "Mata Antropizada")
Areas <- factor(Areas)
Areas ##Ok. No console ele ordenou os niveis por ordem alfabetica
#
#
#2. Fatores podem ser ordenados:
temp <- c("High", "Low", "High","Low", "Medium")
factor_temp <- factor(x=temp,
                      ordered = TRUE,
                      levels = c("Low", "Medium", "High"))
factor_temp
#
#
#
#
#Selecione os valores de factor_temp que são maiores do que Low. Dica: use a mesma sintaxe que você usou nos vetores.
#
#
result <- factor_temp > "Low"
result #Ok. No resultado do console apareceu TRUE FALSE  TRUE FALSE  TRUE
#
#
#
############################## EXERCICIOS SOBRE DATA FRAMES ########################
#
#
#
#1. Usando o data.frame planetas, selecione a primeira linha das colunas 2 e 5
#
#
planetas[c(1), c(2,5)] #Nao consegui usar esta funcao, so era possivel extrair todas de 2-5, a virgula estava dando erro sempre
#
#
#2. Selecione apenas os planetas que tem diâmetro menor do que 0.6
#
#
planetas[planetas$diamete<=0.6, ] #Ok. Apareceram Mercurio e Marte 
#
#
#
#3. A função order() retorna um novo vetor com a posição ordeneda.
#Por exemplo
#v1<-c(10,50,20,70,90,40,20)
#ordem.v1<-order(v1)
#ordem.v1 #indica a ordem ascendente do vetor v1.
#se eu quiser reordená-lo:
#v1<-v1[ordem.v1]
#v1 #agora v1 está em ordem crescente
#
#
#Agora ordene o data.frame planetas com base no diâmetro
#
#RESPOSTA:
#diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
DiamPlanetas<-order(diameter)
DiamPlanetas #Ok. Apareceu em ordem crescente [1] 1 4 2 3 8 7 6 5
#
#4. Crie um data.frame com três colunas. A primeira coluna com números, a segunda, com um fator e a terceira com TRUE/FALSE.
#
#
Idade<- c(85, 74, 63, 68, 72, 91, 82, 88, 76, 70)
Sexo<- c("fem","masc","fem","fem","masc","fem","masc","masc","masc","masc")
Obito<- c(FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE)
#
Sexo <- factor(Sexo)
Sexo
#
covid.19<- data.frame(Idade, Sexo, Obito)
covid.19
View(covid.19) #OK. Funcionou.
#
#
#
############################## EXERCICIOS SOBRE LISTAS #############################
#
#
#
#1. Selecione a primeira coluna do data.frame contido na minha_lista
#
#
minha_lista$meu_df[ ,1] #Ok. Apareceu [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2
#
#
#
#2. Cria uma lista, com a primeira dimensão sendo um vetor de TRUE/FALSE, a segunda dimensão o data.frame iris, e na terceira um vetor com o seu nome.
#
#
vetorL <- c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE)
Laura<- seq(from=1,to=15,by=1)
#
listaL <- list(vetorL = vetorL, iris = iris, Laura=Laura)
listaL
View(listaL)
#
#
#
#3. Modifique o nome da primeira dimensão da sua lista. ##dica use a função names()
#
#
names(listaL) [[1]] <- "1Dimensao"
View(listaL) #Ok, deu certo.
#
#
#