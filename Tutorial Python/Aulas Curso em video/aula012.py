'''Condições aninhadas (em formato de ninho: uma coisa dentro da outra)
se =
if carro.esquerda():
            carro.siga() ...
senão se =
elif carro.direita():
            carro.siga()...
elif carro.ré():

senão
 = else:
    '''

nome = str(input('Qual é o teu nome? '))
if nome == 'Cleber':
    print('Que nome bonito!')
elif nome == 'Pedro' or nome ==  'Paulo' or nome == 'Maria':
    print('Teu nome é bem popular no Brasil.')
elif nome in 'Ana Cláudia Jéssia Juliana':
    print('Belo nome feminino')

print('Tenha um bom dia, {}!'.format(nome))
