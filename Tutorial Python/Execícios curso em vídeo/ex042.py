'''Refaça o desafio 035 dos triângulos, acrescentando
o recurso de mostrar que tipo de triângulo será formado.
- Equilátero: todos os lados iguais
- Isósceles: dois lados iguais
- Escaleno: todos os lados diferentes'''

r1 = float(input('\033[35mQual o comprimento de r1? \033[m'))
r2 = float(input('\033[36mQual o comprimento de r2? \033[m'))
r3 = float(input('\033[37mQual o comprimento de r3? \033[m'))
if r1 < r2 + r3 and r2 < r1 + r3 and r3 < r1 + r2:
    print('\033[1;33mUm triângulo pode ser formado !\033[m')
    if r1 == r2 and r2 == r3:
        print('Você pode formar um triângulo \033[1;33mEQUILÁTERO\033[m.')
    elif r1 == r2 or r1 == r3 or r2 == r3: # ou r1 != r2 != r3 != r1:
        print('Você pode formar um triângulo \033[1;33mISÓSCELES\033[m.')
    else:
        print('Você pode formar um triângulo \033[1;33mESCALENO\033[m.')

else:
    print('\033[1;31m Um triângulo não pode ser formado\033[m.')
