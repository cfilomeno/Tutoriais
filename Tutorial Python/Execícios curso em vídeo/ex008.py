#Ler um valor em metros e convertê-lo em cm e mm
v = float(input('\033[34mEscreva um valor em metros:\033[m '))
cm = v*100
mm = v*1000
print('\n Valor em centímetros: \033[33m{}\033[m; \n Valor em milímetros: \033[36m{}\033[m.'.format(cm, mm))
