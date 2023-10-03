import random
alfabetoC = "abcdefghijklmnopqrstuvwxyz"
alfabetoL = list(alfabetoC)


def alfabeto_aleatorio(alfabetoC):
    alfabeto2 = ""
    while len(alfabeto2) < len(alfabetoC):
        ale = random.choice(alfabetoC)
        if not ale in alfabeto2:
            alfabeto2 += ale
    return alfabeto2

def alfabeto_aleatorio2(alfabetoL):
    random.shuffle(alfabetoL)
    return alfabetoL

def cargaPalabras():
    archivo = open('words.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    print (len(palabras), 'palabras leidas')
    return palabras

texto = "L prq r yervrz gvvxvdq.Od selqrt"\
"rszvedood, l sldlupvq goex rz 5 ai."\
"l gvdz poiv rdq zoox r upogue"\
"zpvd l gvdz zo uvv r kocabv"\
"os it selvdqu  rz r hre qogdzogd"

alfabeto = 'abcdefghijklmnopqrstuvwxyz'
def frecuencias():
    frecuencias = {}
    for c in alfabeto:
       frecuencias [c] = 0
    print (frecuencias)
    print(frecuencias.keys())
    for e in texto:
       if e in alfabeto:
        frecuencias[e] += 1
    print (frecuencias)

frecuencias()

miLlave = alfabeto_aleatorio(alfabetoC)
diccionario = cargaPalabras()

print(miLlave)

c= 0
palabrasP = []
pal = ""
for p in diccionario:
   if len(p) == 8:
      if (p[2] == p[6]) and (p[1] == p[5]) and (p[3] == p[7]):
        pal = pal+p+","
        c = c + 1
        print(p)
palabrasP = pal.split(",")

print(c)

b= 0
for p in diccionario:
   if len(p) == 3:
      if p[2] == 1 :
        b = b + 1
        print(p)
print(b)