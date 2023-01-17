enum CardName {
  ace,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king
}

class Card {
  final CardName name;
  final CardValue value;

  const Card({required this.name, this.value = const CardValue(value: 0)});

  static Card newCard(CardName name) =>
      Card(name: name, value: CardValue.fromName(name));
}

class CardValue {
  final int value;
  final int? secondValue;
  const CardValue({required this.value, this.secondValue});

  static CardValue fromName(CardName name) {
    if (name.index > 0 && name.index < 9) {
      return CardValue(value: name.index);
    }
    if (name.index == 0) return const CardValue(value: 1, secondValue: 11);
    return const CardValue(value: 10);
  }
}
