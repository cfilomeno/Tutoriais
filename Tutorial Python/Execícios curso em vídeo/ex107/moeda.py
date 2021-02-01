def metade(preco):
    resp = preco/2
    return resp


def dobro(preco):
    resp = preco*2
    return resp


def aumentar(preco, taxa):
    resp = preco + (preco*taxa)/100
    return resp


def diminuir(preco, taxa):
    resp = preco - (preco * taxa)/100
    return resp
