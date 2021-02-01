'''Escreva um programa que leia dois números inteiros e
compare-os, mostrando na tela uma mensagem:
- O primeiro valor é maior
- O segundo valor é maior
- Não existe valor maior, os dois são iguais'''

num1 = int(input('\033[33m Digite um número inteiro:\033[m '))
num2 = int(input('\033[33m Digite outro número inteiro:\033[m '))
if num1 > num2:
    print('O \033[1;30mPRIMEIRO\033[m número é maior.')
elif num1 < num2:
    print('O \033[1;30mSEGUNDO\033[m número é maior.')
else:
    print('\033[1;35m Os dois são iguais.\033[m')
