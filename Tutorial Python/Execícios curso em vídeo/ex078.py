'''Faça um porograma que leia 5 valores numérios e guarde -os em uma lista.
No final, mostre qual foi o maior e o menor valor digitado e as suas respectivas posições na lista
'''

lista = []
i = 0
while i < 5:
    n = int(input('Digite um valor: '))
    i += 1
    lista.append(n)
print(f' A lista gerada é {lista}. O valor máximo é {max(lista)} e valor mínimo é {min(lista)}.')
