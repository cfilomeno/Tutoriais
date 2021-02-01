'''Escreva um programa que pergunte o salário de um funcionário e calcule
o valor do seu aumento.
Para salários superiores a R$ 1.250,00, calcule um aumento de 10%
Para os inferiores ou iguais, o aumento é de 15%'''

sal = float(input('Qual é o teu salário? '))
if sal > 1250:
    print('Você terá um aumento. Teu salário novo será R$ {:.2f}'.format(sal+sal*0.1))
else:
    print('Você terá um aumento. Teu salário novo será R$ {:.2f}!'.format(sal+sal*0.15))
