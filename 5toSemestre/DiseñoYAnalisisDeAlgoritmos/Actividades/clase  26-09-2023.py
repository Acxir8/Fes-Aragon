a = {}
b = []
a["primero"] = "lunes"
a["segundo"] = "martes"
b.append ("lunes")

print (a["primero"])
print (b[0])

miAlfabeto = 'cfhjlngxbatzusyonpvdeqriwk'

def cifraSustitucion(cad, llave):
    alfabeto = 'abcdefghijklmnopqrstuvwxyz'
    cad = cad.lower()
    cifrado = ''
    for c in cad:
        if c in alfabeto:
            pos = alfabeto.index(c)
            cifrado = cifrado + llave [pos]
    return cifrado

texto = 'hola'
print(cifraSustitucion(texto, miAlfabeto))

a = "este es un texto de prueba un poco mas grande"\
    "para poder ejercitar algunas estructuras de data"\
    "tales como el diccionario, y tambien hacer un"\
    "ataque por analisis de Frecuencias"

b = cifraSustitucion(a, miAlfabeto)
print (b)
alfabeto = 'abcdefghijklmnopqrstuvwxyz'
frecuencias = {}
for c in alfabeto:
    frecuencias [c] = 0
print (frecuencias)
print(frecuencias.keys())
for e in a:
    if e in alfabeto:
        frecuencias[e] += 1
print (frecuencias)

