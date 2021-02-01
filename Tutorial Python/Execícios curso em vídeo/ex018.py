#Ler um ângulo qualquer
#Mostrar os valores de seno, cosseno e tangente
import math
a = float(input('\033[31mDigite um ângulo entre 0 e 360º:\033[m '))
s = math.sin(math.radians(a))
c = math.cos(math.radians(a))
t = math.tan(math.radians(a))
print('\033[1;33mSeno\033[m de {:.0f}º = {:.1f}'.format(a, s))
print('\033[1;30mCosseno\033[m de {:.0f}º = {:.1f}'.format(a, c))
print('\033[1;35mTangente\033[m de {:.0f}º = {:.1f}'.format(a, t))
