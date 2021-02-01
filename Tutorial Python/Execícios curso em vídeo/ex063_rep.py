'''Escreva um programa que leia um número n inteiro e mostre na tela os n primeiros elementos de
uma Sequẽncia de Fibonacci. Ex: 0 -> 1 -> 1 -> 2 -> 3 -> 5 -> 8'''

m = 0
t1 = 0
t2 = 1
cont = 3
n = int(input('Quantos elementos deseja exibir da Sequência Fibonacci? '))
print(f'{t1}..{t2}..', end='')
while m != 999:
    n += m
    while cont <= n:
        t3 = t1 + t2
        print(f'{t3}..', end='')
        t1 = t2
        t2 = t3
        cont += 1
    m = int(input('Quantos mais? '))
print('Fimbonacci')
