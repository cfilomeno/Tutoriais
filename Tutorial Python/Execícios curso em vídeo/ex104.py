'''Crie um programa que tenha a função leiaInt(), que vai funcionar de forma
semelhante à função input() do Python, só que fazendo a validação para aceitar
apenas um valor numérico.
Ex: n = leiaInt('Digite um núnmero')'''


def leiaint(msg):
    ok = False
    valor = 0
    while True:
        n = str(input(msg))
        if n.isnumeric():
            valor = int(n)
        else:
            print('\033[0;31mErro! Digite um número inteiro válido.\033[m')
        if ok:
            break
        return valor



n = leiaint('Digite um número: ')
print(f'Você acabou de digitar o número {n}')
