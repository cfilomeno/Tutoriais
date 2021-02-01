'''Faça um programa que leia o ano de nascimento de um jovem
e informe, de acordo com sua idade:
- Se ele vai se alistar ao serviço militar
- Se é a hora de se alistar
- Se já passou do tempo do alistamento.
 Seu programa também deverá mostrar o tempo que falta
 ou que passou do prazo.'''

from datetime import date
nascimento = input('\033[34mData de nascimento (dia/mês/ano): \033[m')
ano = int(nascimento[6:])
idade = date.today().year - ano
print('\033[1;34m{}\033[m anos de idade.'.format(idade))
if idade == 17:
    print('Está em tempo de fazer o alistamento militar!')
elif idade < 17:
    print('Ainda não é tempo. Faltam \033[1;34m{}\033[m anos para fazer o alistamento militar.'.format(17-idade))
else:
    print('Há um atraso de \033[1;31m{}\033[m anos. Você perdeu o alistamento militar no tempo correto.'
          .format(idade-17))
