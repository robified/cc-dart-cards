void main() {
  var deck = new Deck();
  // print(deck);

  // deck.shuffle();
  // print(deck);

  // print(deck.cardsWithSuit('Diamonds'));

  // print(deck);
  // print(deck.deal(5));
  // print(deck);

  print(deck);
  deck.removeCard('Diamonds', 'Ace');
  print(deck);
}

// a deck will have a list of card instances
// List is almost like array
class Deck {
  // declare a variable to reference something, but there's no initallization
  List<Card> cards = [];

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

    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: mySuit);
        // we can say this.card, but we don't have
        // cards ends up being null because the variable initialization wasn't done
        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

// each card needs a rank and suit, both will be string type
class Card {
  String suit;
  String rank;

  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}
