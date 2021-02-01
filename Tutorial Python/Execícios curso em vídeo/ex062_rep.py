'''Melhore o DESAFIO 061, perguntando para o usuário se ele quer mostrar mais alguns termos.
O programa encerra quando ele disser que quer mostrar 0 termos.'''

a1 = int(input('Digite o primeiro termo da PA: '))
r = int(input('Digite a razão da PA: '))
an = a1
mais = 10
c = 1
n = 0

while mais != 0:
    n += mais
    while c <= n:
        print(f'{an}..', end='')
        an += r
        c += 1
    print('PAUSA.')
    mais = int(input('Quantos termos deseja adicionar na PA? '))
print(f'Fim. O número de termos na PA é {n}.')

