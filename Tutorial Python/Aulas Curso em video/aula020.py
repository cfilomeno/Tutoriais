'''
print()
len()
input()
int()
float() ...

Posso criar uma função que mostra a linha:
mostraLinha() = função personalizada = def

1/ Criar uma função que não existe no python:
Ex.:
------------------
SISTEMA DE ALUNOS
------------------
print('-----------------')
print('SISTEMA DE ALUNOS')
print('-----------------')


def mostraLinha():
    print('-----------------')

->
mostraLinha()
print('SISTEMA DE ALUNOS')
mostraLinha()


'''

# print('-'*30)
# print('   CURSO EM VÍDEO   ')
# print('-'*30)
# print('-'*30)
# print('   APRENDA PYTHON   ')
# print('-'*30)
# print('-'*30)
# print('   CLEBER FILOMENO   ')
# print('-'*30)

# def lin():
#     print('-'*30)
#
# lin()
# print('   CURSO EM VÍDEO   ')
# lin()
# print('   APRENDA PYTHON   ')
# lin()
# print('   CLEBER FILOMENO   ')
# lin()

# Parâmetros que se repetem:

# def título(txt):
#     print('-'*30)
#     print(txt)
#     print('-' * 30)
#
#
# # Programa principal
# título('   SISTEMA DE ALUNOS   ')
# título('   CLEBER FILOMENO   ')
# título('   APRENDA PYTHON   ')


'''Parte prática: '''
# Ex. 1:

# a = 4
# b = 5
# s = a + b
# print(s)
#
# a = 8
# b = 9
# s = a + b
# print(s)
#
# a = 2
# b = 1
# s = a + b
# print(s)


# def soma(a, b):
#     s = a + b
#     print(s)
#
#
# # Programa principal
# soma(4, 5)
# soma(8, 9)
# soma(2, 1)
# soma(4, 1)
# soma(b=4, a=5)


def soma(a, b):
    print(f'A = {a} e B = {b}')
    s = a + b
    print(f'A soma A + B = {s}')


# Programa principal
# soma(4, 5)
soma(b=4, a=5)
# soma(7, 2)



'''Empacotar parâmetros:
contador(5,7,3,1,4)
contador(8,4,7)

def contador(*num):         * = desempacotar
'''
# def contador(* num):
#     print(num)
#     for valor in num:
#         print(valor, end=' ')
#     print('FIM!')
#
#
# contador(2, 1, 7)
# contador(8, 0)
# contador(4, 4, 7, 6, 2)



# def contador(* num):
#     tam = len(num)
#     print(f'Recebi os valores {num} e são ao todo {tam} números.')
#
#
# contador(2, 1, 7)
# contador(8, 0)
# contador(4, 4, 7, 6, 2)



# def dobra(lst):
#     pos = 0
#     while pos < len(lst):
#         lst[pos] *= 2
#         pos += 1
#
#
# valores = [7, 2, 5, 0, 4]
# print(valores)
# dobra(valores)
# print(valores)



# def soma(* valores):
#     s = 0
#     for num in valores:
#         s += num
#     print(f'Somando os valores {valores} temos {s}')
#
#
# soma(5, 2)
# soma(2, 5, 7)

