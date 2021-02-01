def leiaint(msg):
    while True:
        try:
            n = int(input(msg))
        except (ValueError, TypeError):
            print('\033[0;31mERRO: por favor, digite um número inteiro válido.\033[m')
            continue
        except KeyboardInterrupt:
            print('\n\033[0;31mEntrada de dados interrompida pelo usuário\033[m')
            return 0
        else:
            return n


def linha(tam=42):
    return '-'*tam


def cabecalho(txt):
    print(linha())
    print(txt.center(42))
    print(linha())


def menu(lista):
    cabecalho('MENU PRINCIPAL')
    c = 1
    for intem in lista:
        print(f'\033[33m{c} - \033[34m{intem}\033[m')
        c += 1
    print(linha())
    opc = leiaint('\033[32mSua opção: \033[m')
    return opc
