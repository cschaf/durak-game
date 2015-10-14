Deck = require('../../src/domain/deck')
Card = require('../../src/domain/card')

###Game {
  dealTable:
   DealTable {
     ground: [],
     pile: [],
     trump: Card { number: 7, suit: 'Clubs' } },
  deck:
   Deck {
     _suits: [ 'Heart', 'Spades', 'Clubs', 'Diamonds' ],
     cards:
      [ Card { number: 7, suit: 'Hearts' },
        Card { number: 9, suit: 'Spades' },
        Card { number: 6, suit: 'Hearts' },
        Card { number: 9, suit: 'Clubs' },
        Card { number: 8, suit: 'Diamonds' },
        Card { number: 9, suit: 'Hearts' },
        Card { number: 6, suit: 'Diamonds' },
        Card { number: 12, suit: 'Hearts' },
        Card { number: 8' suit: 'Hearts' },
        Card { number: 10, suit: 'Hearts' },
        Card { number: 6, suit: 'Spades' } ] },
  players:
   [ Player { id: 1, hand: [Card { number: 14, suit: 'Spades' },Card { number: 14, suit: 'Hearts' },Card { number: 13, suit: 'Hearts' },Card { number: 'D', suit: 'Clubs' },Card { number: '10', suit: 'Spades' },Card { number: '7', suit: 'Spades' }] },
     Player { id: 2, hand: [Card { number: 13, suit: 'Diamonds' },Card { number: 10, suit: 'Diamonds' },Card { number: 12, suit: 'Hearts' },Card { number: 'D', suit: 'Diamonds' },Card { number: 'A', suit: 'Clubs' },Card { number: 'B', suit: 'Spades' }] },
     Player { id: 3, hand: [Card { number: 13, suit: 'Clubs' },Card { number: 10, suit: 'Clubs' },Card { number: 11, suit: 'Diamonds' },Card { number: 8, suit: 'Spades' },Card { number: 13, suit: 'Spades' },Card { number: 13, suit: 'Spades' }] },
     Player { id: 4, hand: [Card { number: 7, suit: 'Diamonds' },Card { number: 6, suit: 'Clubs' },Card { number: 11, suit: 'Clubs' },Card { number: 8, suit: 'Clubs' },Card { number: 9, suit: 'Diamonds' },Card { number: 14, suit: 'Diamonds' }] } ],
  currentTurn: [ 1, 2, 3, 4 ],
  started: Tue Oct 06 2015 16:27:50 GMT+0200 (Mitteleuropäische Sommerzeit),
  finished:
  inProgress: true,
  winner: null }
###

module.exports = class DeckStub extends Deck
  _createCards: () ->
    # deal out cards
    @cards.push(new Card(14, 'Spades'))
    @cards.push(new Card(13, 'Diamonds'))
    @cards.push(new Card(13, 'Clubs'))
    @cards.push(new Card(7, 'Diamonds'))

    @cards.push(new Card(14, 'Hearts'))
    @cards.push(new Card(10, 'Diamonds'))
    @cards.push(new Card(10, 'Clubs'))
    @cards.push(new Card(6, 'Clubs'))

    @cards.push(new Card(13, 'Hearts'))
    @cards.push(new Card(12, 'Hearts'))
    @cards.push(new Card(11, 'Diamonds'))
    @cards.push(new Card(11, 'Clubs'))

    @cards.push(new Card(12, 'Clubs'))
    @cards.push(new Card(12, 'Diamonds'))
    @cards.push(new Card(8, 'Spades'))
    @cards.push(new Card(8, 'Clubs'))

    @cards.push(new Card(10, 'Spades'))
    @cards.push(new Card(14, 'Clubs'))
    @cards.push(new Card(13, 'Spades'))
    @cards.push(new Card(9, 'Diamonds'))

    @cards.push(new Card(7, 'Spades'))
    @cards.push(new Card(11, 'Spades'))
    @cards.push(new Card(13, 'Spades'))
    @cards.push(new Card(14, 'Diamonds'))

    # Trumps
    @cards.push(new Card(7, 'Clubs'))

    # deck cards
    @cards.push(new Card(7, 'Hearts'))
    @cards.push(new Card(9, 'Spades'))
    @cards.push(new Card(6, 'Hearts'))
    @cards.push(new Card(9, 'Clubs'))
    @cards.push(new Card(8, 'Diamonds'))
    @cards.push(new Card(9, 'Hearts'))
    @cards.push(new Card(6, 'Diamonds'))
    @cards.push(new Card(12, 'Hearts'))
    @cards.push(new Card(8, 'Hearts'))
    @cards.push(new Card(10, 'Hearts'))
    @cards.push(new Card(6, 'Spades'))