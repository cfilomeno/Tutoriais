'''VAriáveis compostas - dicionários

dados = list()
dados.append('Pedro')
dados.append(25)
print(dados[0]) -> Pedro
print(dados[1] -> 25

ìndices literais: dicionários - índices personalizados

Tuplas ()
Listas []
Dicionários {}

dados = dict() ou
dados = {'nome': 'Pedro', 'idade': 25}
print(dados['nome'] -> Pedro
print(dados['idade'] -> 25

dados['sexo'] = 'M
del dados['idade'] -> apaga o elemento

filme = {'título':'Star Wars',
        'ano':1977,
        'diretor':'George Lucas'
        }
print(filme.values()) -> retorna todos os valores do dicionário
print(filme.keys()) -> retorna as definições
print(filme.items()) -> retorna valores e as definições

for k, v in filme.items():
    print(f'O {k} é {v}')    -> O título é Star Wars
                             -> O ano é 1977
                             -> O diretor é George Lucas


posso criar uma lista onde cada elemento tem um dicionário dentro:
locadora:   0: 'Star Wars'  1977    George Lucas
                título      ano     diretor

            1:  'Avengers   2012    'Joss Whedon'
                título      ano     diretor

            2:  'Matrix'    1999    'Wachowski'
                título      ano     diretor

print(locadora[0]['ano']) -> 1977
print(locadora[2]['título] -> Matrix

'''

pessoas = {'nome': 'Cleber', 'sexo': 'M', 'idade': 22}
# print(f'O {pessoas["nome"]} tem {pessoas["idade"]} anos.')
# print(pessoas.keys())
# print(pessoas.values())
# print(pessoas.items())
# for k in pessoas.keys():
#     print(k)
# for k in pessoas.values():
#     print(k)
# pessoas['nome'] = 'Laura'
# for k,v in pessoas.items():
#     print(f'{k} = {v}')


'''Criar dicionário dentro de uma lista:'''
# brasil = []
# estado1 = {'uf': 'Rio de Janiero', 'sigla': 'RJ'}
# estado2 = {'uf': 'São Paulo', 'sigla': 'SP'}
# brasil.append(estado1)
# brasil.append(estado2)
#
# print(brasil[0]['uf'])


estado = dict()
brasil = list()
for c in range(0, 3):
    estado['uf'] = str(input('Unidade Federativa: '))
    estado['sigla'] = str(input('Sigla do Estado: '))
    brasil.append(estado.copy())
    # brasil.append(estado[:])    Não funciona em dicionário
for e in brasil:
    for k, v in e.items():
        # print(f'O campo {k} tem valor {v}') ou
        print(v, end=' ')
    print()

