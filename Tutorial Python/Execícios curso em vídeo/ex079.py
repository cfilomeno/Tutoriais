'''Crie um programa onde o usuário possa digitar vários valores numéricos e cadastre-os em um lista.
Caso o número já exista lá dentro, ele não será adicionado. No final, serão exibidos todos os valores únicos digitados,
em ordem crescente.'''

r = 'S'
lista = []
while r in 'Ss':
    n = int(input('Digite um valor: '))
    if n not in lista:
        lista.append(n)
        r = str(input('Deseja continuar? [S/N]: ')).upper()[0].strip()
    else:
        print('O número já foi inserido.')
        r = str(input('Deseja continuar? [S/N]: ')).upper()[0].strip()

print(f'A lista gerada é: {lista}.')
lista.sort()
print(f'A lista em ordem crescente é: {lista}')
