import random

def cargaPalabras():
    archivo = open('diccionarioAleman.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    print (len(palabras), 'palabras leidas')
    return palabras

def cargaCifrado():
    archivo = open('texto2.txt', 'r', encoding="utf8")
    renglon = archivo.readline().lower() 
    return renglon

def descifraSustituye(cadena, alfabetoLlave):
    alfabeto = 'aäbcdefghijklmnoöpqrßstuüvwxyz'    
    nuevaCadena = ""    
    for letra in cadena:
        if letra in alfabeto.casefold():
            posicion = alfabeto.find(letra)
            nuevaCadena = nuevaCadena + alfabetoLlave[posicion]
        else:
            nuevaCadena = nuevaCadena + letra
    return nuevaCadena


dic = cargaPalabras()
cifrado = cargaCifrado()

posA="u"			
posB="k"	
posC="p"
posD="n"	
posE="l"
posF="f"
posH="s"
posI="m"	
posJ="z"	
posK="r"	
posL="b"	
posM="w"	
posN="i"	
posO="h"	
posP="e"	
posQ="d"	
posß="ß"
posS="g"		
posU="a"
posÜ="ü"
posW="v"
posX="t"	
posY="o"	
posZ="c"	

#alfabeto = 'aäbcdefghijklmnoöpqrßstuüvwxyz' 
alfabetoLlave  = 'uXkpnlfXsmzrbwihXedXßgXaüXvtoc'

c = 0
#Probando con Ippk 
'''for p in dic:
    if len(p)==4:
        if p[1]==p[2] and (p[0]!=p[-1]):
            c = c+1
            print(p)'''
      
#Probando con Hyiipk
'''for p in dic:
    if len(p)==6:
        if p[2]==p[3] and p[-1]!= p[-2] and p[0]!= p[1]:
            if p[2] in posI and p[-1] in posK and p[-2] in posP:
                c = c+1
                print(p)'''
 
#Probando con Hyddp
'''for p in dic:
    if len(p)==5:
        if p[2]==p[-2] and p[-1]!= p[0] and p[0]!= p[1]:
            if p[0] in posH and p[1] in posY and p[-1] in posP:
                c = c+1
                print(p)'''
               
#Probando con Iuhhpd
'''for p in dic:
    if len(p)==6:
        if p[2] == p[3]:
           if p[0] in posI and p[2] in posH and p[4] in posP and p[-1] in posD:
                c = c+1
                print(p)'''
 
#Probando con byiix
'''for p in dic:
    if len(p)==5:
        if p[-2] == p[-3]:
            if p[-1] in posX and p[1] in posY and p[2] in posI:
                c = c+1
                print(p)'''

#Probando con Wnpep
'''for p in dic:
    if len(p)==5:
        if p[-1] == p[-3] and p[0]!=p[1] and p[0]!=p[3] and p[1]!=p[3] and p[1]!=p[2] and p[0]!=p[2] and p[3]!=p[2]:
            if p[2] in posP:
                c = c+1
                print(p)'''
 
#Probando con xkuspd
'''for p in dic:
    if len(p)==6:
        #if p[1] == p[-2]:
            if p[0] in posX and p[1] in posK and p[2] in posU and p[-2] in posP and p[-1] in posD:
                c = c+1
                print(p)'''
          
#Probando con Fküoends
'''for p in dic:
    if len(p)==8:
       # if p[0] == p[4] and p[-2] == p[-3]:
            if p[1] in posK and p[4] in posE and p[5] in posN and p[6] in posD and p[-1] in posS:
                c = c+1
                print(p)'''

#Probando con hzomniipd
'''for p in dic:
    if len(p)==9:
       if p[-3] == p[-4]:
            if p[0] in posH and p[2] in posO and p[4] in posN and p[-4] in posI and p[-2] in posP and p[-1] in posD:
                c = c+1
                print(p)'''

#Probando con ai
'''for p in dic:
    if len(p)==2:
       # if p[1] == p[-3]:
            if p[1] in posI and p[0] in posA:
                c = c+1
                print(p)'''

#Probando con Hxkudq
'''for p in dic:
    if len(p)==6:
        #if p[1] == p[-3]:
            if p[0] in posH and p[1] in posX and p[2] in posK and p[3] in posU and p[-2] in posD:
                c = c+1
                print(p)'''

#Probando con qpi
'''for p in dic:
    if len(p)==3:
        #if p[1] == p[-3]:
            if p[0] in posQ and p[1] in posP and p[2] in posI:
                
                c = c+1
                print(p)'''

#Probando con sudjpd
'''for p in dic:
    if len(p)==6:
        if p[-1] == p[-4]:
            if p[0] in posS and p[1] in posU and p[2] in posD and p[-2] in posP:
                c = c+1
                print(p)'''

#Probando con Hcuß
'''for p in dic:
    if len(p)==4:
       # if p[1] == p[-3]:
            if p[0] in posH and p[2] in posU and p[-1] in posß:
                c = c+1
                print(p) ''' 

#Probando con opnß
'''for p in dic:
    if len(p)==4:
       # if p[1] == p[-3]:
            if p[0] in posO and p[2] in posN and p[1] in posP:
                c = c+1
                print(p)'''  

#Probando con Wnpep
'''for p in dic:
    if len(p)==5:
        if p[-1] == p[2]:
            if p[1] in posN and p[2] in posP and p[3] in posE:
                c = c+1
                print(p)''' 

#Probando con oulpd
'''for p in dic:
    if len(p)==5:
        #if p[-1] == p[2]:
            if p[1] in posU and p[-2] in posP and p[-1] in posD and p[0] in posO:
                c = c+1
                print(p)
print(c)'''


b = descifraSustituye(cifrado, alfabetoLlave)
print(b)

#Mensaje descifrado: 
#ch dem frühling kommt der sommer. im sommer ist es heiß. viele fahren in den ferien ans meer und liegen den ganzen tag am strand. 
#wegen der sonne tragen sie sonnenbrillen. die massen gehen ins schwimmbad, um im wasser zu schwimmen und spaß zu haben.

#Traducción al español: 
#Después de la primavera llega el verano. hace calor en verano. Mucha gente va al mar de vacaciones y se tumba en la playa todo el día. 
#Llevan gafas de sol por el sol. Las masas van a la piscina para nadar en el agua y divertirse.