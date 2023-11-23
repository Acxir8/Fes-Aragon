import random

def cargaPalabras():
    archivo = open('C:/Users/EnriqueMV/Desktop/Fes-Aragon/5toSemestre/DiseñoYAnalisisDeAlgoritmos/Proyecto/diccionarioFrances.txt', 'r')
    renglon = archivo.readline()
    palabras = renglon.split()
    print (len(palabras), 'palabras leidas')
    return palabras

def cargaCifrado():
    archivo = open('C:/Users/EnriqueMV/Desktop/Fes-Aragon/5toSemestre/DiseñoYAnalisisDeAlgoritmos/Proyecto/texto1.txt', 'r', encoding="utf8")
    renglon = archivo.readline().lower() 
    return renglon

def descifraSustituye(cadena, alfabetoLlave):
    alfabeto = 'aâàbcçdeêéèëfghiïîjklmnoôœpqrstuüûùvwxyz'    
    nuevaCadena = ""    
    for letra in cadena:
        if letra in alfabeto.casefold():
            posicion = alfabeto.find(letra)
            nuevaCadena = nuevaCadena + alfabetoLlave[posicion]
        else:
            nuevaCadena = nuevaCadena + letra
    return nuevaCadena


dic = cargaPalabras()
cifrado = cargaCifrado()

posA="c"			
posB="p"
posD="f"
posE="s"
posF="h" 
posG="aâà"
posH="t"
posI="iïî" 
posJ="q"
posK="oôœ"
posL="v"
posO="n"
posP="u"
posQ="eêéèë"
posR="r"
posS="uüûù"
posT="x"
posU="m"
posW="l"
posX="d"
posY="b"
posZ="g"
	

#alfabeto = 'aâàbcçdeêéèëfghiïîjklmnoôœpqrstuüûùvwxyz'
alfabetoLlave  = 'cXXpXXfsXXXXhatiXXqoqXXnXXueruxmXXXXldbg'

c = 0
#Probando con gbbgrhiqoh  Volver a intentar después
'''for p in dic:
    if len(p)==10:
        if p[1]==p[2] and p[0]!=p[3] and p[-1] == p[-5]:
            c = c+1
            print(p)'''
      
#Probando con riafqeeq
'''for p in dic:
    if len(p)==8:
        if p[-1]==p[-4] and p[-2]== p[-3] and p[0]!= p[-4] and p[0]!= p[-3]and p[1]!= p[-4] and p[1]!= p[-3]and p[2]!= p[-4] and p[2]!= p[-3]and p[3]!= p[-4] and p[3]!= p[-3]:
            if p[0] in posR and p[1] in posI and p[2] in posA and p[3] in posF and p[4] in posQ and p[5] in posE:
                c = c+1
                print(p)'''
 
#Probando con zqorq 
'''for p in dic:
    if len(p)==5:
        if p[-1]==p[1]and p[-2] != p[-3] and p[0] != p[-1] and p[0] != p[-2]and p[0] != p[-3]and p[2] != p[-1]:
            if p[1] in posQ and p[3] in posR and p[2] in posO:
                c = c+1
                print(p)'''
               
#Probando con xqroiqr
'''for p in dic:
    if len(p)==7:
        if p[1] == p[-2] and p[2] == p[-1]:
           if p[1] in posQ and p[2] in posR and p[-3] in posI:
                c = c+1
                print(p)'''
 
#Probando con brioaibgwquqoh
'''for p in dic:
    if len(p)==14:
        if p[-5] == p[-3] and p[0]== p[6] and p[2]==p[5] and p[3] == p[-2]:
            if p[1] in posR and p[2] in posI and p[3] in posO and p[4] in posA and p[-3] in posQ:
                c = c+1
                print(p)'''

#Probando con brkbriqhqe
'''for p in dic:
    if len(p)==10:
        if p[0] == p[3] and p[-2]==p[-4]:
            if p[0] in posB and p[1] in posR and p[5] in posI:
                c = c+1
                print(p)'''
 
#Probando con gpt
'''for p in dic:
    if len(p)==3:
        #if p[1] == p[-2]:
            if p[0] in posG and p[1] in posP and p[2] in posT:# and p[3] in posI:# and p[-2] in posP and p[-1] in posQ:
                c = c+1
                print(p)'''
          
#Probando con jpi
'''for p in dic:
    if len(p)==3:
       # if p[0] == p[4] and p[-2] == p[-3]:
            if p[1] in posP and p[2] in posI:
                c = c+1
                print(p)'''

