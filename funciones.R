

# mi primera función  -----------------------------------------------------

area <- function(r) {
  
  3.14 * r * r 
  
  
}

area(7)
 
area <- function(r) {if (is numeric(r)){
  3.14 * r * r  
}else {
  paste("error ... inserte numero")
}}
area (s)

# indice de masa corporal -------------------------------------------------

calcular_IMC <- function(peso, altura) {
  # Calcular el IMC
  imc <- peso / (altura^2)
  
  # Determinar la categoría según el IMC
  categoria <- ""
  if (imc < 18.5) {
    categoria <- "Bajo peso"
  } else if (imc >= 18.5 & imc < 24.9) {
    categoria <- "Peso normal"
  } else if (imc >= 25 & imc < 29.9) {
    categoria <- "Sobrepeso"
  } else if (imc >= 30 & imc < 34.9) {
    categoria <- "Obesidad grado 1"
  } else if (imc >= 35 & imc < 39.9) {
    categoria <- "Obesidad grado 2"
  } else {
    categoria <- "Obesidad grado 3"
  }
  
  # Devolver el IMC y la categoría
  return(list(IMC = round(imc, 2), Categoria = categoria))
}
imc <- calcular_IMC(70, 1.75)
imc 
calcular_IMC(70, 1.75)
calcular_IMC(25, 1.75)
