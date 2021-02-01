#Ler comprimento do cateto oposto e do cateto adjacente de um triang. ret.
#Calcular e mostrar o comprimento da hipotenusa.
import math
co = float(input('\033[33mCateto oposto:\033[m '))
ca = float(input('\033[31mCateto adjacente:\033[m '))
print('A hipotenusa do triângulo reto é: \033[1;32m{}\033[m'.format(math.hypot(co, ca)))

