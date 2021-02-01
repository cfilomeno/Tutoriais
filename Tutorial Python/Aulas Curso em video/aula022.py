'''Módulos e pacotes

MOdularização:
    - surgiu no inicio de 1960
    - sistemas ficando cada vez maiores
    - Foco: dividir um programa grande
    - Foco: aumentar a legibilidade
    - Foco: facilitar a manutenção'''


def fatorial(n):
    f = 1
    for c in range(1, n+1):
        f *= c
    return f

def dobro(n):
    return n * 2


def triplo(n):
    return n * 3


num = int(input('Digite um valor: '))
fat = fatorial(num)
print(f'O fatorial de {num} é {fat}.')


'''as funções def podem ser colocadas em outro arquivo.py e ser importadas
para o meu programa a partir da função import arquivo.py'''

'''Vantagens de ser ter uma modularização:
    - Organização do código
    - Facilidade na manutenção
    - Ocultação de código detalhado
    - Reutilização em outros projetos
    '''

'''E se os módulos ficarem muito grandes? 
R.: Pacotes -> pastas que contém módulos. 

Ex.funções separadas por assuntos
    - números
    - strings
    - datas
    - cores

Como criar um pocote?
Dentro do projeto python, todo arquivo .py é potencialmente um módulo e
todo pasta é considerada um pacote


Existe uma sintaxe para nomes de pacotes: __init__.py

'''
