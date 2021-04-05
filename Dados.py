#visualização e coleta de dados em Python

import matplotlib.pyplot as plt

x1 = [1, 3 , 5, 7, 9]
y1 = [2, 3 , 7, 1, 4]

x2 = [2 , 4, 6, 8, 10]
y2 = [3 , 5, 7, 3, 8]

titulo = "Grafico de Barras"
eixox = "Eixo X"
eixoy = "Eixo Y"

# Legendas
plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)

plt.bar(x1, y1 label = "grupo 1")
plt.bar(x2, y2 label = "grupo 2")
plt.label()
plt.show()