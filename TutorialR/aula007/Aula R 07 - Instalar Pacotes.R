#INSTALAR PACOTES
#INSTALAR PACOTES
#INSTALAR PACOTES
#INSTALAR PACOTES
#INSTALAR PACOTES
#INSTALAR PACOTES
#Pacotes são conjunto de funções disponibilizados por usuários
#do R (também pelos mantenedores do R)


#Geralmente estão disponíveis no repositório do R (CRAN)


#Podem ser instalados usando a função
#install.packages() ou pelo
#menu: Tools -> Install Packages...

#muitos pacotes dependem de outros pacotes já
#instalados. Então é recomendável sempre instalar
#as 'dependencies'; install.packages(dependencies=TRUE)

#exemplo
?install.packages
install.packages("lme4", dependencies=TRUE)

#depois de instalado, o pacote tem que ser carregado.
#isso é feito usando a função library()
library(lme4)


#os pacotes muitas vezes tem 'Vignettes' com instruções
#mais detalhadas de como usá-los. Também possível ver as
#'vignette' disponíveis acessando a aba packages
#na janela ao lado.
?vignette
vignette(topic='ggplot2-specs', package='ggplot2')


#Também é possível instalar pacotes diretamente
#de um arquivo que foi baixado da internet.
#Isso é feito no
#menu: Tools -> Install Packages...
#E mudando de a barra de rolagem 'Install from:' de
#"Repository (CRAN)" para
#'Package Archive File (.tgz; .tar.gz)'



#EXERCÍCIOS
#EXERCÍCIOS
#EXERCÍCIOS
#EXERCÍCIOS
#1. Instale o pacote 'MuMIn' usando a função
install.packages(MuMin, dependencies = TRUE).

#2. Instale e carrege o pacote 'ggplot2' e
#em seguida procure suas vignettes.
install.packages("ggplot2", dependencies = TRUE)
vignette(topic='ggplot2-specs', package='ggplot2')