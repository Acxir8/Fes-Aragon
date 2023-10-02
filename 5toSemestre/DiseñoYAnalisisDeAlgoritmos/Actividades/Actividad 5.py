import random
import time

n = 1000
lista = []
while len (lista) < n :
    ale = random.randint (1,n)
    if not (ale in lista):
        lista.append(ale)
print (lista)

inicio = time.time()

#Ordena los numeros aleatorios
for j in range (n):
    for i in range (n-1):
            if lista[i] > lista[i+1]:
                 lista[i], lista[i+1] = lista[i+1], lista[i]
print ("listo")

fin= time.time()
print (fin - inicio,"segundos")
