'''Desenvolva um programa que leia o nome, idade e sexo de 4 pessoas. No final do programa, mostre:
- A média de idade do grupo
- Qual é o nome do homem mais velho;
- Quantas mulheres têm menos de 20 anos.'''

somaidade = 0
idademaisvelho = 0
nomemaisvelho = ''
totmulher20 = 0

for i in range(1, 5):
    nome = str(input(f'Digite aqui o nome da {i}ª pessoa: '))
    idade = int(input(f'Digite a idade da {i}ª pessoa:'))
    sexo = str(input(f'Digite o sexo da {i}ª pessoa: '))
    somaidade += idade
    if i == 1 and sexo in 'Mm':
        idademaisvelho = idade
        nomemaisvelho = nome
    if sexo in 'Mm' and idade > idademaisvelho:
        idademaisvelho = idade
        nomemaisvelho = nome
    if sexo in 'Ff' and idade < 20:
        totmulher20 += 1

mediaidade = somaidade/4
print(f'A média de idade do grupo é: {mediaidade}')
print(f'O homem mais velho é o {nomemaisvelho} e ele tem {idademaisvelho}')
print(f'O número de mulheres menores de 20 anos é {totmulher20}')