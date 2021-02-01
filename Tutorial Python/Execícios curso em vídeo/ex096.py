'''Faça um programa que tenha uma função chamada área(), que receba as dimensões
de um terreno retangular largura e comprimento) e mostre a área do terreno.'''


def area(c, l):
    a = c * l
    print(f'A área do terreno é {a} m².')


c = float(input('Comprimento do terreno (m): '))
l = float(input('Largura do terreno (m): '))
area(c, l)
