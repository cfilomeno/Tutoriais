'''Faça um programa que leia o sexo de uma pessoa, mas só aceite os valores M ou F.
Caso esteja errado, peça a digitação novamente até ter um valor correto.'''

s = str(input('Digite o sexo da pessoa [M/F]: ')).upper()[0].strip()
while s not in 'MmFf':
    s = str(input('Informação errada! Digite o sexo da pessoa [M/F]: ')).upper()[0].strip()
if s in 'Ff':
    print('OK. Sexo feminino registrado com sucesso.')
else:
    print('OK. Sexo masculino registrado com sucesso.')

