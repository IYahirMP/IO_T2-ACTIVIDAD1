# De/Hacia      Zirandaro   Cutzamala   Tlapehuala
# Coyuca        15            22            13
# Arcelia       28            24            23
# Cd.Alt.       19            17            15

library(lpSolve)

# Matriz de los coeficientes del lado izquierdo de las restricciones.
cost.mat <- matrix(c(15,28,19,22,24,17,13,23,15), nrow = 3)
cost.mat

# Vector de coeficientes del lado derecho de las restricciones por fila.
row.rhs <-c (800, 700, 600)
row.rhs

# Vector de coeficientes del lado derecho de las restricciones por columna.
col.rhs <-c (500, 900, 700)
col.rhs

# Signos de las restricciones de la oferta.
row.signs <-rep ("=", 3)
row.signs

# Signos de las restricciones de la demanda.
col.signs <-rep ("=", 3)
col.signs

# Dirección del modelo
direction = "min"
direction

# Se ejecuta la función  de resolución y se guarda el resultado en res
res<-lp.transport(cost.mat,direction,row.signs,row.rhs,col.signs, col.rhs)
res

# Se muestra la distribución de traslados óptima
res$solution