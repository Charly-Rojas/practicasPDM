// Escriba una función que reciba un párrafo de texto y devuelva una colección que
// contenga la frecuencia de ocurrencia de cada caracter (único) en el texto.

void main() {
  String texto = "abcdefghijklmnñopqrstuvwxyzaeiou";
  print(frecuencia(texto));
}


Map <String, int> frecuencia(String texto){
  Map <String, int> f = {};
  for (var char in texto.split('')) {
    if (char != ' ') {
      f[char] = (f[char] ?? 0) + 1;
    }
  }
  return f;
}