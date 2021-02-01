'''Crie um programa que leia nome, ano de nascimento e carteira de trabalho e
cadastre-os(com idade) em um dicionário
se por acadaso a CTPS for diferente de zero, o dicionário receberá também o ano de
contratação e o salário.
Calcule e acrescente, além da idade, com quantos anos a pessoa vai se aposentar.'''

from datetime import date
cad = dict()
cad['Nome'] = str(input('Nome: '))
nascimento = int(input('Ano de Nascimento: '))
cad['Idade'] = date.today().year-nascimento
cad['CTPS'] = int(input('Carteira de Trabalho (0 não tem): '))

if cad['CTPS'] == 0:
    for k, v in cad.items():
        print(f'- {k} tem o valor {v}')
else:
    contrat = int(input('Ano de contratação: '))
    cad['Contratação'] = contrat
    cad['Salário'] = float(input('Salário: R$ '))
    cad['Aposentadoria'] = 35 - (date.today().year-contrat) + cad['Idade']
    for k, v in cad.items():
        print(f'- {k} tem o valor {v}')
print('-='*15)
