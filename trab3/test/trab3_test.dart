import 'package:trab3/trab3.dart'; 
import 'package:test/test.dart';

void main() {
  group('Baralho de Cartas', () {
    test('Baralho deve conter 52 cartas inicialmente', () {
      var baralho = Baralho();
      expect(baralho.cartasRestantes(), equals(52));
    });

    test('Comprar uma carta deve reduzir o número de cartas restantes', () {
      var baralho = Baralho();
      baralho.comprar(); // Compra uma carta
      expect(baralho.cartasRestantes(), equals(51)); // Agora restam 51 cartas
    });

    test('Embaralhar o baralho deve mudar a ordem das cartas', () {
      var baralho = Baralho();
      var primeiraCartaAntes = baralho.cartas[0];
      baralho.embaralhar();
      var primeiraCartaDepois = baralho.cartas[0];

      // Verificar se a primeira carta mudou após embaralhar
      expect(primeiraCartaAntes == primeiraCartaDepois, isFalse);
    });

    test('Após distribuir 5 cartas, devem restar 47 cartas no baralho', () {
      var baralho = Baralho();
      for (int i = 0; i < 5; i++) {
        baralho.comprar();
      }
      expect(baralho.cartasRestantes(), equals(47));
    });
  });
}
