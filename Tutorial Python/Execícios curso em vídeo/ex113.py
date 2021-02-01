'''Reescreva a função leiaInt() que fizemos no desafio 104, incluindo agora a
possibilidade da digitação de um número de tipo inválido. Aproveite e crie
também uma função leiaFloat() com a mesma funcionalidade'''


def leiaint(msg):
    while True:
        try:
            n = int(input(msg))
        except (ValueError, TypeError):
            print('\033[0;31mERRO: por favor, digite um número inteiro válido.\033[m')
            continue
        except KeyboardInterrupt:
            print('\n\033[0;31mEntrada de dados interrompida pelo usuário\033[m')
            return 0
        else:
            return n


def leiafloat(msg):
    while True:
        try:
            n = float(input(msg))
        except (ValueError, TypeError):
            print('\033[0,31mERRO: Digite um valor real válido.\033[m')
        except KeyboardInterrupt:
            print('\033[0,31mUsuário preferiu não digitar um número.\033[m')
            return 0
        else:
            return n


n1 = leiaint('Digite um valor inteiro: ')
n2 = leiafloat('Digite um valor real: ')
print(f'Os valores digitados foram: \n Inteiro: {n1} e \n Real: {n2}')
