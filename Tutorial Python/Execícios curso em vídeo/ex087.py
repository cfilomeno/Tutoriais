'''Aprimore o desafio anterior, mostrando no final:
A) A soma de todos os valores pares digitados.
B) A soma dos valores da terceira coluna.
C) O maior valor da segunda linha.'''

maior = scol = spar = 0
matriz = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
for l in range(0, 3):
    for c in range(0, 3):
        matriz[l][c] = (int(input(f'Digite o valor de [{l}, {c}]: ')))
        if matriz[l][c] % 2 == 0:
            spar += matriz[l][c]
print('-='*30)
for l in range(0, 3):
    for c in range(0, 3):
        print(f'[{matriz[l][c]:^5}]', end='')
    print()
print(f'A) A soma de todos os valores pares digitados é {spar}.')

for l in range(0, 3):
    scol += matriz[l][2]
print(f'A soma dos valores da terceira coluna é {scol}.')

for c in range(0, 3):
    if matriz[1][c] > maior:
        maior = matriz[1][c]
print(f'O maior número da segunda linha é {maior}')
