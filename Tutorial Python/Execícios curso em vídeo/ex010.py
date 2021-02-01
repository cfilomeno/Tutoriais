#Quanto dinheiro tem na carteira ? Quantos dólares pode comprar 1US$ = 5.26R$
r = float(input('\033[30;44mQuantos reais (R$) você tem na carteira R$?\033[m '))
d = (r/5.26)
print('Com esse dinheiro na carteira você consegue comprar \033[1;32mUS$ {:.2f}\033[m !'.format(d))
print('FIM!')
