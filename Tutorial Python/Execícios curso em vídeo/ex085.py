'''Crie um programa onde o usuários possa digitar sete valores numéricos e cadastre-os
em uma lista única que mantenha separados os valores pares e ímpares. No final, mostre
os valores pares e ímpares em ordem crescente.'''

num = [[], []]
valor = 0
for i in range(1, 8):
    valor = int(input(f'Digite {i}º valor: '))
    if valor % 2 == 0:
        num[0].append(valor)
    else:
        num[1].append(valor)
print('-='*30)
num[0].sort()
num[1].sort()
print(f'Os valores pares digitados são: {num[0]}')
print(f'Os valores ímpares digitados são: {num[1]}')




# temp = []
# princi = []
# par = []
# impar = []
# for i in range(1, 8):
#     temp.append(int(input(f'Digite o {i}º número: ')))
#     if temp[0] % 2 == 0 and temp[0] not in par:
#         par.append(temp[:])
#     if temp[0] % 2 == 1 and temp[0] not in impar:
#         impar.append(temp[:])
#     princi.append(temp[:])
#     temp.clear()
# par.sort()
# impar.sort()
# print(f'A lista principal é {princi}.')
# print(f'Os números pares da lista são {par}.')
# print(f'Os números ímpares da lista são {impar}.')