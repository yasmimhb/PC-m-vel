import 'dart:math'; 

// Enum para Naipe
enum Naipe { Copas, Ouro, Espadas, Paus }

// Enum para Valor
enum Valor {
  As, Dois, Tres, Quatro, Cinco, Seis, Sete, Oito, Nove, Dez, Valete, Dama, Rei
}

class Carta {
  final Naipe naipe;
  final Valor valor;

  Carta(this.naipe, this.valor);

  @override
  String toString() {
    return '${_valorToString(valor)} de ${_naipeToString(naipe)}';
  }

  // Função auxiliar para converter o valor para String
  String _valorToString(Valor valor) {
    switch (valor) {
      case Valor.As:
        return 'Ás';
      case Valor.Valete:
        return 'Valete';
      case Valor.Dama:
        return 'Dama';
      case Valor.Rei:
        return 'Rei';
      default:
        return '${valor.index + 1}';
    }
  }

  // Função auxiliar para converter o naipe para String
  String _naipeToString(Naipe naipe) {
    switch (naipe) {
      case Naipe.Copas:
        return 'Copas';
      case Naipe.Ouro:
        return 'Ouro';
      case Naipe.Espadas:
        return 'Espadas';
      case Naipe.Paus:
        return 'Paus';
    }
  }
}

class Baralho {
  List<Carta> cartas = [];

  Baralho() {
    // Inicializar o baralho com 52 cartas
    for (var naipe in Naipe.values) {
      for (var valor in Valor.values) {
        cartas.add(Carta(naipe, valor));
      }
    }
  }

  // Método para embaralhar as cartas
  void embaralhar() {
    cartas.shuffle(Random());
  }

  // Método para comprar uma carta (remover a carta do topo)
  Carta comprar() {
    return cartas.removeLast();
  }

  // Método para verificar o número de cartas restantes
  int cartasRestantes() {
    return cartas.length;
  }
}
