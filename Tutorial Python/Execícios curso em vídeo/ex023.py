'''Faça um programa que leia um número de 0 a 9999
e mostre na tela cada um dos dígitos separados
Ex.: Digite um número: 1834
unidade: 4
dezena: 3
centena: 8
milhar: 1'''

'''num = input('Digite um número: ')
print('Unidade: {}\n Dezena: {}\n Centena: {} \n Milhar: {}'
      .format(num.split()[0][3], num.split()[0][2], num.split()[0][1], num.split()[0][0]))'''

'''num = int(input('Informe um número: '))
n = str(num)
print('Unidade: {}'.format(n[3]))
print('Dezena: {}'.format(n[2]))
print('Centena: {}'.format(n[1]))
print('Milhar: {}'.format(n[0]))'''

num = int(input('Informe um número: '))
u = num // 1 % 10
d = num // 10 % 10
c = num // 100 % 10
m = num // 1000 % 10
print('Unidade: {}'.format(u))
print('Dezena: {}'.format(d))
print('Centena: {}'.format(c))
print('Milhar: {}'.format(m))