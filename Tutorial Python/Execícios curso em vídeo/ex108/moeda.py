def metade(preco=0):
    resp = preco/2
    return resp


def dobro(preco=0):
    resp = preco*2
    return resp


def aumentar(preco=0, taxa=0):
    resp = preco + (preco*taxa)/100
    return resp


def diminuir(preco=0, taxa=0):
    resp = preco - (preco * taxa)/100
    return resp


def moeda(preco='R$ ', moeda='R$ '):
    return f'{moeda}{preco:>.2f}'.replace('.', ',')
