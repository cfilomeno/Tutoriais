'''Crie um programa que leia vários números inteiros pelo teclado. No final da execução, mostre
a média entre todos os valores e qual foi o maior e o menor valores lidos. O programa deve
perguntar ao usuário se ele quer ou não continuar a digitar valores.'''

cont = soma = menor = media = maior = 0
r = 'S'

while r in 'Ss':
    n = int(input('Digite um número: '))
    soma += n
    cont += 1
    if cont == 1:
        maior = menor = n
    else:
        if n > maior:
            maior = n
        if n < menor:
            menor = n
    r = str(input('Deseja continuar? [S/N]: ')).upper().strip()[0]
media = soma/cont
print(f'A média dos valores inseridos é {media}')
print(f'O maior valor digitado foi {maior}. O menor valor digitado foi {menor}')
print('Fim')
