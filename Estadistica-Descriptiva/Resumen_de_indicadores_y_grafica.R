# primero instalamos la librerias summarytools y ggplot2

install.packages("summarytools")
install.packages("ggplot2")

library(summarytools)
library(ggplot2)

x=c(51.35, 49.88, 49.35, 51.21, 51.24,45.75, 48.42, 47.29, 48.98, 50.06,
    50.94, 45.41, 55.69, 48.90, 56.00,44.72, 56.89, 46.61, 53.25, 48.46,
    49.74, 45.03, 63.02, 50.96, 50.43,51.19, 53.45, 52.10, 49.61, 45.89,
    49.76, 42.30, 53.48, 54.71, 53.48,56.67, 44.38, 51.18, 51.06, 54.96,
    64.44, 51.85, 45.33, 62.74, 43.84,51.32, 53.70, 51.00, 52.86, 43.06,
    43.63, 51.24, 52.84, 49.19, 49.56,49.56, 51.49, 55.31, 46.74, 47.62,
    51.85, 58.90, 50.80, 43.39, 48.54, 52.72, 44.82, 52.49, 58.43, 52.91)

#veamos algunas estadísticas
summary(x)

# veamos más detalles
summarytools::descr(x)

#vamos agraficar los datos

data1 <- data.frame(
  name1=rep("A",70),
  value1=x
)

plot <- ggplot(data1, aes(x = value1)) 
plot <- plot + 
        geom_histogram(aes(y=..density..),
                       color="black", fill = "#034A96",
                       binwidth = 5, alpha = 0.5) +
                        labs(title = "Tiempo de carrera  K10.5-2022") +
                        ylab("densidad") + xlab("minutos")
plot


#concusión
"Los datos indican que en promedio los atletas emplearon 51 minutos (Mean 50.80),
con un tiempo mínimo para el ganador de 43 minutos (Min 42.30)
y un máximo de 64 (Max 64.44). Los datos presenta un forma simétrica 
concentra (Skewness 0.60) un gran número de atletas en un rango entre 45 y 55 minutos.
En cuanto su dispersión presentan un 9% de coeficiente de variación (CV 0.09)
que los califica como homogéneos."
