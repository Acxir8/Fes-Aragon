# Problema 1 : Realice un programa que reciba un valor de 0 a 6 que corresponden a los días de la semana, es
#decir, “domingo”, “lunes”, “mates”, “miércoles”, “jueves”, “viernes” y “sábado” y después un valor
#numérico que corresponderá a la cantidad de días posteriores y devuelva el día de la semana que
#será después de sumar ese valor.
def calcularDia(dia, diaSuma):
    dias = ["domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"]
    
    if dia < 0 or dia > 6:
        return "Día no válido"
    
    else:
        nuevoDia = (dia + diaSuma) % 7
        return dias[nuevoDia]
    

print ("0.Domingo \n1.Lunes\n2.Martes\n3.Miercoles\n4.Jueves\n5.Viernes\n6.Sabado")
dia = int(input("Inserte el número del 0-6 de los días de la semana "))
diaSuma = int(input("Inserte cuantos días quiere que pasen "))

print("El proximo dia sera:", calcularDia(dia, diaSuma))





