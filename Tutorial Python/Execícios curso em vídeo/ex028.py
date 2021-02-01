'''Escreva um programa que faça o computador "pensar" em um número
entre 0 e a e peça para o usuário tentar descobrir qual foi o número escolhido
pelo computador.
O programa deverá escrever na tela se o usuário venceu ou perdeu'''

'''from random import randint
pc = randint(0, 5)
us = int(input('Escolha um número entre 0 e 5: '))
if us == pc:
    print('Parabéns! Você acertou!')
else:
    print('Você errou! Eu pensei no número {}'.format(pc))'''

from random import randint
from time import sleep
computador = randint(0, 5)
print('-=-'*20)
print('Vou pensar em um número entre 0 e 5. Tente adivinhar...')
print('-=-'*20)
jogador = int(input('Em que número eu pensei ? '))
print('PROCESSANDO...')
sleep(3)
if jogador == computador:
    print('PARABÉNS! Você conseguiu me vencer!')
else:
    print('GANHEI! Eu pensei no número {} e não no {}!'.format(computador, jogador))
