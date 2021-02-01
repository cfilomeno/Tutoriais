'''Tratamento de Erros e Exceções

Ex.
Erro sintático:
primt(x)
print(x)

'''
# print(x) # erro semântico: a variável x não existe. exceção: Name error


# n = int(input('Número: '))
# print(f'Você digitou o número {n}')
# ValueError se inserir 'oito' ao invés de 8.


# zero division error
# r = a/b       a = 8; b = 0


# IndexError
# lst = [3, 6, 4]
# print(lst[3])


# ModuleNotFoundError


'''Exception não é um erro sintático

Estrutura básica do comando:
try:
    operação
except:
    falhou
    
'''

# Prática

try:
    a = int(input('Numerador: '))
    b = int(input('Denominador: '))
    r = a / b
# except Exception as erro:
#     print(f'Problema encontrado foi {erro.__class__}')
except (ValueError, TypeError):
    print(f'Tivemos um problema com os tipos de dados que você digitou.')
except ZeroDivisionError:
    print('Não é possível dividir um número por zero!')
except KeyboardInterrupt:
    print('O usuário preferiu não informar os dados!')
except Exception as erro:
    print(f'O erro encontrado foi {erro.__cause__}')
else:
    print(f'O resultado é {r:.1f}')
finally:
    print(f'Volte sempre! Muito obrigado!')
