'''Elaborar um programa que calcule o valor a ser pago
por um produto, considerando o seu preço normal e
condição de pagamento:
- À vista dinheiro/cheque: 10% de desconto
- A vista no cartão: 5% de desconto
- Em até 2x no cartão: preço normal
- 3x ou mais no cartão: 20% de juros'''

valor = float(input('\033[36mQual o valor do produto? R$ \033[m'))
print('''Escolha a forma de pagamento:
[1] Pagamento à vista no dinheiro ou cheque: 10% de desconto
[2] Pagamento à vista no cartão: 5% de desconto
[3] Pagamento em 2x no cartão: preço normal
[4] Pagamento em 3x ou mais no cartão: 20% de juros''')
print('-=-'*20)
pagamento = int(input('\033[36mQual é a forma de pagamento? \033[m'))
if pagamento == 1:
    print('[1] À vista no dinheiro/cheque')
    print('Pagamento à vista no dinheiro ou cheque. Desconto de 10%! O valor final é R$ \033[1;34mR$ {:.2f}\033[m.'
          .format(valor-valor*10/100))
elif pagamento == 2:
    print('[2] À vista no cartão.')
    print('Desconto de 5%! O valor final é R$ \033[1;34mR$ {:.2f}\033[m.'.format(valor-valor*5/100))
elif pagamento == 3:
    print('[3] 2x no cartão.')
    print('Não há desconto. O valor final é R$ \033[1;30m{:.2f}\033[m.'.format(valor))
elif pagamento == 4:
    print('[4] 3x ou mais no cartão.')
    print('Haverá juros de 20%. O valor final é R$ \033[1;31m{:.2f}\033[m.'
          .format(valor+valor*20/100))
else:
    print('\033[31mOpção inválida. Tente novamente\033[m.')
print('-=-'*20)