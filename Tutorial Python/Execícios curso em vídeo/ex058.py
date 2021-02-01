'''Melhore o jogo do DESAFIO 028 onde o computador vai pensar em um número entre 0 e 10.
Só que agora o jogador vai tentar adivinhar até acertar, mostrando no final quantos palpites
foram necessários para vencer.'''

'''from random import randint
from time import sleep
pc = randint(0, 10)
us = int(input('Vou pensar em um número entre 0 e 10. Tente adivinhar: '))
print('PENSANDO...')
sleep(1)
erros = 0
while us != pc:
    us = int(input('\033[1;31mERRRRRRRROU!\033[m\nTente novamente: '))
    sleep(1)
    print('PENSANDO...')
    erros += 1
sleep(1)
print('\033[1;34mPARABÉNS!\033[m Você me venceu acertando o número \033[1;30m{}\033[m, mas você precisou de {} palpites!'.format(pc, erros))'''

from random import randint
computador = randint(0, 10)
print('Pensei em um número entre 0 e 10. Tente adivinhar qual é. ')
acertou = False
palpites = 0
while not acertou:
    jogador = int(input('Qual é o teu palpite? '))
    palpites += 1
    if jogador == computador:
        acertou = True
    else:
        if jogador < computador:
            print('Mais... Tente outra vez: ')
        elif jogador > computador:
            print('Menos... Tente outra vez: ')
print('Acertou com {} tentativas. Parabéns!'.format(palpites))
