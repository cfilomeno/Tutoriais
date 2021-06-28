#INTRODUÇÃO AO R
#Felipe M. Gawryszewski
#2020/02

#No R você irá escrever o seu código (script) aqui e ele será executado no console, embaixo.
#(você pode digitar diretamente no console também, mas não é muito prático)
#Por exemplo, vamos fazer operações básicas. Execute a linha abaixo e veja o console:

#Os operadores matemáticos básicos são:
#+ somar
#- subtrair
#/ dividir
#* multiplicar
2+2
2-2
2/2
2*2

#VETORES
#VETORES
#VETORES
#Vetores no R são objetos (um nome) que contém um conjunto de dados.
#cada dado em uma posição. Por exemplo:
meu_vetor <- "zoologia" #atribuir a palavra zoologia ao vetor "meu_vetor"

#Eu atribuí a palavra zoologia ao vetor a. Esse vetor não existia e foi criado.
#Você deve rodar a linha, para que o comando seja salvo na memória do compudador.
#No R isso: '<-' significar atribuir.
#no R o nome do vetor (objeto) não pode conter espaços.
#zoologia está entre aspas pois é uma palavra (character), não um número.

#para ver o que há no seu é só executá-lo:
meu_vetor

#Ele tambám aparece na aba 'Environment' aqui do lado direito

#Se eu quiser atribuir um número:
meu_vetor2 <- 2
meu_vetor2

#Eu posso entao usar esse vetor:
meu_vetor + meu_vetor
meu_vetor2 + meu_vetor2
  
#Uma função muito importante no R é a concatenar "c". Ela junta várias coisas.
#Por exemplo, irei fazer um vetor com 2 números.
meu_vetor<-c(100,2)
meu_vetor

#Agora eu criei um novo vetor 'meu_vetor'. Consequentemente o antigo foi substituído por esse.
#Veja também que os números sao separados por vígula. Ao usar a funcão c eu sempre separo os componentes 
#com vígulas.

#Eu posso fazer operacoes com vetores com mais de um componente também:
meu_vetor1<-50
meu_vetor/meu_vetor1

#E posso atribuir esse resultado a outro objeto
novo_objeto <- meu_vetor/meu_vetor1
novo_objeto

#Seleção de componentes de um vetor
#Cada componente de um vetor tem uma posição. Você pode selecionar um componente específico
#desse vetor.
vetor <- c(5,3,1,7,8,9,0)

#agora vou selecionar o quinto componente. Para isso você usa [ ] ou [[ ]] (quanto quiser forçar que seja
#apenas um componente)
vetor[5]

#você pode selecionar mais de um componente também, usando [] em conjunto com a função c()
vetor[ c(5,2) ]
vetor[ c(2,5) ]

#Além disso você pode atribuir nomes aos componentes e selecionar pelo nome.
#Para isso você usa a função names.
#uma coisa muito útil no R é usar a ajuda.
#Você pode usar a tela ao lado para procurar a função ou digitar:
?names

names(vetor)

names(vetor) <- c("bode","vaca","zoologia","felipe",
                "AA", "A", "maria")

names(vetor)
vetor

#Os nomes tem que ser únicos para cada componente.
#entao eu posso pegar um componente do vetor pelo nome. 
vetor["zoologia"]


###OPERADORES LÓGICOS
#>
#<
#==
#!=
#>=
#<=

2>4
2==4 #é importante usar dois sinais de igual, pois quando se usa apenas 1 da erro, pois so 1 sinal de igual tem funcao de atribuir a 
2==2


#Você pode testar seus objetos também
vetor
resultado <- vetor > 1
resultado



###EXERCICIOS####
###EXERCICIOS####
###EXERCICIOS####
###EXERCICIOS####
#1. Crie dois vetores, cada um com 10 números.
vet1 = c(4,3,67,9,7,5,1,43,54,22)
vet2 = c(76,4,3,123,6,875,99,143,65,2)
#2. Calcule a divisão do vetor 1 pelo 2.
res = vet1/vet2
res
#3. Calcule a soma total dos componentes
#de cada um dos vetores
#dica: use a função sum()
?sum
soma_vet1 = sum(vet1)
soma_vet1

soma_vet2 = sum(vet2)
soma_vet2
#4. Teste se a soma total do vetor 1 
#é maior do que a do vetor 2. #Veja o resultado no console.
#dica: use > ou < 
soma_vet1 > soma_vet2
soma_vet1 < soma_vet2

#5 teste se eles sao iguais.
#dica use ==
soma_vet1 == soma_vet2
#6. Selecione o primeiro componente vetor1
vet1[1]
#7.Selecione o terceiro componente
vet1[3]
#8.Selecione o terceiro e o quinto componente
vet1[c(3,5)]
#9. Atribua nomes a um vetor e selecione um
#componente pelo nome, não pela posição como acima.
names(vet1) <- c("primeiro", "segundo", "terceiro", "quarto", "quinto",
                 "sexto", "sétimo", "oitavo", "nono", "décimo")
vet1["quarto"]
#10 selecione componentes de um vetor que
#sejam maiores ou iguais (>=) a um determinado valor.
#atribua isso a outro vetor.
maior_igual <- vet1 > 20
maior_igual
#11. Selecione os componentes do vetor com base no
#resultado de um teste lógico (==, !=, >, <, >=, <=)
#de outro vetor.
idade <- vet1[vet1 > 20]
idade
