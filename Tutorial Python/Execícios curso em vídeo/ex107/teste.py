'''Crie um módulo chamado moeda.py que tenha as funções incorporadas
aumentar(), diminuir(), dobro()_e metade().
Faça também um programa que importe esse módulo e use algumas dessas funções.'''

import moeda

pre = float(input('Digite o preço: R$ '))
print(f'A metade de {pre} é {moeda.metade(pre)}')
print(f'O dobro de {pre} é {moeda.dobro(pre)}')
tax = int(input('Taxa: '))
print(f'Aumentando {tax}%, temos R$ {moeda.aumentar(pre, tax)}')

