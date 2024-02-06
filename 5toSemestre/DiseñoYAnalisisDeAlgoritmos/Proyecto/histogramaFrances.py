def cargaCifrado():
    archivo = open('texto1.txt', 'r',  encoding="utf8")
    renglon = archivo.readline()    
    return renglon

cifrado = cargaCifrado()
histo = {}
alfabeto = 'aâàbcçdeêéèëfghiïîjklmnoôœpqrstuüûùvwxyz'
for e in alfabeto:
    histo[e] = 0
for letra in cifrado:
    if letra in alfabeto:
        histo[letra] += 1
print(histo)




