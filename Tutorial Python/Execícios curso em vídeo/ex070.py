'''Crie um programa que leia o nome e preço de vários produtos.
O programa deverá perguntar se o usuário vai continuar. No final, mostre:
A) Qual é o total gasto na compra.
B) Quantos produtos custam mais de R$ 1000;
C) Qual é o nome do produto mais barato.'''

menor = cont = mais1000 = tot = 0
while True:
    cont += 1
    produto = str(input('Produto: ')).strip()
    preco = float(input('Preço: '))
    tot += preco
    if preco > 1000:
        mais1000 += 1
    if cont == 1:
        menor = preco
    else:
        if preco < menor:
            menor = preco
    continuar = str(input('Deseja continuar [S/N]? ')).upper()[0].strip()
    if continuar in 'Nn':
        break
print(f"A) O total gasto na compra é R$ {tot:.2f}.")
print(f'B) {mais1000} são os produtos que custam mais de R$ 1000.')
print(f'C) O produto mais barato é {produto} e custa R$ {menor:.2f}.')
