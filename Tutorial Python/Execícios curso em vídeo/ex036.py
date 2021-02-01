'''Escreva um programa para aprovar o empréstimo bancário
para a compra de uma casa. O programa vai perguntar o valor da casa,
o salário do comprador e em quantos anos ele vai pagar.
Calcule o valor da prestação mensal sabendo que ela não pode
exceder 30% do salário ou então o empréstimo será negado'''

v = float(input('Qual o valor da casa? '))
s = float(input('Qual é o salário? '))
t = int(input('Em quantos anos vai pagar? '))
pm = v/(t * 12)
print('Para pagar uma casa de R$ {:.2f} em {} anos'.format(v, t), end =' ')
print('a prestação será de R$ {:.2f}'.format(pm))
if pm <= s*0.3:
    print('O empréstimo foi \033[1;34mAPROVADO!\033[m A prestação mensal será de \033[1;34mR$ {:.2f}\033[m em {} anos.'
          .format(pm,t))
else:
    print('O empréstimo foi \033[1;31mNEGADO\033[m, pois sua parcela mensal (R$ {:.2f}) seria maior que 30% do teu salário.'.format(pm))
