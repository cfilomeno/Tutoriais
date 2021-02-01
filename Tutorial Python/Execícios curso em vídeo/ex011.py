#Ler largura e altura de uma parede e calcular a quantidade de tinta para pintá-la. 1L de tinta pinta 2m²
l = float(input('Quantos metros a parede tem de \033[1;33mlargura?\033[m '))
h = float(input('Quantos metros a parede tem de \033[1;33maltura?\033[m '))
A = h*l
V = A/2
print('A área da parede é \033[34m{} m²\033[m. Você vai gastar \033[36m{} litros\033[m de tinta para pintá-la.'.format(A, V))
