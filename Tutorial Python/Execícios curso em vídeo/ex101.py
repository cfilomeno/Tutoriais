'''Crie um programa que tenha uma função chamada voto() que vai receber como
parâmetro o ano de nascimento de uma pessoa, retornando um valor literal indicando
se uma pessoa tem voto negado, opcional ou obrigatório nas eleições.'''




def voto(ano):
    from datetime import date
    idade = date.today().year - nasc
    if 16 <= idade < 18 or idade >= 65:
        return f'Com {idade} anos: VOTO OPCIONAL'
    elif idade < 16:
        return f'Com {idade} anos: NÃO VOTA.'
    else:
        return f'Com {idade} anos: VOTO OBRIGATÓRIO'


nasc = int(input('Data de nascimento: '))
print(voto(nasc))
