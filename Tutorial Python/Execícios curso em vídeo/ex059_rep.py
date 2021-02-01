'''Crie um programa que leia dois valores e mostre menu na tela:
[1] somar
[2] multiplicar
[3] maior
[4] novos números
[5] sair do programa
Seu programa deverá realizar a operação solicitada em cada caso.'''

v1 = int(input('Digite o primeiro valor: '))
v2 = int(input('Digite o segundo valor: '))
op = 0
while op != 5:
    op = int(input('''
    Escolha a operação que deseja realizar: 
        [1] somar
        [2] multiplicar
        [3] maior
        [4] novos números
        [5] sair do programa'''))
    if op == 1:
        print(f'Soma: {v1} + {v2} = {v1+v2}')
    elif op == 2:
        print(f'Multiplicação: {v1} x {v2} = {v1*v2}')
    elif op == 3:
        if v1 > v2:
            print(f'{v1} é maior que {v2}')
        elif v1 < v2:
            print(f'{v2} é maior que {v1}')
        else:
            print(f'Os dois valores são iguais.')
    elif op == 4:
        v1 = int(input('Digite outro primeiro valor: '))
        v2 = int(input('Digite outro segundo valor: '))
    elif op == 5:
        print('Encerrando o programa...')
print('Programa encerrado')
