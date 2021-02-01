'''Crie um programa que leia a idade e o sexo de várias pessoas.
A cada pessoa cadastrada, o programa deverá perguntar se o usuário quer ou não continuar.
No final, mostre:
A) quantas pessoas tem mais de 18 anos.
B) Quantos homens foram cadastrados.
C) Quantas mulheres tem menos de 20 anos.'''

mulheres20 = homenscad = contidade18 = 0
conti = ''
while True:
    nome = str(input('Digite um nome: ')).strip()
    idade = int(input('Digite a idade: '))
    if idade > 18:
        contidade18 += 1

    sexo = str(input('Digite o sexo [M/F]: ')).upper()[0].strip()
    if sexo in 'Mm':
        homenscad += 1
    if sexo in 'Ff' and idade < 20:
        mulheres20 += 1
    conti = str(input('Deseja continuar? [S/N]: '))
    if conti in 'Nn':
        break
print(f'A) {contidade18} pessoas tem mais de 18 anos.')
print(f'B) {homenscad} homens foram cadastrados. ')
print(f'C) {mulheres20} mulheres tem menos de 20 anos')
