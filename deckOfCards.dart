// a deck will have a list of card instances
// List is almost like array
class Deck {
  List<Card> cards;

  Deck() {}
}

// each card needs a rank and suit, both will be string type
class Card {
  String suit;
  String rank;
}
