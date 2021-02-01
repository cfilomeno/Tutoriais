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


def resumo(preco=0, taxaaum=10, taxared=5):
    print('-'*30)
    print('RESUMO DO VALOR'.center(30))
    print('-'*30)
    print(f'Preço analisado: \t{moeda(preco)}')
    print('-' * 30)
    print(f'Dobro do preço: \t{dobro(preco, True)}')
    print(f'Metade do preço: \t{metade(preco, True)}')
    print(f'{taxaaum}% de aumento: \t{aumentar(preco, taxaaum, True)}')
    print(f'{taxared}% de redução: \t{diminuir(preco, taxared, True)}')
    print('-' * 30)
