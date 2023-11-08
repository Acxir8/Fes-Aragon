# Problema 2: Verificación de año bisiesto, Un año es bisiesto si es divisible por 4, excepto los años que son
#divisibles por 100 pero no por 400. Implementa una función que verifique si un año es bisiesto
#utilizando operaciones modulares.
def bisiesto(year):
    if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0:
        return " es un año bisiesto."
    else:
        return " no es un año bisiesto."


year = int(input("Inserte el año que desee verificar: "))

print(f"El año", year, bisiesto(year))


