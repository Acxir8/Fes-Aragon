import random

def cargaPalabras():
    archivo = open('words.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    print (len(palabras), 'palabras leidas')
    return palabras

def cargaCifrado():
    archivo = open('cifradot3.txt', 'r', encoding="utf8")
    renglon = archivo.readline()    
    return renglon

def descifraSustituye(cadena, alfabetoLlave):
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'    
    nuevaCadena = ""    
    for letra in cadena:
        if letra in alfabeto:
            posicion = alfabeto.find(letra)
            nuevaCadena = nuevaCadena + alfabetoLlave[posicion]
        else:
            nuevaCadena = nuevaCadena + letra
    return nuevaCadena


dic = cargaPalabras()
cifrado = cargaCifrado()

posA ="o"
posB ="k"
posC ="p"
posD ="j"
posE ="f"
posG ="u"
posH ="x"
posI ="r"
PosJ ="q"
posK ="m"
posL ="a"
posN ="s"
posO ="y"
posP ="h"
posQ ="l"
posR ="g"
posS ="t"
posT ="n"
posU ="w"
posV ="c"
posW ="e"
posX ="d"
posY ="i"
posZ ="b"

#alfabeto = 'abcdefghijklmnopqrstuvwxyz'
alfabetoLlave = 'okpjfXuxrqmaXsyhlgtnwcedib'

c = 0
#Probando con ngvvwwx
'''for p in dic:
    if len(p)==7:
        if p[2]==p[3] and p[4]== p[5]:
            c = c+1
            print(p)'''
        
#Probando con ciwswtxwx
'''for p in dic:
    if len(p)==9:
        if p[2]==p[4] and p[4]== p[-2] and p[-3] == p[-1]:
            if p[2] in posW and p[-1] in posX:
                c = c+1
                print(p)'''

#Probando con spw
'''for p in dic:
    if len(p)==3:
        if p[0] in posS and p[-1] in posW:
                c = c+1
                print(p)'''
#Probando con whcwxysyat
'''for p in dic:
    if len(p)==10:
        if p[0] == p[3] and p[5] == p[-3]:
            if p[0] in posW and p[2] in posC and p[4] in posX and p[-4] in posS and p[-1] in posT:
                c = c+1
                print(p)'''

#Probando con vatnwjgwtsqo
'''for p in dic:
    if len(p)==10:
        if p[4] == p[7]:
            if p[0] in posV and p[1] in posA and p[2] in posT and p[3] in posN and p[4] in posW and p[-6] in posG and p[-4] in posT and p[-3] in posS:
                c = c+1
                #print(p)'''

#Probando con spiww
'''for p in dic:
    if len(p)==5:
        if p[-2] == p[-1]:
            if p[0] in posS and p[1] in posP and p[2] in posI and p[3] in posW:
                c = c+1
                print(p)'''

#Probando con leswitaatn
'''for p in dic:
    if len(p)==10:
        if p[-3] == p[-4]:
            if p[2] in posS and p[3] in posW and p[4] in posI and p[5] in posT and p[-3] in posA and p[-2] in posT:
                c = c+1
                print(p)'''

#Probando con lvsglqqo
'''for p in dic:
    if len(p)==8:
        if p[0] == p[4] and p[-2] == p[-3]:
            if p[0] in posL and p[1] in posV and p[2] in posS and p[3] in posG:
                c = c+1
                print(p)'''
#Probando con sua
'''for p in dic:
    if len(p)==3:
       # if p[0] == p[4] and p[-2] == p[-3]:
            if p[0] in posS and p[2] in posA:
                c = c+1
                print(p)'''

#Probando con slbw
'''for p in dic:
    if len(p)==4:
       # if p[0] == p[4] and p[-2] == p[-3]:
            if p[0] in posS and p[1] in posL and p[3] in posW:
                c = c+1
                print(p)'''

#Probando con vakeais
'''for p in dic:
    if len(p)==7:
        if p[1] == p[-3]:
            if p[0] in posV and p[1] in posA and p[3] in posE and p[-2] in posI and p[-1] in posS:
                c = c+1
                print(p)'''

#Probando con kyrps
'''for p in dic:
    if len(p)==5:
        #if p[1] == p[-3]:
            if p[0] in posK and p[1] in posY and p[3] in posP and p[4] in posS:
                c = c+1
                print(p)'''

#Probando con zw
'''for p in dic:
    if len(p)==2:
        #if p[1] == p[-3]:
            if p[1] in posW:
                c = c+1
                print(p)'''

#Probando con dgns
'''for p in dic:
    if len(p)==4:
        #if p[1] == p[-3]:
            if p[1] in posG and p[2] in posN and p[3] in posS:
                c = c+1
                print(p)
print(c)'''
b = descifraSustituye(cifrado, alfabetoLlave)
print(b)

