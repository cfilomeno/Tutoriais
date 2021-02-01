'''Faça um programa que tenha uma função chamada ficha(), que receba dois
parâmetros opcionais: o nome de um jogador e quantos gols ele marcou.
O programa deverá ser capaz de mostrar a ficha do jogador, mesmo que algum dado
não tenha sido informado corretamente.'''


def ficha(jog='<desconhecido>', gol=0):
    print(f'O jogador {jog} fez {gol} gols em 2020.')


n = str(input('Nome do jogador: '))
g = input('Gols marcados: ')
if g.isnumeric():
    g = int(g)
else:
    g = 0
if n.strip() == '':
    ficha(gol=g)
else:
    ficha(n, g)

