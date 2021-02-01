'''Crie um programa que faça o computador jogar jokenpô com vocẽ.
'''

from random import randint
from time import sleep
print('-=-'*5+'\033[1;34mJO\033[m \033[1;31mKEN\033[m \033[1;33mPÔ\033[m'+'-=-'*5)

print('''
[ 1 ] \033[1;34mPEDRA\033[m
[ 2 ] \033[1;31mPAPEL\033[m
[ 3 ] \033[1;33mTESOURA\033[m
''')

jogador = int(input('\033[1;7;30mEscolha sua arma !\033[m '))
print('\033[1;34mJO\033[m')
sleep(0.5)
print('\033[1;31mKEN\033[m')
sleep(0.5)
print('\033[1;33mPÔ\033[m')
sleep(0.5)
print('-=-'*14)
computador = randint(1, 3)
if jogador == 1 and computador == 2:
    print('Jogador escolheu \033[1;34mPEDRA\033[m e Computador escolheu \033[1;31mPAPEL\033[m.\n'
          '\033[1;35mCOMPUTADOR GANHOU !\033[m')
elif jogador == 1 and computador == 3:
    print('Jogador escolheu \033[1;34mPEDRA\033[m e Computador escolheu \033[1;33mTESOURA\033[m.\n'
          '\033[1;36mJOGADOR GANHOU !\033[m')
elif jogador == 2 and computador == 3:
    print('Jogador escolheu \033[1;31mPAPEL\033[m e computador escolheu \033[1;33mTESOURA\033[m.\n'
          '\033[1;35mCOMPUTADOR GANHOU !\033[m')
elif jogador == 2 and computador == 1:
    print('Jogador escolheu \033[1;31mPAPEL\033[m e computador escolheu \033[1;34mPEDRA\033[m.\n'
          '\033[1;36mJOGADOR GANHOU !\033[m')
elif jogador == 3 and computador == 1:
    print('Jogador escolheu \033[1;33mTESOURA\033[m e computador escolheu \033[1;34mPEDRA\033[m.\n'
          '\033[1;35mCOMPUTADOR GANHOU !\033[m')
elif jogador == 3 and computador == 2:
    print('Jogador escolheu \033[1;33mTESOURA\033[m e computador escolheu \033[1;31mPAPEL\033[m.\n'
          '\033[1;36mJOGADOR GANHOU !\033[m')
elif jogador == 1 and computador == 1 or jogador == 2 and computador ==2 or jogador == 3 and computador == 3:
    print(''
          '-=-'*5+'\033[1;30;44mDEU EMPATE !\033[m'+'-=-'*5)
else:
    print('\033[1;31mEscolha inválida. Jogue novamente.\033[m')
