from math import *
# Operaciones/segundo realizadas por Roadrunner
VelocidadCPU = 1.105 * 10 ** 15
# Número de dígitos
n=1
# Número de operaciones
fA=1
# ¿Nº operaciones requeridas < Nº operaciones en un año?
while fA <= (VelocidadCPU *24 * 60 * 60 *365):
    n = n+1
    fA = 10 ** ( pow( n * log(n,10) , 0.5 ) )
# La raíz cuadrada de un número no es más que el número elevado a 0,5.
print('Numero maximo de cifras =' , n-1)