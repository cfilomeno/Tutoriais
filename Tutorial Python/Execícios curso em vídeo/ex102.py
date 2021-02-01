'''Crie um programa que tenha uma função fatorial() que receba dois parâmetros:
o primeiro que indique o número a calcular e o outro chamado show, que será um valor
lógico (opcional) indicando se será mostrado ou não na tela o processo de
cálculo do fatorial.'''


def fatorial(num, show=False):
    """
    -> Calcula o fatorial de um número.
    :param num: o número a ser calculado.
    :param show: (opcional) Mostrar ou não a conta.
    :return: o valor do fatorial de um número n.
    """
    f = 1
    for c in range(num, 0, -1):
        if show:
            print(c, end='')
            if c > 1:
                print(' x ', end='')
            else:
                print(' = ', end='')
        f *= c
    return f


n = int(input('Digite um número: '))
print(fatorial(n, show=True))
