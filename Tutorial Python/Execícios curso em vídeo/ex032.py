'''Faça um programa que leia um ano qualquer e mostre se ele é BISSEXTO'''


'''a = int(input('Digite o ano: '))
if (a % 4 == 0 and a % 100 != 0 or a % 400 == 0):
    print('O ano {} é um ano bissexto!'.format(a))
else:
    print('O ano {} NÃO é um ano bissexto.'.format(a))'''

from datetime import date
ano = int(input('Que ano quer analisar? Coloque 0 para analisar o ano atual: '))
if ano == 0:
    ano = date.today().year
if ano % 4 == 0 and ano % 100 != 0 or ano % 400 == 0:
    print('O ano {} é BISSEXTO.'.format(ano))
else:
    print('O ano {} NÃO é BISSEXTO.'.format(ano))
