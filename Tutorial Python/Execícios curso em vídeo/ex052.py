'''Faça um programa que leia um número inteiro e diga se ele é ou não um número primo.'''

'''num = int(input('Digite um número inteiro: '))
if num > 1:
    for c in range(2, num//2):
        if (num % c) == 0:
            print('{} não é um número primo.'.format(num))
            break
    else:
        print('{} é um número primo.'.format(num))
else:
    print('{} não é um número primo.'.format(num))'''

tot = 0
num = int(input('Digite um número: '))
for c in range(1, num + 1):
    if num % c == 0:
        print('\033[33m', end='')
        tot += 1
    else:
        print('\033[31m', end='')
    print('{} '.format(c), end='')
print('\n\033[mO número {} foi divisível por {} vezes.'.format(num, tot))
if tot == 2:
    print('E por isso é PRIMO.')
else:
    print('E por isso ele NÃO É PRIMO!')
