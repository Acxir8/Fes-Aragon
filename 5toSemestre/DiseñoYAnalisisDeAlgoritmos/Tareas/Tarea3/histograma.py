def cargaCifrado():
    archivo = open('cifrado.txt', 'r')
    renglon = archivo.readline()    
    return renglon

cifrado = cargaCifrado()
histo = {}
alfabeto = 'abcdefghijklmnopqrstuvwxyz'
for e in alfabeto:
    histo[e] = 0
for letra in cifrado:
    if letra in alfabeto:
        histo[letra] += 1
print(histo)

posA ="abcdefghijklmnopqrstuvwxyz"
posB ="abcdefghijklmnopqrstuvwxyz"
posC ="abcdefghijklmnopqrstuvwxyz"
posD ="abcdefghijklmnopqrstuvwxyz"
posE ="abcdefghijklmnopqrstuvwxyz"
posG ="abcdefghijklmnopqrstuvwxyz"
posH ="abcdefghijklmnopqrstuvwxyz"
posI ="abcdefghijklmnopqrstuvwxyz"
posK ="abcdefghijklmnopqrstuvwxyz"
posL ="abcdefghijklmnopqrstuvwxyz"
posO ="abcdefghijklmnopqrstuvwxyz"
posP ="abcdefghijklmnopqrstuvwxyz"
posQ ="abcdefghijklmnopqrstuvwxyz"
posR ="abcdefghijklmnopqrstuvwxyz"
posS ="abcdefghijklmnopqrstuvwxyz"
posT ="abcdefghijklmnopqrstuvwxyz"
posU ="abcdefghijklmnopqrstuvwxyz"
posV ="abcdefghijklmnopqrstuvwxyz"
posX ="abcdefghijklmnopqrstuvwxyz"
posY ="abcdefghijklmnopqrstuvwxyz"
posZ ="abcdefghijklmnopqrstuvwxyz"


#probando con qogdzogd.
'''for p in dic:
    if len(p)==8:
        if p[1]==p[5] and p[3]==p[-1] and p[2]==p[6]:
            if p[0]== 'd' and p[1] in posO and p[-1] in posD:
                    c = c + 1
                    print(p)'''
#probando con rszvedood.
'''for p in dic:
    if len(p)==9:
        if p[5]==p[-1] and p[6]==p[7]:
            if p[6] in posO and p[-1] in posD:
                if p[0] in posR and p[1] in posS and p[3] in posV: 
                    c = c + 1
                    print(p)'''
# probando con gvvxvdq
'''for p in dic:
    if len(p)==7:
        if p[0] in posG and p[1] in posV:
            if p[1]==p[2] and p[2]== p[4]:
                if p[-1] in posQ and p[-2] in posD:
                    c = c + 1
                    print(p)'''
# probando con prq  Xad
'''for p in dic:
    if len(p)==3:
        if p[1:]=='ad':
            c = c + 1
            print(p)'''
# probando con selqrt
'''for p in dic:
    if len(p)==6:
        if p[:2]=='fr' and p[3:5]=='da':
            c = c + 1
            print(p)'''


