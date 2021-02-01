'''Desenvolva um programa que leia quatro valores pelo teclado e guarde-os em uma tupla. No final, mostre:
A) Quantas vezes apareceu o valor 9
B) Em que posição foi digitado o primeiro valor 3
C) quais foram os números pares'''

t = (int(input('Digite o 1º número: ')),
     int(input('Digite o 2º número: ')),
     int(input('Digite o 3º número: ')),
     int(input('Digite o 4º número: ')))
print(f'Você digitou os valores {t}.')
print(f'A) O número 9 apareceu', t.count(9), 'vezes.')
if 3 in t:
    print(f'B) A primeira vez que o valor 3 aparece é em {t.index(3)+1}')
else:
    print(f'B) O valor 3 não aparece na tupla.')
print(f'C) Os números pares inseridos são ', end='')
for p in t:
    if p % 2 == 0:
        print(p, end=', ')
