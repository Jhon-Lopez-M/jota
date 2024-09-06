
# basico 
# alt + - = <-

nombre <- "Jhon"
saludo <- "Hola"

paste(saludo, nombre)
paste(saludo, nombre, sep = "_")
 
#base 

notas <- c(15, 17, 14, 12) 
newnota <- notas + 1 
notas_p <-mean(newnota) 
notas_p 

#tidyverse 
library(tidyverse)
#pipe => %>% (ctrl + shift + m) 
notas <- c(15, 17, 14, 12) %>% 
  + 1 %>% 
  mean(notas)
