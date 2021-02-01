'''Faça um programa que mostre a tabuada de vários números, um de cada vez, para cada valor digitado pelo usuário.
O programa será interrompido quando o número solicitado for negativo.'''

cont = 0
while True:
    n = int(input('Verificar a tabuada do número: '))
    if n < 0:
        break
    while cont <= 10:
        print(f'{n} x {cont} = {n*cont}')
        cont += 1
    cont -= 10

print('fim')
