'''Crie um programa que tenha uma tupla totalmente preenchida com uma contagem por extenso, de zero até vinte.
Seu programa deverá ler um número pelo teclado (entre 0 e 20) e mostrá-lo por extenso'''

ext = ('zero', 'um', 'dois', 'três', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze',
       'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove', 'vinte')

f = 'S'
while f in 'Ss':
    num = int(input('Digite um número: '))
    while num not in range(0, len(ext)):
        num = int(input('Opção inválida. Digite um número: '))
    print(ext[num])
    print('-_-'*10)
    f = str(input('Deseja continuar? [S/N]: ')).upper()[0].strip()



# while num not in range(0, 11):
#     num = int(input('Tente novamente. Digite um número: '))
