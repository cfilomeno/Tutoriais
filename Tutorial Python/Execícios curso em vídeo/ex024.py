'''Crie um programa que leia o nome de uma cidade e diga
se ela começa ou não com o nome 'SANTO' '''
'''cidade = str(input('Digite o nome de uma cidade: ')).strip()
print('SANTO' in cidade.upper().split()[0])'''

cid = str(input('Em que cidade você nasceu? ')).strip()
print(cid[:5].upper() == 'SANTO')
