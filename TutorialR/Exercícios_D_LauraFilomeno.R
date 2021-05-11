################################ ATIVIDADES 9 e 10 ##################################
#
#Disciplina: INTRODUÇÃO AO R E AOS MODELOS LINEARES
#Professor: Felipe M. Gawryszewski
#Aluna: Laura R. de Andrade Filomeno
#Matricula: 200063031
#
############################## EXERCICIOS SOBRE LOOPS ###############################
#
#
#1.Faça um loop para escrever seu nome 5 vezes.
#
for (i in 1:5) {
  #print(i)
  print("Laura")
}
#
#
#2.Faça um loop para modificar a diagonal de uma matrix:
mat1<-matrix(rep(x=1,times=5*5), ncol=5,nrow=5)
mat1
#
for (i in 1:5) {mat1<-matrix(rep(x=2,times=5*5), ncol=5,nrow=5)
print(diag(5))}
mat1
#
#
#
#3.Faça um loop para encontrar o fatorial do número 11 (11*10*9*...*1)
# 11! = 11*10*9*8*7*6*5*4*3*2*1
#
fat = 1
for(i in 1:11){
  fat <-fat*((1:11)[i])
}
print(fat)
print(paste('O fatorial de 11 é', fat))
#
#
######################### EXERCICIOS SOBRE CRIAR FUNCOES ###########################
#
#Desculpa, professor Felipe, não consegui fazer os exercicios da lista 10. Mas depois vou tentar.
#