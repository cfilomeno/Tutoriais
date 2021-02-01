'''Cores no terminal
ANSI - escape sequence
sempre que quiser usar uma cor no python: \033[STYLE TEXT BACK m'''

'''ex.
\ 033[0;33;44m'''
'''Style (estilo)
    0 None
    1 Bold
    4 Underline
    7 Negative'''

'''Text (texto)
    30  branco
    31  vermelho
    32  verde
    33  amarelo
    34  azul
    35  rosa
    36  ciano
    37  cinza'''

'''Back (fundo)
    40  branco
    41  vermelho
    42  verde
    43  amarelo
    44  azul
    45  rosa
    46  ciano
    47  cinza'''

'''\ 033[0;30;41m
\ 033[4;33;44m
\ 033[1;35;43m
\ 033[30;42m
\ 033[m
\ 033[7;30m'''

'''print('\033[7;33;44mOlá, Mundo!\033[m')'''

'''a = 3
b = 5
print('Os valores são \033[32m{}\033[m e \033[31m{}\033[m!!!'.format(a, b))'''


nome = 'Cleber'
cores = {'limpa': '\033[m,',
         'azul': '\033[34m',
         'amarelo': '\033[33m',
         'pretoebranco': '\033[7;30m'}
print('Olá! Muito prazer em te conhecer, {}{}{}!!!'
      .format(cores['pretoebranco'], nome, cores ['limpa']))
