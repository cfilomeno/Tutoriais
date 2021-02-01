#Ler o nome de 4 diferentes alunos
#Escrever o nome de um aluno sorteado
'''import random
nomes = ['Cleber', 'Luiz', 'Alan', 'Lennine']
print(random.choice(nomes)'''

from random import choice
n1 = str(input('Primeiro aluno: '))
n2 = str(input('Segundo aluno: '))
n3 = str(input('Terceiro aluno: '))
n4 = str(input('Quarto aluno: '))
list = [n1, n2, n3, n4]
escolhido = choice(list)
print('O aluno escolhido foi {}'.format(escolhido))
