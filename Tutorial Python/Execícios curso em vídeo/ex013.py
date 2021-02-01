#Ler salário e mostrar novo salário com 15% de aumento
s = float(input('\033[33mQual é o salário atual? R$\033[m '))
n = s+s*15/100
print('O novo salário com aumento de 15% é \033[34mR$ {}\033[m'.format(n))
