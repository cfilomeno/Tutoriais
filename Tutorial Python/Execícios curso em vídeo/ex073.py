'''Crie uma tupla preenchida com os 20 primeiros colocados da Tabela do Campeonato Brasileiro de Futebol,
na ordem de colocação. Depois mostre:
A) Apenas os 5 primeiros colocados
B) nOs últimos 4 colocados da tabela.
C) Uma lista com os times em ordem alfabética
D) Em que posição na tabela está o time da Chapecoense'''

tabela = ('Flamengo', 'Santos', 'Palmeiras', 'Grêmio', 'Atlético-PR', 'São Paulo', 'Internacional', 'Corinthians',
          'Fortaleza', 'Goiás', 'Bahia', 'Vasco', 'Atlético-MG', 'Fluminense', 'Botafogo', 'Ceará', 'Cruzeiro', 'CSA',
          'Chapecoense', 'Avaí')

print(f'A) Os 5 primeiros colocados são: {tabela[0:6]}')
print(f'B) Os últimos quatro colocados da tabela são: {tabela[len(tabela)-4:]}')
print(f'C) O time da Chapeconse está na posição', tabela.index('Chapecoense')+1)
