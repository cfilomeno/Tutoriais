'''Variáveis compostas: listas - parte 1

Tuplas () - são imutáveis
Lista [] - pode ser modificada

lanche = ['Hamburguer', 'Suco', 'Pizza', 'Pudim']
lanche[3] = 'sorvete' -> funciona

Inserir elementos:
lanche.append('cookie')
lanche = ['Hamburguer', 'Suco', 'Pizza', 'Pudim', 'cookie']


lanche.insert(0, 'cachorroquente')
lanche = ['cachorroquente', 'Hamburguer', 'Suco', 'Pizza', 'Pudim']


Apagar elementos:
del lanche[3]
lanche.pop(3)
lanche.remove('Pizza')
lanche = ['cachorroquente', 'Hamburguer', 'Suco', 'Picolé', 'Pudim']
lanche.pip() -> remove último elemento

if 'pizza' in lanche:
    lanche.remove('pizza')

valores = list(range(4, 11)) -> cria uma lista chamada valores com os elementos delimitados
ex.
valores = [8,2,5,4,9,3,0]

valores.sort() -> valores = [0,2,3,4,5,8,9]
valores.sort(reverse=True)

len(valores) = 7

'''
#
# num = [2, 5, 9, 1]
# num[2] = 3
# num.append(7)
# num.sort()
# num.sort(reverse=True)
# num.insert(2, 2)
# # num.pop()
# # num.pop(2)
# # num.remove(2)
# if 5 in num:
#     num.remove(5)
# else:
#     print('Não achei o número 5')
# print(num)
# print(f'Essa lista tem {len(num)} elementos.')



# valores = [] # valores = list()
# valores.append(5)
# valores.append(9)
# valores.append(4)
# # print(valores)
#
# # for v in valores:
# #     print(f'{v}...', end='')
#
# for c, v in enumerate(valores):
#     print(f'Na posição {c} encontrei o valor {v}!')
# print('Cheguei ao final da lista')


# valores = list()
# for cont in range(0, 5):
#     valores.append(int(input('Digite um valor: ')))

# for c, v in enumerate(valores):
#     print(f'Na posição {c} encontrei o valor {v}!')
# print('Cheguei ao final da lista')



#
# a = [2, 3, 4, 7]
# # b = a
# b = a[:]
# b[2] = 8
# print(f'Lista A: {a}')
# print(f'LIsta B: {b}')

'''Listas - parte 2

Estruturas dentro de estruturas:
ex.
pessoas = [['Pedro', 25], ['Maria', 19], ['João, 32]]
print(pessoas[0][0]) -> Pedro
print(pessoas[1][1]) -> 19
print(pessoas[2][0]) -> João
print(pessoas[1]) -> ['Maria', 19]

'''

# teste = list()
# teste.append(('Cleber'))
# teste.append(40)
# galera = list()
# galera.append(teste[:])
# teste[0] = 'Maria'
# teste[1] = 22
# galera.append(teste[:])
# print(galera)

# galera = [['João', 19], ['Ana', 33], ['Joaquim', 13], ['Maria', 45]]
# # print(galera[2][1])
#
# for p in galera:
#     # print(p)
#     # print(p[0])
#     print(f'{p[0]} tem {p[1]} anos de idade.')


galera = list()
dado = list()
totmaior = totmenor = 0
for c in range(0, 3):
    dado.append(str(input('Nome: ')))
    dado.append(int(input('Idade: ')))
    galera.append(dado[:])
    dado.clear()
# print(galera)
for p in galera:
    if p[1] >= 21:
        print(f'{p[0]} é maior de idade.')
        totmaior += 1
    else:
        print(f'{p[0]} é menor de idade.')
        totmenor += 1
print(f'Temos {totmaior} maiores e {totmenor} menores de idade.')

