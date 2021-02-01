'''Crie um programa onde o usuário digite uma expressão qualquer que use parênteses. Se aplicativo deverá analisar se
a expressão passada está com os parênteses abertos e fechados na ordem correta.'''

expr = str(input('Digite a expressão: '))
lista = []
for simb in expr:
    if simb == '(':
        lista.append('(')
    elif simb == ')':
        if len(lista) > 0:
            lista.pop()
        else:
            lista.append(')')
            break
if len(lista) == 0:
    print('Sua expressão está válida!')
else:
    print('Sua expressão é inválida.')
print(lista)
