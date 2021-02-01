#Algoritmo que leia um número e mostre o seu dobro, triplo e raiz quad
n = int(input('\033[31mDigite um número:\033[m '))
d = n*2
t = n*3
sq = n**(0.5)
print('Dobro: \033[34m{0}\033[m\n Triplo: \033[36m{1}\033[m\n Raiz quadrada:\033[35m{2}\033[m'.format(d, t, sq))
