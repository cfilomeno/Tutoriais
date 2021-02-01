'''Faça um programa que leia o nome completo de uma pessoa, mostrando em seguida o
primeiro  e o último nome separadamente.
Ex. : Ana maria de Souza
primeiro = Ana
último = Souza'''

nome = str(input('Digite teu nome completo: ')).strip()
n = nome.split()
print('Muito prazer em conhecê-lo!\n Teu primeiro nome é {}.'.format(n[0]))
print('Teu último nome é {}.'.format(n[len(n)-1]))
