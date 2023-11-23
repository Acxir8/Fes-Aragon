import re
def leerTxt(tipo,idiomas):
    with open(tipo +idiomas +'.txt', 'r' , encoding= 'utf-8') as archivo:
     contenido = archivo.read()
     palabras = re.split('[,.;\s)(]', contenido)
     return palabras

def soloPalabras(registroPalabras):
    palabras_limpias = []
    for palabra in registroPalabras:
        if palabra.strip():
         palabras_limpias.append(palabra.strip().lower())
    return palabras_limpias

def quitarRepetidas(registroPalabras):
    palabras_limpias = []
    for palabra in registroPalabras:
         if not (palabra in palabras_limpias):
          palabras_limpias.append(palabra)
    return palabras_limpias

def crearDiccionario (palabras):
    diccionario = {}
    for palabra in palabras:
        diccionario[palabra] = 1
    return diccionario

def ordenarDiccionario (diccionario):
    diccionario_ordenado = dict(sorted(diccionario.items(), key=lambda item: (len(item[0]), item[0])))
    return diccionario_ordenado

def meterPalabras(diccionario, idiomas):
    with open('dict'+idiomas +".txt", "w" , encoding= 'utf-8') as archivo:
        for palabra in diccionario:
            archivo.write(f"{palabra} ")
"""def cargaPalabras(idiomas):
    archivo = open('dict',idiomas + '.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    return palabras
"""
idiomas = ["Aleman","Espaniol","Frances","Ingles","Italiano","Portugues"]
while len(idiomas) > 0:
    idioma = idiomas.pop()
    txt = leerTxt("txt",idioma)
    txtPalabras = soloPalabras(txt)
    txtLimpias = quitarRepetidas(txtPalabras)
    txtDiccionario = crearDiccionario(txtLimpias)
    txtDiccionario = ordenarDiccionario(txtDiccionario)
    meterPalabras(txtDiccionario , idioma)
