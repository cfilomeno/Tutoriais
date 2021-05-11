################################## ATIVIDADES 1 E 2 ###############################

#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031

############################## EXERCICIOS SOBRE VETORES ###########################

#1. Crie dois vetores, cada um com 10 números.

meu_vetor <- c (22,17,27,12,2,24,31,4,3,26) #criterio de escolha dos numeros, aniersarios de familiares

meu_vetor2 <- c (28,34,38,32,3,39,51,5,58,62) # idade dos familiares

#2. Calcule a divisão do vetor 1 pelo 2.

meu_vetor / meu_vetor2
#Resultado [1] 0.78571429 0.50000000 0.71052632 0.37500000 0.66666667 0.61538462 0.60784314 0.80000000 0.05172414 0.41935484

#3. Calcule a soma total dos componentes de cada um dos vetores #dica: use a função sum()
#?sum

sum (meu_vetor) #Resultado: [1] 168

sum(meu_vetor2) #Resultado: [1] 350

#4. Teste se a soma total do vetor 1 é maior do que a do vetor 2. ## dica: use > ou <

sum(meu_vetor) > sum(meu_vetor2) #Resultado: FALSE

#5 teste se eles sao iguais. ##dica use ==

sum(meu_vetor) == sum(meu_vetor2) #Resultado: FALSE

#6. Selecione o primeiro componente vetor1

meu_vetor[1] #Resultado: 22

#7.Selecione o terceiro componente

meu_vetor[3] #Resultado: 27

#8.Selecione o terceiro e o quinto componente

meu_vetor[c(3,5)] #Resultado: 27  2

#9. Atribua nomes a um vetor e selecione um componente pelo nome, não pela posição como acima.
#?names
names(meu_vetor2)
names(meu_vetor2) <-c("Coleoptera","Isoptera","Mantodea","Hymenoptera","Hemiptera","Lepidoptera","Odonata","Orthoptera","Diptera","Neuroptera")

meu_vetor2
#Resultado:
##Coleoptera    Isoptera    Mantodea Hymenoptera   Hemiptera Lepidoptera     Odonata  Orthoptera     Diptera  Neuroptera 
##########28          34          38          32           3          39          51           5          58          62 

meu_vetor2["Lepidoptera"] #Resultado: 39

#10 selecione componentes de um vetor que sejam maiores ou iguais (>=) a um determinado valor. Atribua isso a outro vetor.

meu_vetor [5] >= 30 #Resultado: FALSE
meu_vetor [c(1,3,5,7)] >= 30 #Resultados FALSE para os tres primeiros componentes e TRUE para o ultimo

meu_vetor2 [2] >= 30 #Resultado: TRUE
meu_vetor2 [c(2,4,6,8)] >= 30 #Resultados: Isoptera(TRUE) Hymenoptera(TRUE) Lepidoptera(TRUE)  Orthoptera(FALSE) 

#11. Selecione os componentes do vetor com base no resultado de um teste lógico (==, !=, >, <, >=, <=) de outro vetor.

meu_vetor [2] == meu_vetor2[5] #Resultado: Hemiptera FALSE

meu_vetor >= meu_vetor2 #Resultado: FALSE para todos os componentes
meu_vetor[6] >= meu_vetor2[8] #Resultado: Orthopetera TRUE

resultado <- meu_vetor2[2] < 30
resultado #Isoptera TRUE

resultado <- meu_vetor2[2] < 20
resultado #Isoptera FALSE

resultado <- meu_vetor2[2] == 25
resultado #Isoptera FALSE

resultado <- meu_vetor2[2] == 34
resultado #Isoptera TRUE

resultado <- meu_vetor2[2] != 20
resultado #Isoptera FALSE


########################## EXERCICIOS SOBRE MATRIZES ########################

#1. Crie uma matriz com 10 colunas e 3 linhas

matrix()
matLF <- matrix(nrow = 3, ncol = 10)
matLF #Ok. Criei a matriz com 10 colunas e 3 linhas, apareceu NA cada componente

#2. Use a função t() para transpor a matriz

t(matLF) #Ok!


#3. Quantas linhas e colunas ela tem agora?

#Agora ela tem 10 linhas e 3 colunas


#4. Extraia da matriz um vetor com a segunda coluna

matLF<-matrix(data= c(22,17,27,12,2,24,31,5,3,26),
              nrow=10,ncol=3)
matLF
matLF[7,2] #Resultado 31

#5. Multiplique apenas a segunda coluna por 3

3*matLF[1:10,2] ##Ok, no console apareceu o resultado [1] 66 51 81 36  6 72 93 15  9 78

#6. Extraia apenas o triangulo inferior da matriz. Dica: veja ?lower.tri

lower.tri(matLF) # No resultado do console apareceu apenas 6 componentes FALSE e o restante TRUE

#7. Crie uma matrix de 2 linhas e 3 colunas com apenas nomes

matrix()
matLF2 <- matrix(nrow = 2, ncol = 3)
matLF2[,] <- 1:6 #estabeleci numeros para a matriz não ficar com NA
#ou poderia fazer assim: matLF2<-matrix(data= c(1:6), nrow=2,ncol=3)

rownames(matLF2) <- c("Hemiptera","Coleoptera")
matLF2

colnames(matLF2) <- c("Besouro","Cigarra","Joaninha")
matLF2

#8. Substitua o componente da linha 1 coluna 1 por "Zoologia"

matLF2[1,1] <- "Zoologia"
matLF2 #Ok. Deu certo, mas antes quebrei muito minha cabeça com as tentativas a seguir. O caminho era mais simples do que pensei.

#Estava tentando assim e não deu certo:
#names(matLF2[c(1,1)])<- "Zoologia" # Aparecia o erro: substituto tem comprimento zero
#matLF2[1,1] <- names("Zoologia") #Assim também apareceu o erro: número de itens para para substituir não é um múltiplo do comprimento do substituto

##OBS: Tentei mudar os números de 1 a 6 colocando os nomes por extenso par ver se dava certo
#matLF2<-matrix(data=c("um","dois","três","quatro","cinco", "seis", nrow=2, ncol=3)

#Fiquei com uma duvida sobre como montar uma matriz com cada item de linha e coluna diferentes, quando eu preenchi meus conjuntos de numeros...
#...pois eles se repetiam em cada coluna (ou linha se não tivesse transposto a matriz)

