'''Desenvolva um programa que leia o primeiro termo e a razão de uma PA. no final, mostre os 10
primeiros termos dessa progressão.'''

a1 = int(input('Digite o primeiro termo da P.A.: '))
r = int(input('Digite a razão da P.A.: '))
an = a1 + 10*r
for c in range(a1, an, r):
    print(c, end=', ')
print('FIM')
