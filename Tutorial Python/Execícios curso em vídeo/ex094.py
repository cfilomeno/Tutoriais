'''Crie um programa que leia nome, sexo e idade de várias pessoas, guardando
os dados de cada pessoa em um dicionário e todos os dicionários em uma lista.
No final, mostre:
A) Quantas pessoas foram cadastradas
B) A média de idade do grupo.
C) Uma lista com todas as mulheres.
D) Uma lista com todas as pessoas com idade acima da média. '''

conjunto = list()
individual = dict()
soma = media = 0
while True:
    individual.clear()
    individual['nome'] = str(input('Nome: '))
    while True:
        individual['sexo'] = str(input('Sexo [M/F]: ')).upper()[0]
        if individual['sexo'] in 'MF':
            break
        print('ERRO! Por favor, digite apenas M ou F.')
    individual['idade'] = int(input('Idade: '))
    soma += individual['idade']
    conjunto.append(individual.copy())
    while True:
        resp = str(input('Deseja continuar? [S/N]: ')).upper()[0]
        if resp in 'SN':
            break
        print('ERRO! Responda apenas S ou N: ')
    if resp == 'N':
        break
print('-='*30)
print(f'A) Ao todo temos {len(conjunto)} pessoas cadastradas.')
media = soma/len(conjunto)
print(f'B) A média de idade é de {media:5.2f} anos.')
print(f'C) As mulheres cadastradas foram: ', end='')
for p in conjunto:
    if p['sexo'] in 'Ff':
        print(f'{p["nome"]}, ', end='')
print()
print('D) Lista das pessoas que estão acima da média: ')
for p in conjunto:
    if p['idade'] >= media:
        print('   ', end='')
        for k, v in p.items():
            print(f'{k} = {v}; ', end='')
        print()
print('ENCERRADO')

# dados = dict()
# dados['nome'] = list()
# dados['sexo'] = list()
# dados['idade'] = list()
# listamulheres = list()
# r = 'S'
# while r not in 'Nn':
#     nome = str(input('Nome: '))
#     dados['nome'].append(nome)
#     sexo = str(input('Sexo [M/F]: ')).upper()
#     while sexo not in 'MmFf':
#         sexo = str(input('ERRO! Por favor, digite apenas M ou F: ')).upper()
#     dados['sexo'].append(sexo)
#     if sexo in 'Ff':
#         listamulheres.append(nome)
#     idade = int(input('Idade: '))
#     dados['idade'].append(idade)
#     r = str(input('Deseja continuar? [S/N]: '))
#     while r not in 'SsNn':
#         r = str(input('ERRO! Responda apenas S ou N: '))
#     if r in 'Nn':
#         break
# print('-='*30)
# print(dados)
# mediaidade = sum(dados['idade'])/len(dados)
# print(f'B) A média de idade é de {mediaidade} anos.')
# print(f'C) As mulheres cadastradas foram: {listamulheres}')
# print(f'D) Lista das pessoas que estão acima da média:')
#
# for k, v in dados.items():
#     if {v} > mediaidade:
#         print(f'{k} = {v};', end='')
#         print()
