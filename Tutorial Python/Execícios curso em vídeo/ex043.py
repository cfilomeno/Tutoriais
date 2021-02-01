'''Desenvolva uma lógica que leia o peso e a altura de
uma pessoa, calcule seu IMC e mostre seu status, de acordo
com a tabela abaixo:
- Abaixo de 18.5: Abaixo do peso
- Entre 18.5 e 25: Peso ideal
- 25 até 30: sobrepeso
- 30 até 40: Obesidade
- Acima de 40: Obesidade mórbida'''

peso = float(input('\033[35mQual é o peso (em Kg)? \033[m'))
altura = float(input('\033[35mQual é a altura (em metros)? \033[m'))
imc = peso/altura**2
print('\033[30mO índice de massa corporal é\033[m \033[1;33m{:.1f}\033[m.'.format(imc))
if imc < 18.5:
    print('\033[1;31mEstá abaixo do peso!\033[m')
elif imc >= 18.5 and imc < 25:
    print('\033[1;32mEstá no peso ideal!\033[m')
elif imc >= 25 and imc < 30:
    print('\033[1;33mEstá com sobrepeso!\033[m')
elif imc >= 30 and imc < 40:
    print('\033[1;31mEstá com obesidade!\033[m')
else:
    print('\033[4;1;31m/!\ Obesidade mórbida /!\ \033[m')
