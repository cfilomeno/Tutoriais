#Ler preço de um produto e mostrar seu novo preço com 5% de desconto.
p = float(input('\033[35mQual é o preço? R$\033[m '))
d = p-p*5/100
print('Preço com desconto de 5%: \033[1;33;46mR$ {}\033[m'.format(d))
