#EXERCÍCIOS IMPORTAÇÃO E EXPORTAÇÃO DE DADOS##
  
#Exercício 1#
#Crie 2 conjuntos de dados de 30 unidades amostrais cada com distribuição normal, média 1 e
#desvio padrão 2.5 e descubra como calcular um teste t para este conjunto, tentem:
#>?rnorm
#>?t.test

c1 = rnorm(30, mean = 1, sd = 2.5)
c2 = rnorm(30, mean = 1, sd = 2.5)
t.test(c1, c2)


#Exercício 2#
#2) Crie 4 vetores numéricos de qualquer tamanho com a função c(), você também pode
# combinar as funções seq() e c() se desejar.
# a) calcule o comprimento de cada um desses vetores e guarde o resultado num outro vetor.
# b) calcule o somatório dos componentes de cada vetor e guarde o valor num outro vetor.
# c) utilize os itens b) e c) para calcular a média dos valores de cada um dos vetores.

v1 = c(1:5)
v2 = c(3:20)
v3= seq(-4,40,0.5)
v4 = seq(2,20,0.2)

comp1 = length(v1)
comp2 = length(v2)
comp3 = length(v3)
comp4 = length(v4)

somav1 = sum(v1)
somav2 = sum(v2)
somav3 = sum(v3)
somav4 = sum(v4)

media.v1 = somav1/comp1
media.v1
media.v2 = somav2/comp2
media.v2
media.v3 = somav3/comp3
media.v3
media.v4 = somav4/comp4
media.v4


# 3) Calcule novamente a média dos vetores, agora utilizando a função mean().

mean(v1)
mean(v2)
mean(v3)
mean(v4)

# 4) Digite ls() e recupere o objeto dados.campo, selecione:
#   a) os cinco primeiros elementos deste objeto;
# b) todos os elementos MENOS os 2 primeiros;
# c) o 3º elemento;
# d) todos menores que 4.

?ls()
dados.campo = seq(2,20,2)
dados.campo[1:5]
dados.campo[-(1:2)]
dados.campo[3]
dados.campo[dados.campo<4]

# 5) Crie duas sequências de 1 a 20 com intervalo de 1. Atribua nomes diferentes a cada uma.

sequencia1 = seq(1,20,1)
sequencia2 = seq(1,20,1)


# 7) Utilize a função cbind() para unir os dois vetores. Nomeie as colunas de a até u utilizando
# o vetor ‘letters’, e as duas colunas com o vetor ‘LETTERS’ já disponíveis no R.

combin = cbind(sequencia1, sequencia2)
l1 = letters[sequencia1]
l2 = letters[sequencia2]

# 8) Recupere o objeto xy que criamos há pouco, ele é uma matriz.

xy=matrix(1:12, nrow=3)

# a) Multiplique-o por um escalar qualquer, por exemplo 3, veja o que acontece;
# b) Divida o valor encontrado por 4, observe o que acontece e tente se lembrar das aulas de
# álgebra de matrizes do 3º colegial.
# c) acesse o elemento a 3,1.

xy
3*xy
3*xy/4
xy[3,1]
