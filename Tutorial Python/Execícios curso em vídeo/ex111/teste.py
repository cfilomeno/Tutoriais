'''111 Crie um pacote chamado utilidadesCeV que tenha dois módulos internos chamados
moeda e dado.
Transfira todas as funções utilizadas nos desafios 107 a 110 para o primeiro
pacote e mantenha tudo funcionando.'''

from ex111.utilidadecev import moeda

pre = float(input('Digite o preço: R$ '))
moeda.resumo(pre, 20, 12)
