'''Faça um programa que leia um número qualquer e mostre o seu fatorial
ex.: 5! = 5x4x3x2x1 = 120'''

'''from math import factorial
n = int(input('Qual fatorial deseja verificar? '))
print('{}! = {}'.format(n, factorial(n)))'''

# num = 'c'
# while num != 0:
#     num = int(input('Qual fatorial deseja verificar? '))
#     fatorial = 1
#     for i in range(num):
#         fatorial = fatorial * (i+1)
#     print('O fatorial de {} é {}: '.format(num, fatorial))
#
# print('Programa encerrado.')



n = int(input('Qual o fatorial deseja verificar? '))
c = n
f = 1
print('Calculando {}! = '.format(n), end='')
while c > 0:
    print('{}'.format(c), end='')
    print(' x ' if c > 1 else ' = ', end='')
    f *= c  # f = f * c
    c -= 1
print('{}'.format(f))
