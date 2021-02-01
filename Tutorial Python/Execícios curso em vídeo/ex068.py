'''Faça um programa que jogue par ou ímpar com o computador.
O jogo só será i nterrompido quando o jogador PERDER, mostrando o total de vitórias consecutivas
que ele conquistou no final do jogo.'''

from random import randint

c = v = soma = 0
escolha = ''
while True:
    escolha = str(input('Par ou ímpar? [P/I]: ')).upper()[0].strip()
    pc = randint(0, 10)
    jogador = int(input('Qual número? '))
    soma = pc + jogador

    if soma % 2 == 0:
        print(f'{soma} é PAR!')
        if escolha in 'Pp':
            print('O jogador venceu!')
            v += 1
        else:
            print('O jogador perdeu!')
            break
    if soma % 2 != 0:
        print(f'{soma} é ÍMPAR!')
        if escolha in 'Ii':
            print('O jogador venceu!')
            v += 1
        else:
            print('O jogador perdeu!')
            break
    c += 1
if v == 1:
    print(f'O jogador teve {v} vitória apenas.')
else:
    print(f'O jogador teve {v} vitórias consecutivas entre {c+1} partidas')
