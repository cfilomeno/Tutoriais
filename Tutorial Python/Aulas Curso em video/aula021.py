'''Funções

1/ Interactive Help
2/ Docstrings
3/ Argumentos opcionais
4/ Escopo de variáveis
5/ Retorno de resultados

1) Interactive help (Ajuda interativa)
    help() ->
'''
# help() no console
# help(print)
# print('Olá, mundo!')
# print(input.__doc__) Não necessariamente as mesmas info do help(input)

'''2) docstrings
Manual do comando pesquisado.
Ex. prático:

def contador(i, f, p):
    c = i
    while c <= f:
        print(f'{c}', end='..')
        c += p
    print('FIM!')
    
contador(2, 10, 2) (parâmetros formais)
2 -> i
10 -> f
2 -> p
quando faço a chamada contador(), tenho que saber qual parâmetro é o qual na
funcionalidade.

help(contador)?'''

'''
# def contador(i, f, p):
#   Aspas triplas aqui.
#     Faz uma contagem e mostra na tela.
#     : param i: início da contagem
#     : param f: fim da contagem
#     : param p: passo da contagem
#     : return: sem retorno
#     c = i
#     while c <= f:
#         print(f'{c}', end='')
#         c += p
#     print('FIM')
#
# help(contador())
'''

# def contador(i, f, p):
#   """
#    -> Faz uma contagem e mostra na tela.
#    :param i: início da contagem
#    :param f: fim da contagem
#    :param p: passo da contagem
#    :return: sem retorno
#    """
#     c = i
#     while c <= f:
#         print(f'{c} ', end='')
#         c += p
#     print('FIM')
#
# help(contador)


'''3) Parâmetros opcionais

def somar(a, b, c):
    s = a + b + c
    print(f'A soma vale {s}')


somar(3, 2, 5)
E se eu colocar menos parâmetros?
    somar(8, 4) -> aqui a variável c não tem valor. A não ser que utilize o
                    conceito de parâmetros opcionais.
                def somar(a, b, c=0): ou
                def somar(a=0, b=0, c=0):
        
'''
# def somar(a=0, b=0, c=0):
#     s = a + b + c
#     print(f'A soma vale {s}')
#
# # somar(3, 2, 1)
# # somar(3, 2)
# # somar(3, 2, 1, 8)
# # somar(b=4, c=2)
# somar()

'''4) Escopo de variáveis
O local onde uma variável vai existir e o local onde não mais vai existir
'''


# def teste():
#     x = 8
#     print(f'Na função teste, n vale {n}')
#     print(f'Na função teste, x vale {x}')
#
#
# # Programa Principal
# n = 2
# #     n variável global
# print(f'No programa principal, n vale {n}')
# teste()
# print(f'No programa principal, x vale {x}')
#     # x variável local



# def teste(b):
#     global a
#     b += 4
#     c = 2
#     print(f'A dentro vale {a}')
#     print(f'B dentro vale {b}')
#     print(f'C dentro vale {c}')
#
#
# a = 5
# teste(a)
# print(f'A fora vale {a}')
#  b e c estão no escopo local, só funciona dentro da função
#  a está no escopo global
#  se, dentro da função def teste(b), criar um novo a = 8, o programa vai criar
#     um a local
#   se usar o comando global, o a = 5 vai deixar de existir



'''5) Retorno de valores
return
'''


# def soma(a=0, b=0, c=0):
#     s = a + b + c
#     return s
#
#
# r1 = soma(3, 2, 5)
# r2 = soma(2, 2)
# r3 = soma(6)
#
# print(f'Os resultados foram {r1}, {r2} e {r3}')

'''Parte prática:'''

# Ex 1
# def fatorial(num=1):
#     f = 1
#     for c in range(num, 0, -1):
#         f *= c
#     return f
#
#
# # n = int(input('Digite um número: '))
# # print(f'O fatorial de {n} é igual a {fatorial(n)}')
# f1 = fatorial(5)
# f2 = fatorial(4)
# f3 = fatorial(1)
# print(f'Os resultados são {f1}, {f2} e {f3}.')



# Ex 2

# def par(n=0):
#     if n % 2 ==0:
#         return True
#     else:
#         return False
#
#
# num = int(input('Digite um número: '))
# if par(num):
#     print('É par!')
# else:
#     print('Não é par!')
#
