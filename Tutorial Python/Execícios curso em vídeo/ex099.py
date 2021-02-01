'''Faça um programa que tenha uma função maior(), que receba vários parâmetros
com valores inteiros. Seu programa tem que analisar todos os valores e dizer
qual deles é o maior.'''

from time import sleep
from random import randint


def maior(* num):
    cont = maior = 0
    print('Analisando os valores passados...')
    for valor in num:
        print(valor, end=' ', flush=True)
        sleep(0.3)
        if cont == 0:
            maior = valor
        else:
            if valor > maior:
                maior = valor
        cont += 1

    print(f'Foram informados {cont} valores ao todo.')
    print(f'O maior valor informado foi {maior}.')
    print('-='*20)


print('-='*20)
maior(2, 9, 4, 5, 7, 1)
maior(4, 7, 0)
maior(1, 2)
maior(6)
maior()
