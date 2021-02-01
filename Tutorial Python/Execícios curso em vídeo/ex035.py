'''Desenvolva um programa que leia o comprimento de três retas e diga
ao usuário se elas podem ou não formar um triângulo.
r1
r2
r3'''

r1 = float(input('Qual o comprimento de r1 ? '))
r2 = float(input('Qual o comprimento de r2 ? '))
r3 = float(input('Qual o comprimento de r3 ? '))
if r1 < r2 + r3 and r1 > abs(r2 - r3):
    print('Um triângulo pode ser formado com esses comprimentos, uma vez que a condição'
          ' |r2 - r3| < r1 < r2 + r3 foi satisfeitas, pois: '
          '{} < {} + {} e\n {} > |{} - {}|'.format(r1, r2, r3, r1, r2, r3))
else:
    print('Não é possível formar um triângulo com esses comprimentos, uma vez que a condição'
            ' |r2 - r3| < r1 < r2 + r3 NÃO foi satisfeita, pois: '
            'ou {} < {} + {} está errado ou \n {} > |{} - {}| está errado. Ou as duas condições estão erradas'
            .format(r1, r2, r3, r1, r2, r3))
