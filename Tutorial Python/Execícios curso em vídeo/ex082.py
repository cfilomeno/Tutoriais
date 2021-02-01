# '''Crie um programa que vai ler vários números e colocar em uma lista. Depois disso, crie duas listas extras que
# vão conter apenas os valores pares e os valores ímpares digitados, respectivamente.
# Ao final, mostre o conteúdo das três listas geradas.'''
#
# i = 0
# lista = []
# par = []
# impar = []
# while True:
#     n = (int(input('Digite um valor: ')))
#     lista.append(n)
#     r = str(input('Deseja continuar? [S/N]: '))
#     if r in 'Nn':
#         break
#     if n % 2 == 0:
#         par.append(n)
#     else:
#         impar.append(n)
# print(f'A lista completa é: {lista}.\n'
#       f'Lista par: {par}.\n'
#       f'Lista ímpar: {impar} ')



num = list()
pares = list()
impares = list()
while True:
    num.append(int(input('Digite um número: ')))
    resp = str(input('Deseja continuar? '))
    if resp in 'Nn':
        break
for i, v in enumerate(num):
    if v % 2 == 0:
        pares.append(v)
    elif v % 2 == 1:
        impares.append(v)
print('=-'*30)
print(f'A) A lista completa é {num}.')
print(f'B) A lista de pares é {pares}.')
print(f'C) A lista de ímpares é {impares}.')
