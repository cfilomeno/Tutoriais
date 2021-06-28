#FATORES
#FATORES
#FATORES
#Fatores são variáveis categóricas de dados estatísticos.Podemos ter texto, numeros, logicos
#por exemplo MACHOS e FÊMEAS:
1223
12.4
TRUE ##logico
FALSE ##logico
NA ##nao temos a informacao
NULL ##ausencia de informacao, nao existe informacao dentro do vetor
is.character("zoologia") ##perguntando se zoologia e um fator
?is.character

sexo<- c("macho", "femea", "femea", "femea", "macho")
is.character(sexo)

#Agora transformar esse vetor em fator
#?factor ##ajuda 
sexo <- factor(sexo) ##substituindo o vetor por fator
sexo #veja no console que há dois niveis nivel femea e macho


#Fatores podem ser ordenados

#Veja ?factor
tamanho <- c("grande", "grande", "pequeno", "pequeno", "medio") ##nao usar sinais e acentos

# ?factor ##ajuda mostrando o x ##colocar os niveis em ordem crescente P,M,G e colocar 'ordered = True'
tamanho<-factor(x = tamanho,
                levels = c("pequeno","medio","grande"),
                ordered = TRUE)
tamanho

novo_veto<-tamanho[tamanho > "pequeno"]
novo_veto

#EXERCÍCIOS
#EXERCÍCIOS
#EXERCÍCIOS
#EXERCÍCIOS
#1.Faça o mesmo para algum fator que tenha relação com a sua pesquisa

#2. Fatores podem ser ordenados:
temp <- c("High", "Low", "High","Low", "Medium")
factor_temp <- factor(x=temp,
                      ordered = TRUE, #isso e para ordenar
                      levels = c("Low", "Medium", "High"))
factor_temp
#Selecione os valores de factor_temp que são maiores
#do que Low. Dica: use a mesma sintaxe que você usou
#nos vetores.
new <- factor_temp[factor_temp > "Low"]
new
