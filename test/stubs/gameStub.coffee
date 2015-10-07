Game = require('../../src/domain/game')
Card = require('../../src/domain/card')
Deck = require('../../src/domain/deck')
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
  finished: Tue Oct 06 2015 16:27:50 GMT+0200 (Mitteleuropäische Sommerzeit),
  inProgress: true,
  winner: null }
###
class GameStub extends Game
  _createNewGame: () ->