# '''Crie um programa que leia nome e duas notas de vários alunos e guarde tudo em uma lista composta.
# No final, mostre um boletim contendo a média de cada um e permita que o usuário possa mostrar as notas
# de cada aluno individualmente.'''
#
# temp = list()
# lpri = list()
# r = 'S'
# cont = 1
# while True:
#     temp.append(str(input('Nome do aluno: ')))
#     temp.append(int(input('Nota 1 do aluno: ')))
#     temp.append(int(input('Nota 2 do aluno: ')))
#
#     lpri.append(temp[:])
#     cont += 1
#     temp.clear()
#     r = str(input('Deseja continuar? [S/N]: '))
#     if r in 'Nn':
#         break
# print('-='*30)
# print(f'{"BOLETIM":^30}')
# print(f'{"No."}', f'{"Nome":^20}', f'{"Média"}',)
# print('-'*30)
# for i, l in enumerate(lpri):
#     media = (l[1]+l[2])/2
#     print(f'{i+1}', f'{l[0]:^25}', f'{media}')
# print('-'*30)
# n = 0
# while n != 999:
#     n = int(input('Mostrar notas de qual aluno? (999 interrompe): '))
#     for n, b in enumerate(lpri):
#         print(f'As notas de {b[0]} são {b[1]} e {b[2]}')

ficha = list()
while True:
    nome = str(input('Nome: '))
    nota1 = float(input('Nota 1: '))
    nota2 = float(input('Nota 2: '))
    media = (nota1+nota2)/2
    ficha.append([nome, [nota1, nota2], media])
    r = str(input('Deseja continuar? [S/N]: '))
    if r in 'Nn':
        break

print(f'{"No.":<4}{"Nome":<10}{"Média":>8}')

for i, a in enumerate(ficha):
    print(f'{i:<4}{a[0]:^10}{a[2]:>8.1f}')
print('Len de ficha: ', len(ficha))
while True:
    opc = int(input('Mostrar notas de qual aluno? '))
    if opc == 999:
        print('FINALIZANDO...')
        break
    if opc <= len(ficha)-1:
        print(f'As notas de {ficha[opc][0]} são {ficha[opc][1]}')
print('<<< VOLTE SEMPRE >>>')
