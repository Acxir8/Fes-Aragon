#Random
import random
#Listas
a = [7,3,9,4,8]
a[0]
a[4]
a[-1]
a[-4]
print(a[0])
print(a[-1])
print(len(a))
print(a.index(9))

a.sort()

print(a)

b=[7,6,8,10,4,5,9,2,3,1]
n=len(b)
c=0
i=0
cambio=0

print(b)
for c in range(n):
    for i in range (n-1):
        if b[c] <= b[i]:
            b[c], b[i] = b[i], b[c]
    print(b)



print(random.random())