'''Crie um programa que leia duas notas de um aluno
e calcule sua média, mostrando uma mensagem no final,
de acordo com a média atingida:
- Média abaixo de 5.0: REPROVADO
- Média entre 5.0 e 6.9: RECUPERAÇÃO
- Média 7.0 ou superior: APROVADO.'''

nota1 = float(input('\033[30mDigite a nota 1\033[m: '))
nota2 = float(input('\033[30mDigite a nota 2\033[m: '))
media = (nota1 + nota2)/2
if media < 5:
    print('Média final: \033[1;31m{:.1f}. \nREPROVADO\033[m.'.format(media))
elif media > 7:
    print('Média final: \033[1;34m{:.1f}. \nAPROVADO\033[m.'.format(media))
else:
    print('Média final: \033[1;33m{:.1f}. \nRECUPERAÇÃO\033[m.'.format(media))