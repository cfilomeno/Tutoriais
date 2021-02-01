def metade(preco=0, formato=False):
    resp = preco/2
    return resp if not formato else moeda(resp)


def dobro(preco=0, formato=False):
    resp = preco*2
    return resp if not formato else moeda(resp)


def aumentar(preco=0, taxa=0, formato=False):
    resp = preco + (preco*taxa)/100
    return resp if formato is False else moeda(resp)


def diminuir(preco=0, taxa=0, formato=False):
    resp = preco - (preco * taxa)/100
    return resp if formato is False else moeda(resp)


def moeda(preco='R$ ', moeda='R$ '):
    return f'{moeda}{preco:>.2f}'.replace('.', ',')
