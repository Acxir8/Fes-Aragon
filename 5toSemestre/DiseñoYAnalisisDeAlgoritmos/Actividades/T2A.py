def cargaPalabras():
    archivo = open('words.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    print (len(palabras), 'palabras leidas')
    return palabras

def cargaCifrado():
    archivo = open('textoCifrado.txt', 'r')
    renglon = archivo.readline()
    return renglon

def CifraCesar(cadena, llave):
    if llave < 0:
        llave = 26 - llave
    cadena = cadena.lower()
    nuevaCadena = ""
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'
    for l in cadena:
        if l in alfabeto:
            posicionLetra = alfabeto.find(l)
            nuevaCadena = nuevaCadena + alfabeto[((posicionLetra + llave) % 26)]
        else:
            nuevaCadena = nuevaCadena + l
    return nuevaCadena

def descifrarCesar(cadena, llave):
    return CifraCesar(cadena, llave)

def getAciertos(listaPalabras, diccionario):
    numAciertos = 0
    for pal in listaPalabras:
        if pal in diccionario:
            numAciertos = numAciertos + 1
    return numAciertos


palabras = cargaPalabras()
cadena = cargaCifrado()
maxAciertos = 10
posibleLlave = 0
cadenaDescifrada = ""




for cont in range(26):
    #print("Llave " + str(cont) +": "+  CifraCesar(cadena, posibleLlave + cont))
    cadenaDescifrada = descifrarCesar(cadena, cont)
    aciertos = getAciertos(cadenaDescifrada.split(), palabras)
    if aciertos > maxAciertos:
        posibleLlave = cont
        print("Llave más probable:", posibleLlave)
        print("Texto descifrado:", descifrarCesar(cadena, posibleLlave))
        break
