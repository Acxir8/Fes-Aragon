#Quick sort
# Costos computacionaleS: 
# Agregaro o tomar el tiempo entre nuestro ordenamiento o el nuestro
#
#
#
#
def doble(algo):
    return algo*2
print(doble(3))
print(doble(4.78))
print(doble("hola"))
print(doble(True))
print(doble(doble(3)))

a = 19
b = 38
c = 15

def mayor(a,b,c):
    if(a>b):
        if(a>c):
            print("El mayor es:", a)
        else:
            print("El mayor es:", c)
    else:
        if(b>c):
            print("El mayor es:", b)
        else: 
            print("El mayor es:", c)

mayor(a,b,c)



def max2(a,b):
    if a>b:
        return a
    else: 
        return b
    
def max3(a,b,c):
    return max2(a,max2(b,c))

print(max3(a,b,c))


#Paquetes de plumas 5,8,24

