palabras = []
def cargaPalabras():
    archivo = open('DonQuijoteVonDerManchaAleman.txt', 'r', encoding="utf8")
    renglon = archivo.readlines()
    return renglon

def filtrarPalabras(linea):
    palabras = linea.split()
    palabrasFiltradas = []
    for palabra in palabras:
        palabraLimpia = ''.join(caracter for caracter in palabra if caracter.isalpha())
        if palabraLimpia:
            palabrasFiltradas.append(palabraLimpia.lower())
    return palabrasFiltradas

def crearDiccionario(palabras):
    for l in linea:
        palabrasLinea = filtrarPalabras(l)
        for palabra in palabrasLinea:
            if palabra not in palabras:
                palabras.append(palabra)
    palabras.sort()

            
def escribirDiccionario(palabras):
    nArchivo = "diccionarioAleman.txt"
    archivo = open(nArchivo, "w")
    for l in palabras:
        archivo.write(l + " ")

linea = cargaPalabras()
crearDiccionario(palabras)    

print(len(palabras))
escribirDiccionario(palabras)
