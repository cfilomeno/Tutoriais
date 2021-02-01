'''Crie um programa que simule o funcionamento de um caixa eletrônico. No início, pergunte ao usuário
qual será o valor a ser sacado 9número inteiro) e o programa vai informar quantas cédulas de cada valor
serão entregues.
OBS.: considere que o caixa possui cédulas de R$ 50, R$ 20, R$ 10 e R$ 1'''

print('='*30)
print('{:^30}'.format('BANCO CLF'))
print('='*30)
valor = int(input('Qual valor você quer sacar? R$ '))

cedula = 50
totalced = 0
while True:
    if valor >= cedula:
        valor -= cedula
        totalced += 1
    else:
        if totalced > 0:
            print(f'Total de {totalced} cédulas de {cedula}.')
        if cedula == 50:
            cedula = 20
        elif cedula == 20:
            cedula = 10
        elif cedula == 10:
            cedula = 1
        totalced = 0
        if totalced == 0:
            break
print('fim')
