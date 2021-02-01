'''Escreva um programa que leia a velocidade de um carro.
Se ele ultrapassar 80 Km/h, mostre uma mensagem dizendo que ele foi multado
A multa vai custar R$ 7,00 por cada Km acima do limite.'''

v = float(input('Qual era a velocidade daquele carro ? '))
if v > 80:
    print('Acima da velocidade ! Ele estava a {} Km/h! A multa vai custar R$ {:.2f}.'
          .format(v, (v-80)*7))
else: #NÃO É NECESSÁRIO O ELSE
    print('Ele não ultrapassou o limite. Estava a {} Km/h'.format(v))


