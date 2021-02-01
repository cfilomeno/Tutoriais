'''Faça um programa que leia nome e média de um aluno, guardado também
a situação em um dicionário. No final, mostre o conteúdo da estrutura na tela.'''

aluno = dict()
aluno['nome'] = str(input('Nome do aluno: '))
aluno['média'] = float(input(f'Média de {aluno["nome"]}: '))

if aluno['média'] < 5:
    aluno['situação'] = 'Reprovado'
elif 5 <= aluno['média'] < 7:
    aluno['situação'] = 'Recuperação'
else:
    aluno['situação'] = 'Aprovado'
print('-='*30)
for k, v in aluno.items():
    print(f'{k} é igual a {v}')
