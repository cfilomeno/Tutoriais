'''Crie um programa que leia vários números inteiros pelo teclado.
O programa só vai parar quando o usuário digitar o valor 999, que é a condição de parada.
No final, mostre QUANTOS NÚMEROS foram digitados e qual foi a SOMA entre eles.
(desconsiderando o flag).'''

# soma = cont = n = 0
# while n != 999:
#     n = int(input('Digite um número: '))
#     soma += n
#     cont += 1
# print(f'Foram digitados {cont-1} números e a soma entre eles é {soma-999}')

soma = cont = 0
while True:
    n = int(input('Digite um número [999 para encerrar]: '))
    if n == 999:
        break
    soma += n
    cont += 1
print(f'Foram digitados {cont} números e a soma entre eles é {soma}')