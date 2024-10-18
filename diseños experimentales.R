
# Instala el paquete si aún no lo tienes
install.packages("agricolae")

# Cargar el paquete
library(agricolae)


# Definir tratamientos
tratamientos <- c(0, 50, 100)  # Dosis de fertilización nitrogenada

# Crear el diseño DCA con 5 repeticiones
dca_5rep <- design.crd(trt = tratamientos, r = 5, seed = 123)

# Ver el diseño generado
dca_5rep$book
 

# Ver el libro de campo con la aleatorización para 5 repeticiones
dca_5rep$book 


# Instalar y cargar el paquete agricolae si no lo tienes

install.packages("agricolae")
library(agricolae)

# Definir los niveles de los dos factores
dosis_fert <- c(0, 50, 100)  # Primer factor: Dosis de fertilización nitrogenada
variedades <- c("Peruanita", "Canchan")  # Segundo factor: Variedades de papa

# Crear un data frame con todas las combinaciones de tratamientos (factorial)
tratamientos <- expand.grid(dosis_fert, variedades)

# Renombrar las columnas para mayor claridad
colnames(tratamientos) <- c("Fertilizacion", "Variedad")

# Crear el diseño DBCA con 4 repeticiones (bloques)
dbca_design <- design.ab(trt=tratamientos, r=4, serie=2, design="rcbd", seed=123)

# Ver el diseño generado (aleatorización de unidades experimentales)
dbca_design$book




# DBCA  -------------------------------------------------------------------

agricolae::design.ab()

# factorial 3 x 2 with 3 blocks
library(agricolae)
trt<-c(3,2) # factorial 3x2, se coloca los niveles..!!!!!!!!!!!
outdesign <-design.ab(trt, r=5, serie=2)
book<-outdesign$book
head(book,10) # print of the field book


library(tidyverse)

book <-  PENDIENTE................


# Instalar y cargar el paquete agricolae
install.packages("agricolae")  # Descomentar si no está instalado
library(agricolae)

# 1. Definir los niveles de los dos factores
dosis_fert <- c(0, 50, 100, 150)  # Primer factor: Dosis de fertilización nitrogenada
variedades <- c("Peruanita", "Canchan")  # Segundo factor: Variedades de papa

# 2. Crear un data frame con todas las combinaciones de tratamientos (factorial)
tratamientos <- expand.grid(Dosis = dosis_fert, Variedad = variedades)

# 3. Crear el diseño experimental en bloques completos aleatorizados (DBCA)
# Suponiendo 4 repeticiones (ajusta según tus necesidades)
n_repeticiones <- 4  # Cambiar según el número de repeticiones deseadas

# Usando design.ab para generar el diseño
outdesign <- design.ab(trt = c(4, 2), r = n_repeticiones, serie = 2)

# 4. Ver el diseño generado (aleatorización de unidades experimentales)
book <- outdesign$book
print(head(book, 10))  # Imprimir las primeras 10 filas del libro de campo

# 5. Si quieres visualizar todo el libro de campo
print(book)  # Imprimir el libro de campo completo





