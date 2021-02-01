'''Faça um programa que mostre a tabuada de vários números, um de cada vez, para cada valor digitado pelo usuário.
O programa será interrompido quando o número solicitado for negativo.'''

cont = 0
while True:
    tabuada = int(input('Qual tabuada deseja verificar? '))
    if tabuada < 0:
        break
    print(f'A tabuada de {tabuada} é: ')
    print('-=-'*20)
    while cont <= 10:
        print(f'{tabuada} X {cont} = {tabuada*cont}')
        cont += 1
        tabuada += 0
    print('-=-'*20)
print('Fim')