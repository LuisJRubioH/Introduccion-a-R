# Matrices
# Creación de una matriz a partir de vectores

x <- 1:5
print(x)

y <- 6:10
print(y)

z <- 11:15
print(z)

#Creamos la matríz con cada vector como una fila de la matriz
M1 <- rbind(x,y,z) 
print(M1)

# Creamos la matriz con cada vector como una columna de la matriz
M2 <- cbind(x,y,z)
print(M2)

#Creación de matrices con la función matrix()

M <- matrix(data=1:12, nrow=3, ncol=4, byraw = FALSE)
print(M)
