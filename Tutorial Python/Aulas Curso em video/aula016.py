'''Várias compostas
    - tuplas ()
    - listas []
    - dicioinários {}

Tuplas
    Teoria:

    - quando a variável simples é declarada, vira um espaço na memória;
    - quando atribuo (=) algo à variável, isso vai para o espaço antes vazio;
    - se houver uma nova atribuição com a mesma variável, a segunda elimina a primeira;
    - tem como criar uma variável na qual caiba mais de um objeto atribuído. Uma das formas é a tupla.
    - Tupla: uma variável que guarda um número de valores > 1.
    - Como acessar os elementos da tupla? R. Índices: 0, 1, 2, 3..
    - Elementos diferentes são identificados por números.
    - Uma string é uma variável composta; funciona o fatiamento;
    - Ex.:
        lanche = sanduíche, refri, pizza, pudim
        print(lanche[2]) -> pizza
        print(lanche[0:2]) - > sanduíche, refri
        print(lanche[1:]) -> suco, pizza, pudim
        print(lanche[-1]) -> pudim
        len(lanche) -> 4 (número de elementos)
        for c in lanche:
            print(c)    -> sanduíche.... depois refri... depois pizza ... depois pudim

        AS TUPLAS SÃO IMUTÁVEIS: não dá pra tirar o pudim e colocar um sorvete

    Prática:'''

lanche = ('Hambúrguer', 'Suco', 'Pizza', 'Pudim', 'Batata')
# tuplas são imutáveis
# lanche[1] = 'Refri'

# print(lanche[-4:])

# for c in lanche:
#     print(f'Eu vou comer {c}')
# print('Comi pra caramba!')

# print(len(lanche))

# for cont in range(0, len(lanche)):
#     # print(cont)
#     print(lanche[cont])
#

# for comida in lanche:
#     print(f'Eu vou comer {comida}')
#
# for cont in range(0, len(lanche)):
#     print(f'Eu vou comer {lanche[cont]} na posição {cont}')
#
# for pos, comida in enumerate(lanche):
#     print(f'Eu vou comer {comida} na posição {pos}')


# print(sorted(lanche))   em ordem alfabética


# a = (2, 5, 4)
# b = (5, 8, 1, 2)
# c = a + b
# print(c)
# print(len(c))
# print(c.count(5))
# print(c.index(2))
# print(c.index(2, 1))


# pessoa = ('Cleber', 39, 'M', 81.99)
# del(pessoa)
# print(pessoa)
# del(pessoa[0]) não pode ser deletados objetos da tupla


