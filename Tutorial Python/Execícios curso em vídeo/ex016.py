#Ler um número real qualquer e mostrar na tela a sua porção inteira
#Ex.: Digite 6.127 e mostrar a parte inteira 6.
'''from math import trunc
num = float(input('Digite um número real: '))
print('A parte inteira do número {} é: {}'.format(num, trunc(num)))'''

num = float(input('\033[35mDigite um número real:\033[m '))
print('A parte inteira do número \033[1m{}\033[m é \033[1;31m{}\033[m'.format(num, int(num)))
