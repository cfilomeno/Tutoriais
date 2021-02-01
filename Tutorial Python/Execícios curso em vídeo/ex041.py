'''A Confederação Nacional de Natação precisa de um
programa que leia o ano de nascimento de um atleta e
mostre sua \033[33mCategoria:\033[m, de acordo com a idade:
- Até 9 anos: MIRIM
- Até 14 anos : INFANTIL
- Até 19 anos: JUNIOR
- Até 20 anos: SÊNIOR
- Acima: MASTER'''

from datetime import date
ano = int(input('\033[33mAno de nascimento\033[m: '))
idade = date.today().year - ano
print('\033[33mIdade do atleta\033[m: \033[1;34m{}\033[m anos.'.format(idade))
if idade < 9:
    print('\033[33mCategoria:\033[m \033[1;32mMIRIM\033[m.')
elif idade >= 9 and idade < 14:
    print('\033[33mCategoria:\033[m \033[1;31mINFANTIL\033[m.')
elif idade >= 14 and idade < 19:
    print('\033[33mCategoria:\033[m \033[1;34mJUNIOR\033[m.')
elif idade >= 19 and idade < 20:
    print('\033[33mCategoria:\033[m \033[1;35mSÊNIOR\033[m.')
else:
    print('\033[33mCategoria:\033[m \033[1;36mMASTER\033[m.')
