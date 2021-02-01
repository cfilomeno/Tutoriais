'''Faça um programa que leia o peso de cinco pessoas. No final, mostre qual foi o maior e o
menor peso lidos.'''

'''lista = []
for c in range(1, 6):
    peso = float(input('Digite o peso nº {} em Kg: '.format(c)))
    lista.append(peso)
print('O maior peso é \033[1;31m{}\033[m Kg e o menor peso é \033[1;34m{}\033[m Kg.'.format(max(lista), min(lista)))'''

maior = 0
menor = 0
for p in range(1, 3):
    peso = float(input('Peso da {}ª pessoa: '.format(p)))
    if p == 1:
        maior = peso
        menor = peso
    else:
        if peso > maior:
            maior = peso
        if peso < menor:
            menor = peso
print('O maior peso lido foi de {} Kg.'.format(maior))
print('O menor peso lido foi de {} Kg.'.format(menor))
