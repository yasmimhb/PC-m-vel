import 'package:trab3/trab3.dart';  

void main() {
  var baralho = Baralho();

  // Embaralhar o baralho
  baralho.embaralhar();

  // Distribuir 5 cartas
  for (int i = 0; i < 5; i++) {
    var carta = baralho.comprar();
    print(carta);
  }

  // Mostrar quantas cartas restam no baralho
  print('Cartas restantes no baralho: ${baralho.cartasRestantes()}');
}
