'''Crie um programa que leia o nome completo de uma
pessoa e mostre:
- O nome com todas as letras maiúsculas
- o nome com todas as letras minúsculas
- Quantas letras ao tod (sem considerar espaços)
- Quantas letras tem o primeiro nome'''

nome = str(input('Digite o nome completo: ')).strip()
print(nome.upper())
print(nome.lower())
print('Teu nome tem, ao todo, {} letras'.format(len(nome) - nome.count(' ')))
print('Teu primeiro nome tem {} letras'.format(len(nome.split()[0])))
