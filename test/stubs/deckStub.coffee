Deck = require('../../src/domain/deck')
Card = require('../../src/domain/card')

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