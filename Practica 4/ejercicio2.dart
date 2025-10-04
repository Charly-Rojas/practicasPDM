// Escriba una función que reciba un Mapa como argumento y un número entero que
// corresponde a un año. El Mapa debe estar definido de la siguiente forma:
// • Ejemplo:
// [1:
// [
// "Titulo": "El señor de los anillos: La comunidad del anillo",
// "Autor": "J.R.R. Tolkien",
// "Año": "1954"
// ],
// 2:
// [
// "Titulo": "Harry Potter y la Orden del Fénix",
// "Autor": "J. K. Rowling",
// "Año": "2003"
// ]
// ]
// La función debe recibir el Mapa y un año, con ello determinar cuales libros en el Mapa
// coinciden con el año pasado como parámetro a la función. El resultado se debe almacenar y
// devolver en un conjunto


void main(List<String> args) {
  Map<int, Map<String, String>> libros = {
    1: {
      "Titulo": "El señor de los anillos: La comunidad del anillo",
      "Autor": "J.R.R. Tolkien",
      "Año": "1954"
    },
    2: {
      "Titulo": "Harry Potter y la Orden del Fénix",
      "Autor": "J. K. Rowling",
      "Año": "2003"
    },
    3: {
      "Titulo": "Cien años de soledad",
      "Autor": "Gabriel García Márquez",
      "Año": "1967"
    },
    4: {
      "Titulo": "1984",
      "Autor": "George Orwell",
      "Año": "1949"
    },
    5: {
      "Titulo": "Don Quijote de la Mancha",
      "Autor": "Miguel de Cervantes",
      "Año": "1605"
    },
    6: {
      "Titulo": "El Hobbit",
      "Autor": "J.R.R. Tolkien",
      "Año": "1954"
    }

  };

  print(anio(libros, "2003"));
  print(anio(libros, "1954"));
  print(anio(libros, "1800"));

  
}


Set <Map<String, String>> anio(Map<int, Map<String, String>> libros, String anio){
  Set <Map<String, String>> librosAnio = {};
  for (var libro in libros.values) {
    if (libro["Año"] == anio) {
      librosAnio.add(libro);
    }
  }
  return librosAnio;
}