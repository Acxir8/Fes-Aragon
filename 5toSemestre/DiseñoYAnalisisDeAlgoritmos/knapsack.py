# -*- coding: cp1252 -*-
import time
class Cosas():
    nombre = ""
    precio = 0
    peso = 0
    llevado = 0
    valor = 0.0
##  El valor ser� obtenido dividiendo el precio entre el peso
    def __init__(self, nom, pre, pes, llev):
        self.nombre = nom
        self.precio = pre
        self.peso = pes
        self.llevado = llev
        self.valor = pre/pes

def evalua(num, arregloCosas, restriccion):
    pos=0
    ganancia=0
    peso=0
    cad = bin(num)
    cad = cad[2:]
    cad = cad.rjust(len(arregloCosas))
    cad = cad.replace(" ","0")
    for l in cad:
        if l == "1":
            ganancia += arregloCosas[pos].precio
            peso += arregloCosas[pos].peso
        pos+=1    
    if peso > restriccion:    
        return -1
    else:
        return ganancia
    
def imprimeCombinacion(num):
    pos=0
    ganancia=0
    peso=0
    cad = bin(num)
    cad = cad[2:]
    cad = cad.rjust(len(arregloCosas))
    cad = cad.replace(" ","0")
    print()
    print ("           La mejor combinacion es   ")
    print ("objeto  Precio    peso")    
    for l in cad:
        if l == "1":
            texto =arregloCosas[pos].nombre + "    "
            texto = texto + str(arregloCosas[pos].precio)+"         "
            texto = texto + str(arregloCosas[pos].peso)
            print (texto)
            ganancia += arregloCosas[pos].precio
            peso += arregloCosas[pos].peso
        pos+=1
    print ()
    print ("Ganancia total: "+ str(ganancia)+ "  Peso total: "+str(peso))
    
arregloCosas=[]        

arregloCosas.append(Cosas('cuaderno',20,2,0))
arregloCosas.append(Cosas('libro',10,1,0))
arregloCosas.append(Cosas('Licuadora',100,10,0))
arregloCosas.append(Cosas('Pintura',200,18,0))
arregloCosas.append(Cosas('STEREO',150,13,0))
arregloCosas.append(Cosas('computadora',200,16,0))
arregloCosas.append(Cosas('Microondas',200,15,0))
arregloCosas.append(Cosas('sombrilla',40,3,0))
arregloCosas.append(Cosas('Calculadora',103,6,0))
arregloCosas.append(Cosas('Botas',89,5,0))
arregloCosas.append(Cosas('Balon',54,3,0))
arregloCosas.append(Cosas('JARRON',38,2,0))
arregloCosas.append(Cosas('Cuadro',100,5,0))
arregloCosas.append(Cosas('Maleta',100,5,0))
arregloCosas.append(Cosas('Radio',180,9,0))
arregloCosas.append(Cosas('Silla',240,12,0))
arregloCosas.append(Cosas('TELEFONO',20,1,0))
arregloCosas.append(Cosas('Xbox',369,15,0))
arregloCosas.append(Cosas('florero',50,2,0))
arregloCosas.append(Cosas('Luces',50,2,0))
arregloCosas.append(Cosas('Estereo',340,13,0))
arregloCosas.append(Cosas('Celular Nokia',28,1,0))
arregloCosas.append(Cosas('Guitarra',450,16,0))
arregloCosas.append(Cosas('Wii',346,12,0))
##arregloCosas.append(Cosas('Sombrero',60,2,0))
##arregloCosas.append(Cosas('reloj',110,3,0))
##arregloCosas.append(Cosas('VAJILLA',160,4,0))
#arregloCosas.append(Cosas('Los relojes Blandos. Dal�',250,6,0))
##arregloCosas.append(Cosas('Calendario Maya',456,9,0))
##arregloCosas.append(Cosas('DVD',110,2,0))
#arregloCosas.append(Cosas('Busto Plat�n',300,10,0))
##arregloCosas.append(Cosas('Adorno',70,3,0))


## Esta parte corresponde a la b�squeda exhaustiva
inicio = time.time()
print ("Probando con b�squeda exahustiva")
maximo = 0
mejorCombina = 0
for c in range(pow(2,len(arregloCosas))):
    obtenido = evalua (c, arregloCosas, 20)    
    if obtenido > maximo:
        maximo = obtenido
        mejorCombina = c
imprimeCombinacion(mejorCombina)
fin = time.time()
tiempo = fin-inicio
print("tiempo requerido = ", tiempo, " segundos")
## Fin de la b�squeda exhaustiva
      
    

    


