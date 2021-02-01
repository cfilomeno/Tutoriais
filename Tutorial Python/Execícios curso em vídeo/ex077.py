'''Crie um programa que tenha uma tupla com várias palavras (não usar acentos). Depois disso, você deve mostrar, para
cada palavra, quais são as suas vogais.'''

t = ('APRENDER', 'PROGRAMAR', 'LINGUAGEM', 'PYTHON', 'CURSO', 'GRATIS', 'ESTUDAR', 'PRATICAR', 'TRABALHAR', 'MERCADO',
     'PROGRAMADOR', 'FUTURO')

for i in t:
    print(f'\nNa palavra {i} temos ', end='')
    for vogal in i:
        if vogal in 'AEIOU':
            print(vogal.lower(), end='')
