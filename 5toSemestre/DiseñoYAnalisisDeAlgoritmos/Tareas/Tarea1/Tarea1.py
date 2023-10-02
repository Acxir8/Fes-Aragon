import random
import time

n = 18000
lista = []
lista1 = []
lista2 = []

while len (lista) < n:
    ale = random.randint(1,n)
    if not (ale in lista):
        lista.append(ale)
print("listo")


#Burbuja por separación
for valor in lista:
    if valor < (n//2):
        lista1.append(valor)
    else:
        lista2.append(valor)

inicio = time.time()
for c in range(len(lista1)):
    for i in range(len(lista1)-1):
        if lista1[c] <= lista1[i]:
            lista1[c], lista1[i] = lista1[i], lista1[c]
print("Listo")

inicio = time.time()
for c in range(len(lista2)):
    for i in range(len(lista2)-1):
        if lista2[c] <= lista2[i]:
            lista2[c], lista2[i] = lista2[i], lista2[c]
print("Listo")

fin = time.time()
print(fin - inicio,"segundos")

#Por metodo de la burbuja
#inicio = time.time()
#for c in range(n):
#    for i in range(n-1):
#        if lista[c] <= lista[i]:
#            lista[c], lista[i] = lista[i], lista[c]
#print("listo")

#fin = time.time()print(fin - inicio,"segundos")
