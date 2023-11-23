def cargaCifrado():
    archivo = open('C:/Users/EnriqueMV/Desktop/Fes-Aragon/5toSemestre/DiseñoYAnalisisDeAlgoritmos/Proyecto/texto1.txt', 'r',  encoding="utf8")
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




