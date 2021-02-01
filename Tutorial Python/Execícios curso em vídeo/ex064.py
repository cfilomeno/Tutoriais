'''Crie um programa que leia vários números inteiros pelo teclado. O programa só vai parar quando
o usuário digitar o valor 999, que é a condição de parada. No final, mostre quantos números foram
digitadose qual foi a soma entre eles (desconsiderando o flag)'''

n = 0
contagem = 0
soma = 0
while n != 999:
    n = int(input('Digite um número inteiro: '))
    soma += n
    contagem += 1
print('A soma total de {} números é igual a {}'.format(contagem-1, soma-999))
