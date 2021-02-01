'''Crie um programa que vai gerar cinco números aleatórios e colocar em uma tupla.
Depois disso, mostre a listagem de números gerados e também indeique omenor e o maior valor que estão na tupla'''

from random import randint
# r1 = randint(0, 20)
# r2 = randint(0, 20)
# r3 = randint(0, 20)
# r4 = randint(0, 20)
# r5 = randint(0, 20)
# t = (r1, r2, r3, r4, r5)
# print(t)
# print(f'O menor número da tupla é {min(t)} e o maior número é {max(t)}')

t = (randint(0, 20),
     randint(0, 20),
     randint(0, 20),
     randint(0, 20),
     randint(0, 20))
print(t)
print(f'Mínimos: {min(t)}. Máximo: {max(t)}')
