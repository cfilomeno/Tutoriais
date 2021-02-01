''' Laços de repetição
Laço com variável de controle

1/ laço c no intervalo(1.10)
    passo
pega
Em Python:
for c in range(1,10):
    passo
pega

2/ comando passo e pula
for c in range(0,3)
    passo
    pula
passo
pega

3/ estrutura de controle condicional
for c in range(0,3)
    if tivermoeda:
        pega
    passo
    pula
passo
pega
'''

'''print('Oi')
print('Oi')
print('Oi')'''

#for c in range(...
'''for c in range(1, 6):
    print('Oi')
print('FIM')'''


'''for c in range(0, 7, 2):
    print(c)
print('FIM')'''

'''n = int(input('Digite um número: '))
for c in range(0, n+1):
    print(c)
print('FIM')'''

'''i = int(input('Início: '))
f = int(input('Fim: '))
p = int(input('Passo: '))
for c in range(i, f+1, p):
    print(c)
print('FIM')'''


s = 0
for c in range(0, 4):
    n = int(input('Digite um valor: '))
    s += n  #s = s + n
print('O somatório dos valores é {}'.format(s))


