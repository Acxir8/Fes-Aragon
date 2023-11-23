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
    archivo = open('dictPortugues.txt', 'r' ,  encoding= 'utf-8')
    renglon = archivo.readline()
    palabras = renglon.split()
    return palabras
def leerTxt():
    with open('Proy08txt2.txt', 'r') as archivo:
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
         caracteres.append(caracter)
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
diccionarioPortugues = cargaPalabras()
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
        print(i) """
posA="v"
posB="q"
posC="r"
posD="s"
posE="o"
posF="t"
posG="n"
posH="b"
posI="g"
posJ="l"
posK="z"
posL="h"
posM="c"
posN="j"
posO="d"
posP="m"
posQ="f"
posR="u"
posS="i"
posU="x"
posW="a"
posX="e"
posZ="p"
# para dãe
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 3:
        if i[0] in posD and i[-1] in posE:
            if i[1] == 'ã':
                contador += 1
                print(i)
print(contador)"""
#para hew
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 3:
        if i[1] in posE and i[0] in posH and i[-1] in posW:
                contador += 1
                print(i)
print(contador)"""
# para xddwd
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 5:
        if i[1] in posD and i[2] in posD and i[-1] in posD and i[0] in posX and i[-2] in posW:
                contador += 1
                print(i)
print(contador)"""
# para mepe
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 4:
        if i[-1] in posE and i[1] in posE:
                contador += 1
                print(i)
print(contador)"""
#para xdfw
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 4:
        if i[-1] in posW and i[1] in posD and i[0] in posX and i[-2] in posF:
                contador += 1
                print(i)
print(contador)"""
#para pecwgied
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 8:
        if i[3] in posW and i[-1] in posD and i[-2] in posE and i[1] in posE and i[0] in posP:
                contador += 1
                print(i)
print(contador)"""
# para mrne
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 4:
        if i[0] in posM and i[1] in posR and i[-2] in posN and i[-1] in posE:
                contador += 1
                print(i)
print(contador)"""
#para wjmwjsgskwgfx
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 13:
        if i[0] in posW and i[2] in posM and i[3] in posW and i[-1] in posX:
                contador += 1
                print(i)
print(contador)"""
# para pxjlecwp
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 8:
        if i[0] in posP and i[1] in posX and i[2] in posJ and i[3] in posL and i[-3] in posC:
            contador += 1
            print(i)
print(contador)"""
#para euwjsme
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 7:
        if i[0] in posE and i[2] in posW and i[3] in posJ and i[4] in posS and i[-1] and posE:
            print(i)
            contador += 1
print(contador)"""
#para brx
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 3:
        if i[0] in posB and i[1] in posR and i[-1] in posX:
            print(i)
            contador += 1
print(contador)"""
# para asfwpsgw
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 8:
	    if i[1] in posS and i[-1] in posW and i[2] in posF:
             contador += 1
             print(i)
print(contador)"""
# para ow
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 2:
	    if i[0] in posO and i[-1] in posW:
             contador += 1
             print(i)
print(contador)"""
# para qegfx
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 5:
        if i[0] in posQ and i[1] in posE and i[2] in posG and i[-2] in posF and i[-1] and posX:
            print(i)
            contador += 1
print(contador)"""
# para qshcwd
"""contador = 0
for i in diccionarioPortugues:
    if len(i) == 6:
        if i[0] in posQ and i[1] in posS and i[2] in posH and i[3] in posC and i[-1] and posD:
            print(i)
            contador += 1
print(contador)"""

        # abcdefghijklmnopqrstuvwxyz
llave = ("whmoxqilsn-jpgezbcdfra-u-k")
txtDescifrado=descifraSustituye("pecwgied x pecwgied dãe qcrfwd brx qecgxmxp zermwd mwjecswd x mrne mepzegxgfx pwsd whrgowgfx, oxzesd ow wirw, dãe ed mwchesocwfed (qcrfedx, ijsmedx x usjsfej). oxdfwmw-dx e dxr wzecfx ox qshcwd, brx pxjlecwp e fcwgdsfe sgfxdfsgwj. cxjwfsawpxgfx w erfced grfcsxgfxd x mepzedfed eciwgsmed, ed pecwgied dãe rpw qegfx prsfe hew ox asfwpsgw m x wmsoe msfcsme (mep wçãe oxdsgqxfwgfx x wjmwjsgskwgfx ow rcsgw, zefxgmsw w wçãe ow asfwpsgw m), wmsoe dwjsmsjsme (wgfs-sgqjwpwfecse x wgfsmewirjwgfx wçãe), wmsoe qejsme, wmsoe pwjsme x euwjsme, zefwddse x, xp pxgec icwr, megfxp asfwpsgw x, brx xdfw xgaejasow gw xdfwhsjsowox owd mxjrjwd dwgirsgxwd x gw qxcfsjsowox. w asfwpsgw m fxp wçãe wgfseusowgfx, wddsp mepe w asfwpsgw x x ed qjwaegesoxd (wgfemswgsgwd), zsipxgfed axixfwsd brx oãe w xddwd qcrfwd drw mec mwcwmfxcsdfsmw", llave)
meterPalabras(txtDescifrado,"Portugues")
print(txtDescifrado)