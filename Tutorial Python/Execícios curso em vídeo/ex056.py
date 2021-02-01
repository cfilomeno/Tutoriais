'''Desenvolva um programa que leia o nome, idade e sexo de 4 pessoas. No final do programa, mostre:
- A média de idade do grupo
- Qual é o nome do homem mais velho;
- Quantas mulheres têm menos de 20 anos.'''



somaidade = 0
mediaidade = 0
maioridadehomem = 0
nomevelho = ''
totmulher20 = 0
for p in range(1, 5):
    print('------{}ª PESSOA -----'.format(p))
    nome = str(input('Nome: ')).strip()
    idade = int(input('Idade: '))
    sexo = str(input('Sexo [M/F]: ')).strip()
    somaidade += idade
    if p == 1 and sexo in 'Mm':
        maioridadehomem = idade
        nomevelho = nome
    if sexo in 'Mm' and idade > maioridadehomem:
        maioridadehomem = idade
        nomevelho = nome
    if sexo in 'Ff' and idade < 20:
        totmulher20 += 1
mediaidade = somaidade/4
print('A média da idade do grupo é d {} anos.'.format(mediaidade))
print('O homem mais velho tem {} anos e se chama {}.'.format(maioridadehomem, nomevelho))
print('Ao todo são {} mulheres com menos de 20 anos.'.format(totmulher20))



'''lista_nome = []
lista_idade = []
lista_sexo = []
soma_idade = 0
for c in range(1, 4):
   #nome = str(input('Digite o nome {}: '.format(c)))
    #lista_nome.append(nome)
    idade = int(input('Digite a idade {}: '.format(c)))
    lista_idade.append(idade)
    #sexo = str(input('Digite o sexo {}: '.format(c)))
    #lista_sexo.append(sexo)
print(lista_idade)

for i in lista_idade:
    soma_idade = soma_idade + i
    media_idade = soma_idade/len(lista_idade)
print(media_idade)'''


