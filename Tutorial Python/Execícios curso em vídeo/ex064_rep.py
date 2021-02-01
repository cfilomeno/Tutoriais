'''Crie um programa que leia vários números inteiros pelo teclado. O programa só vai parar quando
o usuário digitar o valor 999, que é a condição de parada. No final, mostre quantos números foram
digitadose qual foi a soma entre eles (desconsiderando o flag)'''

n = 0
c = 0
s = 0
while n != 999:
    n = int(input('Digite um número: '))
    c += 1
    s += n
print(f'Você inserium {c-1} números e a soma entre eles é {s-999}.')
