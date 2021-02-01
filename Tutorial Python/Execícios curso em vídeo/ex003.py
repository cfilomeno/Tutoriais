#n1 = input('Primeiro número:')
#n2 = input('Segundo número:')
#n1 = int(n1)
#n2 = int(n2)
#print(n1+n2)

n1 = int(input('Digite o \033[30;44mprimeiro\033[m número: '))
n2 = int(input('Digito o \033[40;46msegundo\033[m número: '))
s = n1+n2
print('A soma entre \033[1m{0}\033[m e \033[1m{1}\033[m é igual a \033[1;31m{2}\033[m!'.format(n1, n2, s))
