'''Crie um programa que leia o nome de uma pessoa e diga se ela
tem 'SILVA' no nome'''
'''nome = str(input('Digite o nome: ')).strip()
print('SILVA' in nome.upper())'''

nome = str(input('Digite o nome completo: ')).strip()
print('Teu nome tem Silva? {}'.format('SILVA' in nome.upper()))
