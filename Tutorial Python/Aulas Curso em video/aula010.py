'''Condições simples e compostas
- como usar uma condição simplificada?
- Existe uma sequência para os comandos.
- Nem todos os programas executam todos os programas
- A grande maioria dos programas exigem condições
- para programação usamos a estrutura de SE
                ex. :   se carro.esquerda()
                        senão
se carro.esquerda()
    bloco _V_
senão
    bloco_F_

    ESTRUTURA CONDICIONAL. Nunca se executará os dois bloco ao mesmo tempo
if carro.esquerda():
    bloco True
else:
    bloco False'''

'''Ex1
tempo = int(input('Quantos anos tem teu carro?'))
if tempo <=3:
    print('carro novo')
else:
    print('carro velho')
print('--FIM--')'''

'''Ex2 - CONDIÇÃO SIMPLIFICADA
tempo = int(input('Quantos anos tem o teu carro?'))
print('carro novo' if tempo<=3 else 'carro velho')
print('--FIM--')'''

'''Ex3
nome = str(input('Qual é o teu nome ?'))
if nome == 'Cleber':
    print('Que nome lindo você tem!')
else:
    print('Teu nome é tão normal!')
print('Bom dia, {}!'.format(nome'''

n1 = float(input('Digite a primeira nota: '))
n2 = float(input('Digite a segunda nota: '))
m = (n1 + n2)/2
'''print('A tua média foi {:.1f}'.format(m))
if m >= 6.0:
    print('Sua média foi boa! PARABÉNS!')
else:
    print('Sua média foi ruim. ESTUDE MAIS!')'''

print('PARABÉNS' if m >= 6 else 'ESTUDE MAIS!')
