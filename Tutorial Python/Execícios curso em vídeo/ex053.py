'''Crie um programa que leia uma frase qualquer e diga se ela é um palíndromo, desconsiderando
os espaços. Ex: APÓS A SOPA; A SACADA DA CASA; A TORRE DA DERROTA; O LOBO AMA O BOLO;
ANOTARAM A DATA DA MARATONA'''

'''frase = str(input('Digite uma frase: ')).strip().upper()
f = frase.replace(' ', '')
reverse = f[::-1]
if reverse == f:
    print('Esta frase é um palíndromo !')
else:
    print('Esta frase \033[1;31mNÃO\033[m é um palíndromo !')'''

frase = str(input('Digite uma frase: ')).strip().upper()
palavras = frase.split()
junto = ''.join(palavras)
inverso = ''
for letra in range(len(junto)-1, -1, -1):
    print(junto[letra], end='')
    inverso += junto[letra]
if inverso == junto:
    print('Temos um palíndromo!')
else:
    print('Não temos um palíndromo.')
print(junto, inverso)
