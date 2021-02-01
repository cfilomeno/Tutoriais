'''Reescreva a função leiaInt() que fizemos no desafio 104, incluindo agora a
possibilidade da digitação de um número de tipo inválido. Aproveite e crie
também uma função leiaFloat() com a mesma funcionalidade'''

def leiaInt(msg):
    while True:
        try:
            n = int(input(msg))
        except (ValueError, TypeError):
            print('ERRO: por favor, digite um número inteiro válido.')
            continue
        else:
            return n


num = int(input('Digite um valor: '))
print(f'O valor digitado foi {num}')
