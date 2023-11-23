import re
def descifraSustituye(cadena, alfabetoLlave):
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'
    nuevaCadena = ""
    for letra in cadena:
        if letra in alfabeto:
            posicion = alfabetoLlave.find(letra)
            nuevaCadena = nuevaCadena + alfabeto[posicion]
        else:
            nuevaCadena = nuevaCadena + letra
    return nuevaCadena
def cargaPalabras():
    archivo = open('dictIngles.txt', 'r' ,  encoding= 'utf-8')
    renglon = archivo.readline()
    palabras = renglon.split()
    return palabras
def leerTxt():
    with open('Proy08txt1.txt', 'r') as archivo:
     contenido = archivo.read()
     palabras = re.split('[,.;\s)(]', contenido)
     return palabras

def soloPalabras(registroPalabras):
    palabras_limpias = []
    for palabra in registroPalabras:
        if palabra.strip():
         palabras_limpias.append(palabra.strip().lower())
    return palabras_limpias

def soloLetras(palabrasLimpias):
    caracteres = []
    for palabras in palabrasLimpias:
        for caracter in palabras:
         caracteres.append(caracter.lower())
    return caracteres

def descifraSustituye(cadena, alfabetoLlave):
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'
    nuevaCadena = ""
    for letra in cadena:
        if letra in alfabeto:
            posicion = alfabetoLlave.find(letra)
            nuevaCadena = nuevaCadena + alfabeto[posicion]
        else:
            nuevaCadena = nuevaCadena + letra
    return nuevaCadena

def meterPalabras(diccionario, idiomas):
    with open('descifrado'+idiomas +".txt", "w" , encoding= 'utf-8') as archivo:
        for palabra in diccionario:
            archivo.write(f"{palabra}")
histo = {}
diccionarioIngles = cargaPalabras()
cifrado = leerTxt()
cifradoTXT = soloPalabras(cifrado)
letras = soloLetras(cifradoTXT)
alfabeto = 'abcdefghijklmnopqrstuvwxyz'
# METEMOS TODO EL ALFABETO EN UN DICCIONARIO
for i in alfabeto:
    histo[i] = 0

#VAMOS RECORRIENDO EL DICCIONARIO PARA ENCONTRAR LA FRECUENCIA DE LETRAS
for char in letras:
    if char in alfabeto:
        histo[char] += 1
# CON ESTE FOR NOS AYUDAMOS PARA SABER QUE LETRAS NO SE ENCUENTRAN DEL TEXTO CIFRADO
"""for i in histo:
    if histo[i] == 0:
        print(i)"""


posA="r"
posB="d"
posC="t"
posD="l"
posE="m"
posF="i"
posG="y"
posH="b"
posJ="p"
posN="u"
posK="g"
posL="f"
posO="k"
posP="j"
posQ="v"
posR="c"
posS="a"
posT="q"
posU="e"
posV="o"
posX="n"
posW="s"
posY="w"
posZ="h"

# para dfccdu
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 6:
        if i[2] == i[3]:
            if i[0] == i[-2]:
                if i[1] != i[-1]:
                    contador += 1
                    print(i)
print(contador)"""
#para czsc
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if i[0] == i[-1] and i[0] in posC:
            if i[1] != i[-2]:
                if i[1] not in (posU,posC,posF,posD) and i[-2] not in (posU,posC,posF,posD)  :
                    contador += 1
                    print(i)
print(contador)"""
#para cvdb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[0] in posC:
            if i[1] != i[-2]:
                if i[1] not in (posU,posC,posF,posD) and i[-1] not in (posU,posC,posF,posD) and i[-2]in posD:
                    contador += 1
                    print(i)
print(contador)"""
# para vx
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 2:
        if i[0] != i[-1] and i[0] in posV:
            if i[0] not in (posU,posC,posF,posD,posV,posB):
                contador += 1
                print(i)
print(contador)"""
#para efxb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[1] in posF:
            if i[1] != i[-2]:
                if i[0] not in (posU,posC,posF,posD) and i[-2]  in posX and i[-1]in posB:
                    contador += 1
                    print(i)
print(contador)"""
#para luud
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[1] in posU:
            if i[0] != i[-1]:
                if i[0] not in (posU,posC,posF,posD,posV)  and i[-1]in posD:
                    contador += 1
                    print(i)
print(contador)"""
# para wscfwlfub
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 9:
        if  i[3] == i[-3] and i[3] in posF:
            if i[0] == i[4]:
                if i[0] not in (posU,posC,posF,posD) and i[-1]in posB and i[-2] in posU:
                    contador += 1
                    print(i)
