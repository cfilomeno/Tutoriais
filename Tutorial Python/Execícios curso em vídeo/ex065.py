'''Crie um programa que leia vários números inteiros pelo teclado. No final da execução, mostre
a média entre todos os valores e qual foi o maior e o menor valores lidos. O programa deve
perguntar ao usuário se ele quer ou não continuar a digitar valores.'''


media = quant = maior = menor = soma = 0
r = 'S'
while r in 'Ss':
    n = int(input('Insira um número: '))
    soma += n
    quant += 1
    if quant == 1:
        maior = menor = n
    else:
        if n > maior:
            maior = n
        if n < menor:
            menor = n
    r = str(input('Deseja continuar? [S/N]: ')).upper().strip()[0]
media = soma/quant
print('Você digitou {} números e a média foi {}.'.format(quant, media))
print('O maior valor foi {} e o menor foi {}.'.format(maior, menor))
#print('Valor máximo inserido: {}. Valor mínimo inserido {}.'.format(max(n), min(n)))

print('FIM')