#Probando con hrkplq
'''for p in dic:
    if len(p)==6:
       #if p[1] == p[-3]:
            if p[0] in posH and p[1] in posR and p[2] in posK and p[3] in posP and p[-2] in posL and p[-1] in posQ:
                c = c+1
                print(p)'''

#Probando con hsbijpq
'''for p in dic:
    if len(p)==7:
       #if p[1] == p[-3]:
            if p[0] in posH and p[-2] in posP and p[3] in posI:# and p[-3] in posJ:
                c = c+1
                print(p)'''

#Probando con diyrqe
'''for p in dic:
    if len(p)==6:
        #if p[1] == p[-3]:
            if p[0] in posD and p[1] in posI and p[3] in posR and p[-2] in posQ and p[-1] in posE:
                c = c+1
                print(p)'''

#Probando con wg
'''for p in dic:
    if len(p)==2:
        #if p[1] == p[2] and p[0] == p[7]:# and p[5] == p[-1]:
            if p[1] in posG:
                
                c = c+1
                print(p)'''

#Probando con rkpzqe
'''for p in dic:
    if len(p)==6:
        #if p[1] == p[5]:
            if p[0] in posR and p[1] in posK and p[4] in posQ and p[-1] in posE:
                c = c+1
                print(p)'''

#Probando con gwiuqohe
'''for p in dic:
    if len(p)==8:
       # if p[1] == p[-3]:
            if p[0] in posG and p[2] in posI and p[-1] in posE and p[-4] in posQ:
                c = c+1
                print(p)'''

#Probando con drpih
'''for p in dic:
    if len(p)==5:
        #if p[0] == p[-4] and p[1] == p[-2]:
            if p[1] in posR and p[3] in posI and p[-1] in posH:
                c = c+1
                print(p) '''

#Probando con bwpe
'''for p in dic:
    if len(p)==4:
        #if p[-1] == p[2]:
            if p[1] in posW and p[2] in posP and p[-1] in posE:
                c = c+1
                print(p)'''

#Probando con hrkplq
'''for p in dic:
    if len(p)==6:
        #if p[1] == p[-3]:
            if p[0] in posH and p[1] in posR and p[2] in posK and p[3] in posP and p[-1] in posQ:
                c = c+1
                print(p)
print(c)'''


b = descifraSustituye(cifrado, alfabetoLlave)
print(b)

#Mensaje descifrado: 
#l'orange est le fruit de l'oranger doux, un arbre qui appartient au genre citrus de la famille rutaceas. 
#de sa composition nutritionnelle, se distingue sa faible qaleur energetique, grace a sa forte teneur en
#eau et sa richesse en qitamine c, en acide folique et en mineraux comme le potassium, le magnesium et le calcium,
#qui sont a peine absorbes par l'organisme. il contient des quantites appreciables de beta-carotene, responsable de
#sa couleur tupique et connu pour ses proprietes antioxudantes ; en plus des acides malique, oxalique, tartrique et citrique, 
#ce dernier renforce l'action de la qitamine c. la quantite de fibres est appreciable et se trouqe principalement dans la partie
#blanche entre la pulpe et l'ecorce, sa consommation faqorise donc le transit intestinal. la qitamine c participe a la formation du 
#collagene, des os et des dents, des globules rouges et faqorise l'absorption du fer des aliments et la resistance aux infections.

#Traducción al español: 
#La naranja es el fruto del naranjo dulce, un árbol que pertenece al género de los cítricos de la familia de las rutáceas.
#  De su composición nutricional destaca su bajo contenido energético, gracias a su alto contenido en agua y su riqueza en
#  vitamina C, ácido fólico y minerales como potasio, magnesio y calcio, que apenas son absorbidos por el organismo. contiene
#  cantidades apreciables de betacaroteno, responsable de su color túpico y conocido por sus propiedades antioxidantes; Además
#  de los ácidos málico, oxálico, tartárico y cítrico, este último refuerza la acción de la qitamina c. la cantidad de fibra es
#  apreciable y se encuentra principalmente en la parte blanca entre la pulpa y la corteza, por lo que su consumo favorece el
#  tránsito intestinal. La vitamina C participa en la formación de colágeno, huesos y dientes, glóbulos rojos y favorece la
#  absorción del hierro de los alimentos y la resistencia a las infecciones.