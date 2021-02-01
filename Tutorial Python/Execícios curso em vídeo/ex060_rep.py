'''Faça um programa que leia um número qualquer e mostre o seu fatorial
ex.: 5! = 5x4x3x2x1 = 120'''

# from math import factorial
# n = int(input('Digite um número: '))
# print(f'O fatorial de {n} é : {factorial(n)}')

n = int(input('Digite um número: '))
i = n
f = 1
print(f'Verificando... ')
print(f'{n}! = ', end=' ')
while i > 0:
    print(f'{i}', end='')
    print(' x ' if i > 1 else ' = ', end='')
    f *= i
    i -= 1
print(f'{f}')