'''108 Adapte o código do desafio 107, criando uma chamada moeda() que consiga mostrar
os valores como um valor monetário formatado.'''


from ex108 import moeda

pre = float(input('Digite o preço: R$ '))
print(f'A metade de {moeda.moeda(pre)} é {moeda.moeda(moeda.metade(pre))}')
print(f'O dobro de {moeda.moeda(pre)} é {moeda.moeda(moeda.dobro(pre))}')
tax = int(input('Taxa: '))
print(f'Aumentando {tax}%, temos R$ {moeda.moeda(moeda.aumentar(pre, tax))}')

