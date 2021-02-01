'''Crie um programa que leia o ano de nascimento de sete pessoas. No final, mostre quantas pessoas
ainda não atingiram a maioridade e quantas já são maiores (21 anos).'''

'''from datetime import date
maior = []
menor = []
for c in range(1, 8):
    d = int(input('Digite a data de nascimento {}: '.format(c)))
    i = date.today().year - d
    if i >= 21:
        maior.append(i)
    else:
        menor.append(i)
print('Entre as \033[1;30m7\033[m pessoas, \033[1;34m{}\033[m são maiores e \033[1;31m{}\033[m são menores de idade.'
      .format(len(maior), len(menor)))'''

from datetime import date
atual = date.today().year
totmaior = 0
totmenor = 0
for pessoa in range(1, 8):
    nasc = int(input('Em que ano a {}ª pessoa nasceu? '.format(pessoa)))
    idade = atual -  nasc
    if idade >= 21:
        totmaior += 1
        print('Essa pessoa é maior.')
    else:
        totmenor += 1
print('Ao todo tivemos {} pessoas maiores de idade.'.format(totmaior))
print('E também tivemos {} pessoas menores de idade.'.format(totmenor))

