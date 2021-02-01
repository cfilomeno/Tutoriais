'''Crie um programa que vai ler vários números e colocar em uma lista. Depois disso, mostre:
A) Quantos números foram digitados.
B) A lista de valores, ordenada de forma decrescente.
C) Se o valor 5 foi digitado e está ou não na lista.'''

# cont5 = cont = 0
# r = 'S'
# lista = []
# while r in 'Ss':
#     n = int(input('Digite um valor: '))
#     cont += 1
#     if n == 5:
#         cont5 += 1
#     lista.append(n)
#     r = str(input('Deseja continuar? [S/N]: ')).upper()[0].strip()
#
# lista.sort(reverse=True)
# print(f'A) Você inseriu {cont} números na lista.')
# print(f'B) Em ordem decrescente de números a lista é: {lista}')
# if 5 in lista:
#     print(f'C) O número 5 foi inserido {cont5} vezes.')
# else:
#     print(f'C) O número 5 não foi inserido nenhuma vez.')





cont5 = cont = 0
r = 'S'
lista = []
while True:
    n = int(input('Digite um valor: '))
    r = str(input('Quer continuar? [S/N]:  '))
    if r in 'Nn':
        break

lista.sort(reverse=True)
print(f'A) Você inseriu {len(lista)} números na lista.')
print(f'B) Em ordem decrescente de números a lista é: {lista}')
if 5 in lista:
    print(f'C) O número 5 foi inserido na lista vezes.')
else:
    print(f'C) O número 5 não foi inserido nenhuma vez.')
