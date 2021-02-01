''' Refaça o DESAFIO 009, mostrando a tabuada de um número que o usuário escolher, só que agora utilizando
um laço for.'''

n = int(input('Ver a tabuada do: '))
print('Adição:')
for c in range(0, 11):
    print('{} + {} = {}'.format(n, c, n+c))
print('--'*5)
print('Subtração:')
for c in range(n, 11):
    print('{} - {} = {}'.format(c, n, c-n))
print('--'*5)
print('Multiplicação: ')
for c in range(0, 11):
    print('{} x {} = {}'.format(n, c, n*c))
print('--'*5)
print('Divisão: ')
for c in range(0, 11):
    print('{} / {} = {:.1f}'.format(c, n, c/n))
print('--'*5)
