'''109 Modifique as funções que foram criadas no desafio 107 para que elas aceitem
um parâmetro a mais, infomando se o valor retornado por elas vai ser ou não
formatado pela função moeda(), desenvolvida no desafio 108.'''


from ex109 import moeda

pre = float(input('Digite o preço: R$ '))
print(f'A metade de {moeda.moeda(pre)} é {moeda.metade(pre, True)}')
print(f'O dobro de {moeda.moeda(pre)} é {moeda.dobro(pre, True)}')
# tax = int(input('Taxa: '))
print(f'Aumentando 10%, temos R$ {moeda.aumentar(pre, 10, True)}')
print(f'Reduzindo 13%, temos R$ {moeda.diminuir(pre, 13, True)}')
