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
