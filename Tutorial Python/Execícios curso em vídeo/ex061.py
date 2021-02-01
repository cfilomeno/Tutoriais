'''Refaça o desafio 051, lendo o primeiro termo e a razão de uma PA, mostrando OS 10 primeiros
termos da progressão usando a estrutura while'''

# a1 = 1
# while a1 != 0:
#     a1 = int(input('Primeiro termo da PA: '))
#     r = int(input('Razão da PA: '))
#     an = a1 + (10 - 1)*r
#     for i in range(a1, an, r):
#         print('{}'.format(i), end='...')
#     print('ACABOU!')
# print('Fechado.')


# a1 = 1
# while a1 != 0:
#     a1 = int(input('Digite o primeiro termo da P.A.: '))
#     r = int(input('Digite a razão da P.A.: '))
#     an = a1 + (10 - 1)*r
#     for i in range(a1, an, r):
#         print('{}'.format(i), end='...')
#     print('ACABOU!')
#     print('\n')
#
# print('Fim')


# a1 = int(input('Primeiro termo da PA: '))
# r = int(input('Razão da PA: '))
# an = a1
# cont = 1
# while cont <= 10:
#     print('{} .. '.format(an), end='')
#     an += r
#     cont += 1
# print('FIM')
a1 = int(input('Primeiro termo da PA: '))
r = int(input('Razão da PA: '))
an = a1
c = 1
while c <= 10:
    print('{}'.format(an), end='')
    print(' .. ' if c < 10 else '. ', end='')
    an += r
    c += 1
print('FIM')




















