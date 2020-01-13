// a deck will have a list of card instances
// List is almost like array
class Deck {
  List<Card> cards;

  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King',
      'Joker'
    ];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {}
    }
  }
}

// each card needs a rank and suit, both will be string type
class Card {
  String suit;
  String rank;
}
