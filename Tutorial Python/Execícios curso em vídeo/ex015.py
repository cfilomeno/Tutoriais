#Pergunte a quantidade Km percorridos e a quantidade de dias pelos quais ele foi alugado.
#Calcular o preço a pagar, sabendo que o carro custa R$ 60 por dia e R$ 0,15 por Km rodado.
km = float(input('\033[33mQuantos quilômetros foram rodados?\033[m '))
dias = int(input('\033[31mPor quantos dias foi alugado?\033[m '))
r1 = km*0.15
r2 = dias*60
rt = r1 + r2
print('o valor total a se pagar é \033[36;40mR$ {}\033[m. Sendo \033[1;34m{}\033[m pelas diárias e \033[1;30m{}\033[m pela quilometragem'
      .format(rt, r2, r1))
