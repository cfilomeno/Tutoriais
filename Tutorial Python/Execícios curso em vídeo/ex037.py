'''Escreva um programa que leia um número inteiro qualquer
e peça para o usuário escolher qual será a base de conversão:
1 para binário; 2 para octal; 3 para hexadecimal'''

num = int(input('\033[33mDigite um número inteiro qualquer:\033[m '))
print('''Escolha uma das bases pra conversão:
[1] converter para BINÁRIO
[2] converter para OCTAL
[3] converter para HEXADECIMAL''')
conv = int(input('\033[33m Qual será a base de conversão?\033[m '))
if conv == 1:
    print('{} convertido para BINÁRIO é igual a {}.'.format(num, bin(num)[2:]))
elif conv == 2:
    print('{} convertido para OCTAL é igual a {}.'.format(num, oct(num)[2:]))
elif conv == 3:
    print('{} convertido para HEXADECIMAL é igual a {}.'.format(num, hex(num)[2:]))
else:
    print('\033[1;31mOpção inválida. Tente novamente.\033[m')
