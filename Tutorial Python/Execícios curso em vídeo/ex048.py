'''Faça um programa que calcule a soma entre todos os números ímpares que são múltiplos de três e
que se encontram no intervalo de 1 até 500.'''
s = 0
cont = 0
for c in range(0, 500):
    if c % 2 == 1 and c % 3 == 0:
        print(c)
        s += c
        cont += 1
print('_'*48)
print('A soma final dos {} números ímpares múltiplos de 3 é: \033[1;34m{}\033[m'.format(cont, s))
