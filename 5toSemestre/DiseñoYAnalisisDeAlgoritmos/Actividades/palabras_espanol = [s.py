palabras_espanol = ["manzana",
    "naranja", "banana", "coche", "bicicleta",  "viaje", "vacaciones",
    "pelicula", "teatro", "amplio", "alto", "bajo", "rapido", "lento", "fuerte", "debil", "joven", "viejo", "casa", "perro", "gato", "sol", "luna", "agua", "amarillo", "verde", "rojo", "papel", "pluma", "television",
    "feliz", "triste", "bueno", "malo", "gran", "pequeño", "dulce", "salado", "frio", "caliente","hoja", "piedra", "mar", "ciudad", "montaña", "familia", "cielo", "nube", "rio", "bosque","amigo", "familia","cielo", "montaña", "playa", "flor",
    "comida", "amor", "libro", "escuela", "trabajo", "musica", "arte", "deporte", 
    "arena", "silla", "mesa", "computadora", "telefono", "musica", "pintura"
]

# Guardar el diccionario en un archivo con palabras separadas por espacio
with open("diccionario_espanol.txt", "w", encoding="utf-8") as archivo:
    archivo.write(" ".join(palabras_espanol))

print(f"Diccionario guardado en 'diccionario_espanol.txt'")