'''Faça um mini-sistema que utilize o Interactive Help do Python. O usuário vai
digitar o camndo e o manual vai aparecer. Quando o usuário digitar a palavra
FIM, o programa se encerrará.
Obs: use cores.'''
from time import sleep
c = ('\033[m',          # 0 sem cores
     '\033[0;30;41m',   # 1 vermelho
     '\033[0;30;42m',
     '\033[0;30;43m',
     '\033[0;30;44m',
     '\033[0;30;45m',
     '\033[7;30m',)


def ajuda(com):
    título(f'Acessando o manual do comando \'{com}\'', 4)
    print(c[6], end='')
    help(com)
    print(c[0], end='')
    sleep(2)


def título(msg, cor=0):
    tam = len(msg) + 4
    print(c[cor], end='')
    print('~'*tam)
    print(f'  {msg}')
    print('~'*tam)
    print(c[0], end='')
    sleep(1)


comando = ''
while True:
    título('SISTEMA DE AJUDA PyHELP', 1)
    comando = str(input("Função ou Biblioteca > "))
    if comando.upper() == 'FIM':
        break
    else:
        ajuda(comando)
