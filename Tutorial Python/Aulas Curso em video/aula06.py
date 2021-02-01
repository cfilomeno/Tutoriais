# Tipos primitivos. 4 tipos:
# 1 int (ex.: 4, -4, 0, 9875)
# 2 float (reais: 4.5, 0.076, 4.0)
# 3 bool (True, False)
# 4 str (ex: 'Olá', '7.5')

n1 = int(input('Primeiro número:'))
n2 = int(input('Segundo número:'))
s = n1 + n2
#print('A soma entre', n1, 'e', n2, 'vale', s)
#print('A soma entre {} e {} vale {}'.format (n1, n2, s)). OU
print('A soma entre {0} e {1} vale {2}'.format (n1, n2, s))
