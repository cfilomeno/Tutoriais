'''Refaça o desafio 051, lendo o primeiro termo e a razão de uma PA, mostrando OS 10 primeiros
termos da progressão usando a estrutura while'''

a1 = int(input('Digite o primeiro termo da PA: '))
r = int(input(' Digite a razão da PA: '))
an = a1 + 10*r
i = an-1
while i >= a1:
    print(f'{a1}', end='')
    print(' ... ', end='')
    a1 += r

