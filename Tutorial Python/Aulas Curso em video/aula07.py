#Operações Aritméticas
# + Adição
# - Subtração
# * Multiplicação
# / Divisão
# ** Potẽncia. Ex 5**2 == 25
    # // Divisão inteira. Ex: 5//2 == 2
    # % Resto da divisão. Ex: 5%2 == 1
# Operando: número (ex 5 e 2), string... Ex.: 5+2==
#Ordem de precedência
    #1 () parênteses
    #2 ** exponenciação
    #3 *, /, //, %
    #4 +, - adição e subtração
#--------------------------------------------------------------------
#nome = input('Qual o teu nome?')
#print('prazer em te conhecer {:=^20}!'.format(nome))

n1 = int(input('Primeiro valor:'))
n2 = int(input('Segundo valor:'))
s = n1+n2
m = n1*n2
d = n1/n2
di = n1//n2
e = n1**n2
print('A soma vale {}, \n o produto é {} e a \n divisão é {}'.format(s, m, d), end=' >>> ')
print('Divisão interia {} e potência {}'.format(di, e))
