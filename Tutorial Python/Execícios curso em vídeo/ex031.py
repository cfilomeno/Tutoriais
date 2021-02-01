'''Desenvolva um programa que pergunte a distância de uma viagem em Km.
Calcule o preço da passagem, cobrando R$ 0,50 por Km para viagens de até 200 Km
e R$ 0,40 para viagens mais longas'''

'''d = float(input('A quantos Km fica o teu destino ? '))
if d <= 200:
    print('O preço da passagem para o teu destino é R$ {:.2f}.'.format(d*0.5))
else:
    print('O preço da passagem para o teu destino é R$ {:.2f}.'.format(d*0.45))'''

d = float(input('A quantos Km fica o teu destino ? '))
print('Você está presetes a comeeçar uma viagem de {} Km.'.format(d))
p = d*0.50 if d <= 200 else d*0.45
print('o preço da sua passagem será de R$ {:.2f}'.format(p))
