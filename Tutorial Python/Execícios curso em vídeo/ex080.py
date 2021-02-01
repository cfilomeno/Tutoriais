'''Crie um programa onde o usuário possa digitar cinco valores numéricos e cadastre-os em uma lista, já na posição
correta de inserção (sem usar o sort(). No final, mostre a lista ordenada na tela.'''


lista = []
for i in range(0, 5):
    n = int(input('Digite um valor: '))
    if i == 0 or n > lista[len(lista)-1]:
        lista.append(n)
    else:
        pos = 0
        while pos < len(lista):
            if n <= lista[pos]:
                lista.insert(pos, n)
                break
            pos += 1
print('=-'*30)
print(f'Os valores digitados em ordem foram {lista}')





#
# i = 0
# m = 0
# lista = []
# while i < 5:
#     n = int(input('Digite um valor: '))
#     i += 1
#     if i == 1:
#         lista.append(n)
#         i += 1
#         m = n
#     else:
#         if n > m:
#             lista.insert(i + 1, n)
#         elif n < m:
#             lista.insert(i - 1, n)
#         i += 1
#
# print(lista)


