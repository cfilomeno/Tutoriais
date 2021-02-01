'''Estrutura de repetição while
Laços de repetição (parte 2) com teste lógico
- Se não souber o limite de passos, não posso usar o for.
- <enquanto> não chegar na maçã.. passo...

    enquanto não maçã
        passo
    pega

    while not maçã:
        passo
    pega


    enquanto não maçã
        se chão
            passo
        se buraco
            pula
        se moeda
            pega
    pega

    while not maçã:
        if chão:
            passo
        if buraco:
            pula
        if moeda:
            pega
    pega
'''

'''for c in range(1, 10):
    print(c)
print('Fim')'''

'''c = 1
while c < 10:
    print(c)
    c += 1
print('Fim')'''

'''for c in range(1, 5):
    n = int(input('Digite um valor: '))
print('Fim')'''

'''n = 1
while n != 0:
    n = int(input('Digite um valor: '))
print('Fim')'''


'''r = 'S'
while r == 'S':
    n = int(input('Digite um valor: '))
    r = str(input('Quer continuar? [S/N]')).upper()
print('Fim')'''

n = 1
par = impar = 0
while n != 0:
    n = int(input('Digite um valor: '))
    if n != 0:
        if n % 2 == 0:
            par += 1
        else:
            impar += 1
print('Você digitou {} números pares e {} números ímpares!'.format(par, impar))

