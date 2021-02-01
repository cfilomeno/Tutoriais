#Faça um programa que leia algo pelo teclado e mostre na tela o seu tipo primitivo e todas as informações possíveis sobre ele.

'''x = input('\033[7;34;40m Digite algo: \033[m ')
print('O tipo primivito desse valor é', '\033[7;32;40m' type(x) '\033[m')
print('Só tem espaços ?', x.isspace())
print('É um número ?', x.isnumeric())
print('É alfabético ?', x.isalpha())
print('É alfanumérico ?'), x.isalnum()
print('Está em maiúsculas ?', x.isupper())
print('Está em minúsculas ?', x.islower())
print('Está capitalizada ?', x.istitle())'''


x = input('\033[7;34;40m Digite alguma coisa: \033[m')
print('O tipo primitivo desse valor é \033[31m{}\033[m'.format(type(x)))
print('Só tem espaços ? \033[1mR.\033[m: \033[32m{}\033[m'.format(x.isspace()))
print('É um número ? \033[1mR.\033[m: \033[33m{}\033[m'.format(x.isnumeric()))
print('É alfabético ? \033[1mR.\033[m: \033[34m{}\033[m'.format(x.isalpha()))
print('É alfanumérico ? \033[1mR.\033[m: \033[35m{}\033[m'.format(x.isalnum()))
print('Está em maiúsculas ? \033[1mR.\033[m: \033[36m{}\033[m'.format(x.isupper()))
print('Está em minúsculas ? \033[1mR.\033[m: \033[37;46m{}\033[m'.format(x.islower()))
print('Está capitalizada ? \033[1mR.\033[m: \033[34;42m{}\033[m'.format(x.istitle()))
