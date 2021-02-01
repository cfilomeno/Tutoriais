'''Crie um programa que leia dois valores e mostre menu na tela:
[1] somar
[2] multiplicar
[3] maior
[4] novos números
[5] sair do programa
Seu programa deverá realizar a operação solicitada em cada caso.'''

v1 = int(input('Primeiro valor: '))
v2 = int(input('Segundo valor: '))
op = 0
while op != 5:
    print('''
    [ 1 ] Somar os valores
    [ 2 ] Multiplicar os valores
    [ 3 ] Mostrar o maior valor
    [ 4 ] Inserir novos valores
    [ 5 ] Encerrar o programa
    ''')
    op = int(input('Solicite a operação desejada: '))
    if op == 1:
        print('SOMA: {} + {} = {}.'.format(v1, v2, v1+v2))
    elif op == 2:
        print('PRODUTO: {} x {} = {}.'.format(v1, v2, v1*v2))
    elif op == 3:
        if v1 > v2:
            print('{} é maior que {}.'.format(v1, v2))
        elif v2 > v1:
            print('{} é maior que {}.'.format(v2, v1))
        else:
            print('Os valores são iguais. {}!'.format(v1))
    elif op == 4:
        v1 = int(input('Primeiro valor:'))
        v2 = int(input('Segundo valor: '))
    elif op == 5:
        print('Finalizando o programa...')
print('Programa encerrado com sucesso.')






















# from time import sleep
# n1 = int(input('Digite o primeiro número: '))
# n2 = int(input('Digite o segundo número: '))
# op = 0
# while op != 5:
#         print('''
#         [1] Somar
#         [2] Multiplicar
#         [3] Mostrar o maior número
#         [4] Inserir novos números
#         [5] Sair do programa
#         ''')
#         op = int(input('>>>>> Qual operação deseja executar? '))
#         if op == 1:
#             soma = n1 + n2
#             print('A soma entre {} e {} é {}.'.format(n1, n2, soma))
#
#         elif op == 2:
#             produto = n1*n2
#             print('O produto {} x {} é {}.'.format(n1, n2, produto))
#
#         elif op == 3:
#             if n1 > n2:
#                 maior = n1
#             else:
#                 maior = n2
#             print('Entre {} e {}, o maior valor é {}.'.format(n1, n2, maior))
#         elif op == 4:
#             print('Informe os números novamente: ')
#             n1 = int(input('Primeiro valor: '))
#             n2 = int(input('Segundo valor: '))
#
#         elif op == 5:
#             print('Finalizando...')
#         else:
#             print('Opção inválida. Tente novamente.')
#         print('-=-'*10)
#         sleep(2)
# print('Fim do programa! Volte sempre!')




# n1 = int(input('Primeiro valor: '))
# n2 = int(input('Segundo valor: '))
# c = 0
#
# while c != 5:
#     print('''
#         [1] Soma
#         [2] Produto
#         [3] Maior
#         [4] Novos números
#         [5] Sair
#     ''')
#     c = int(input('Selecione a opção: '))
#     if c == 1:
#         print('SOMA: {} + {} = {}.'.format(n1, n2, n1+n2))
#
#     elif c == 2:
#         print('PRODUTO: {} X {} = {}.'.format(n1, n2, n1*n2))
#
#     elif c == 3:
#         if n1 > n2:
#             print('{} é maior que {}.'.format(n1, n2))
#         elif n2 > n1:
#             print('{} é maior que {}'. format(n2, n1))
#         else:
#             print('{} e {} são iguais.'.format(n1, n2))
#
#     elif c == 4:
#         n1 = int(input('Primeiro valor: '))
#         n2 = int(input('Segundo valor: '))
#
#     elif c == 5:
#         print('Finalizando...')
#
#
# print('Fim')


