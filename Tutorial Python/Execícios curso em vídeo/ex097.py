'''Faça um programa que tenha uma funçao chamada escreva(), que receba um texto
qualquer como parâmetro e mostre uma mensagem com tamanho adaptável.
Ex.
escreva(Olá, mundo!)
Saída:
-----------
Olá, Mundo!
-----------
'''


def escreva(txt):
    print('~'*len(txt))
    print(txt)
    print('~'*len(txt))


t = str(input('Digite um texto: '))
escreva(t)