print(contador)"""
# para hdfxb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 5:
        if  i[-1] in posB and i[1] in posD and i[2] in posF and i[-2] in posX:
            if i[0] not in (posU,posC,posF,posD,posV,posB,posS,posL)  :
                contador += 1
                print(i)
print(contador)"""
# para Esghu
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 5:
        if  i[-1] in posU:
            if i[0] != i[-1]:
                if i[0] not in (posU,posC,posF,posD,posV,posB,posS,posL)  and i[1]in posS and i[1] != i[0] != i[2] != i[3] != i[4] and i[-2] in posH:
                    contador += 1
                    print(i)
print(contador)"""
#para czsc
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if i[0] in posC and i[0] == i[-1]:
            if i[-2] in posS and  i[1] not in (posU,posC,posF,posD):
                print(i)
                contador += 1
print(contador)"""
# para pnwc
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[-1] in posC and i[-2] in posW:
            if i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV) and i[1] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV):
                print(i)
                contador += 1
print(contador)"""
# para yuau
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[-1] in posU and i[-1] == i [1]:
            if i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV) and i[-2] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV):
                print(i)
                contador += 1
print(contador)"""
#para Tnfcu
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 5:
        if  i[1] in posN and i[-1] in posU and i[-2] in posC and i[2] in posF:
            if i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV) :
                print(i)
                contador += 1
print(contador)"""
# para cvvo
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[1] in posV and i[1] == i[-2] and i[0] in posC:
            if i[-1] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV) :
                print(i)
                contador += 1
print(contador)"""
# para zsqu
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[-1] in posU and i[1] in posS and i[0] in posZ:
            if i[-2] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA) :
                print(i)
                contador += 1
print(contador)"""
#para Kfqu
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if  i[-1] in posU and i[1] in posF and i[-2] in posQ:
            if i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA) :
                print(i)
                contador += 1
print(contador)"""
# para rvndb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 5:
        if i[2:] in "ould" and i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA)  :
                print(i)
                contador += 1
print(contador)"""
#para ouuj
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if i[:-1] in "kee" and i[-1] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA) :
            print(i)
            contador += 1
print(contador)"""
#para kvvb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 4:
        if i[1:] in "ood" and i[0] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA) :
            print(i)
            contador += 1
print(contador)"""
#para wurvxb
"""contador = 0
for i in diccionarioIngles:
    if len(i) == 6:
        if i[:1] in "se" and i[3:] in "ond" and i[2] not in (posU,posC,posF,posD,posL,posB,posS,posZ,posW,posX,posG,posH,posE,posV,posO,posA) :
            print(i)
            contador += 1
print(contador)"""

     # abcdefghijklmnopqrstuvwxyz
llave = ("shrbulkzfpodexvjtawcnqy-g-")
txtDescifrado=descifraSustituye("esghu f bfbx'c causc gvn,tnfcu sw kvvb sw f wzvndb zsqu,esghu f bfbx'c dvqu gvn,tnfcu sw vlcux sw f rvndb zsqu,dfccdu czfxkw f wzvndb zsqu wsfb sxb bvxu,f pnwc xuqua cvvo czu cfeu,gvn yuau sdysgw vx eg efxb,cudd eu, cudd eu czsc gvna wyuuc dvqu zswx'c bfub,kfqu eu, kfqu eu vxu evau rzsxru,cv ouuj gvn wscfwlfub, wscfwlfub,esghu f bfbx'c zvdb gvn,sdd czvwu dvxudg, dvxudg cfeuw,sxb f knuww f xuqua cvdb gvn,f'e wv zsjjg,czsc gvn'au efxu,fl f esou gvn luud wurvxb huwc,kfad, f'e wvaag f ysw hdfxb,gvn yuau sdysgw vx eg efxb,cudd eu, cudd eu czsc gvna wyuuc dvqu zswx'c bfub,kfqu eu, kfqu eu vxu evau rzsxru,cv ouuj gvn wscfwlfub, wscfwlfub,dfccdu czfxkw f wzvndb zsqu wsfb sxb bvxu,f pnwc xuqua cvvo czu cfeu,gvn yuau sdysgw vx eg efxb", llave)
meterPalabras(txtDescifrado,"Ingles")
print(txtDescifrado)