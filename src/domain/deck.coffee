Card = require('../../src/domain/card')
module.exports = class Deck
  constructor: () ->
    @suits = ['Heart', 'Spades', 'Clubs', 'Diamonds'];
    @cards = []
    @_createCards()

  _createCards: () ->
    for suit in @suits
      for i in [6..14]
        name = i;
        if i == 11
          name = 'B'
        if i == 12
          name = 'D'
        if i == 13
          name = 'K'
        if i == 14
          name = 'A'

        @cards.push(new Card(name, suit))
